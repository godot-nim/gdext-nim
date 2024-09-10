import std/sequtils
import std/strutils
import std/strformat
import std/terminal
import std/options
export option, some, none

type
  Notifier = enum
    Info     = "    Info: "
    Notice   = "  Notice: "
    Warning  = " Warning: "
    Failure  = " Failure: "
    Hint     = "    Hint: "
    Success  = " Success: "
    Autofill = "Autofill: "
    Prompt   = "  Prompt: "
  PromptMode* = enum
    Select
    UseRepresentative
    Silent

  CliContext* = object
    wizard*: string
    mode*: PromptMode

const
  YesOrNo* = @["yes", "no"]
  NoOrYes* = @["no", "yes"]

  normal: set[Style] = {}
  bright = {styleBright}

  notifyColor: array[Notifier, ForegroundColor] =
  #  Info     Notice   Warning   Failure Hint     Success  Autofill Prompt
    [fgWhite, fgWhite, fgYellow, fgRed,  fgGreen, fgGreen, fgCyan,  fgCyan]
  notifyStyle: array[Notifier, set[Style]] =
  #  Info    Notice  Warning Failure Hint    Success Autofill Prompt
    [normal, bright, bright, bright, normal, bright, normal,  bright]

var
  globalCLI* = CliContext(
    wizard: "wizard*"
  )

proc statusWidth(context: var CliContext): int = context.wizard.len + ($Info).len + 1

proc wardwrap(context: var CliContext; msg: string): seq[string] =
  let width = terminalwidth() - context.statusWidth
  template CRLF =
    result.add newline
    newline = newStringOfCap(width)
  var newline = newStringOfCap(width)

  for line in msg.splitLines:
    let words = line.split(' ')
    for i, word in words:
      if newline.len + word.len > width and newline.len != 0:
        CRLF
      newline.add word
      newline.add " "
    CRLF
  if newline.len != 0:
    result.add newline


proc display*(context: var CliContext; notifier: Notifier; msg: string) =
  if context.mode == Silent: return

  let padding = "... ".align(context.statuswidth)

  for i, line in context.wardwrap(msg):
    if i == 0:
      writeStyled &"{context.wizard} ", bright
      setForegroundColor notifyColor[notifier]
      writeStyled $notifier, notifyStyle[notifier]
    else:
      setForegroundColor notifyColor[notifier]
      writeStyled padding, notifyStyle[notifier]

    setForegroundColor fgDefault
    echo line


proc info*(context: var CliContext; msg: string) = context.display(Info, msg)
proc notice*(context: var CliContext; msg: string) = context.display(Notice, msg)
proc warning*(context: var CliContext; msg: string) = context.display(Warning, msg)
proc failure*(context: var CliContext; msg: string) = context.display(Failure, msg)
proc hint*(context: var CliContext; msg: string) = context.display(Hint, msg)
proc success*(context: var CliContext; msg: string) = context.display(Success, msg)
proc autofill*(context: var CliContext; msg: string) = context.display(Autofill, msg)

proc prompt*(context: var CliContext; msg: string; option: Option[string]): string =
  let optiondisplay = if option.isNone: ""
    else: " [" & get(option) & "]"
  context.display(Prompt, msg & optiondisplay)

  if context.mode == Select:
    let prompt = ("enter text ➤").align(context.statusWidth) & "  "

    setForegroundColor fgMagenta
    writeStyled prompt, {}
    setForegroundColor fgDefault

    let res = stdin.readLine
    if res.isEmptyOrWhitespace:
      option.get("")
    else:
      res
  else:
    context.autofill(option.get("[EMPTY]"))
    option.get("")


proc promptSelect(context: var CliContext; msg: string; options: openArray[string]): int =
  let select  = "select <enter> ➤".align(context.statusWidth) & "  "
  let padding = "".align max(context.statuswidth, select.len.pred(2))
  let above   = "<up>   <S-tab>    ".align max(context.statusWidth, select.len.pred(2))
  let below   = "<down>   <tab>    ".align max(context.statusWidth, select.len.pred(2))
  const esc = '\27'
  const stab = 'Z'
  const up = '\65'
  const down = '\66'
  var selecting = 0

  template upper(selecting: int, range: int): int = (selecting.pred + range) mod range
  template lower(selecting: int, range: int): int = (selecting.succ) mod range

  template cycleup = selecting = upper(selecting, options.len)
  template cycledown = selecting = lower(selecting, options.len)

  template writeOptions =
    for i, option in options:
      if i == selecting:
        setForegroundColor fgMagenta
        stdout.write select
        setForegroundColor fgDefault
        stdout.writeLine option
      elif i == lower(selecting, options.len):
        setForegroundColor fgMagenta
        writeStyled below, {styleDim}
        setForegroundColor fgDefault
        writeStyled option & '\n', {styleDim}
      elif i == upper(selecting, options.len):
        setForegroundColor fgMagenta
        writeStyled above, {styleDim}
        setForegroundColor fgDefault
        writeStyled option & '\n', {styleDim}
      else:
        stdout.write padding
        writeStyled option & '\n', {styleDim}

  template cancel =
    writeOptions
    showCursor()
    context.failure "Keyboard interrupt"
    quit 1

  template fix =
    showCursor()
    return selecting

  hideCursor()


  context.display(Prompt, msg)

  while true:
    writeOptions

    while true:
      case getch()
      of '\r':
        fix
      of '\3':
        cancel
      of '\t':
        cycledown
        break
      of esc:
        case getch()
        of '[':
          case getch()
          of stab:
            cycleup
            break
          of up:
            cycleup
            break
          of down:
            cycledown
            break
          else: discard
        else: discard
      else: discard

    for i in 0..<options.len:
      eraseLine stdout
      cursorUp stdout

proc promptIndex*(context: var CliContext; msg: string; options: openArray[string]): int =
  case context.mode
  of Select:
    promptSelect(context, msg, options)
  else:
    context.display(Prompt, msg)
    context.autofill(options[0])
    0

proc prompt*(context: var CliContext; msg: string; options: openArray[string]): string =
  options[promptIndex(context, msg, options)]
proc prompt*(context: var CliContext; msg: string; options: openArray[(string, string)]): string =
  options[promptIndex(context, msg, options.mapIt(it[0] & " - " & it[1]))][0]

proc toggle[T](s: var set[T]; item: T) =
  if item in s: s.excl item
  else: s.incl item

proc promptMultiIndex*(context: var CliContext; msg: string; options: openArray[string]; default: seq[int] = @[]): seq[int] =
  let select  = "un/mark <space> ".align(context.statusWidth)
  let padding = "".align max(context.statuswidth, select.len)
  let above   = "<up>   <S-tab> ".align max(context.statusWidth, select.len)
  let below   = "<down>   <tab> ".align max(context.statusWidth, select.len)
  const check: array[bool, string] = ["   ", "➤  "]
  const space = '\32'
  const esc = '\27'
  const stab = 'Z'
  const up = '\65'
  const down = '\66'
  var selecting = 0
  var sets: set[int8]
  for def in default: sets.incl int8 def

  template upper(selecting: int, range: int): int = (selecting.pred + range) mod range
  template lower(selecting: int, range: int): int = (selecting.succ) mod range

  template cycleup = selecting = upper(selecting, options.len)
  template cycledown = selecting = lower(selecting, options.len)

  template writeOptions =
    for i, option in options:
      let i = int8 i
      if i == selecting:
        setForegroundColor fgMagenta
        stdout.write select & check[i in sets]
        setForegroundColor fgDefault
        stdout.writeLine option
      elif i == lower(selecting, options.len):
        setForegroundColor fgMagenta
        writeStyled below & check[i in sets], {styleDim}
        setForegroundColor fgDefault

        writeStyled option & '\n', {styleDim}
      elif i == upper(selecting, options.len):
        setForegroundColor fgMagenta
        writeStyled above & check[i in sets], {styleDim}
        setForegroundColor fgDefault

        writeStyled option & '\n', {styleDim}
      else:
        setForegroundColor fgMagenta
        writeStyled padding & check[i in sets], {styleDim}
        setForegroundColor fgDefault

        writeStyled option & '\n', {styleDim}

  template cancel =
    writeOptions
    showCursor()
    context.failure "Keyboard interrupt"
    quit 1

  template mark =
    sets.toggle int8 selecting
    break
  template fix =
    showCursor()
    for index in sets: result.add index
    return

  context.display(Prompt, msg)
  context.hint "press <enter> to fix"

  case context.mode
  of Select: discard
  else:
    context.autofill default.mapIt(options[it]).join(" ")
    return default

  hideCursor()
  while true:
    writeOptions

    while true:
      case getch()
      of space:
        mark
      of '\r':
        fix
      of '\3':
        cancel
      of '\t':
        cycledown
        break
      of esc:
        case getch()
        of '[':
          case getch()
          of stab:
            cycleup
            break
          of up:
            cycleup
            break
          of down:
            cycledown
            break
          else: discard
        else: discard
      else: discard

    for i in 0..<options.len:
      eraseLine stdout
      cursorUp stdout

proc promptMulti*(context: var CliContext; msg: string; options: openArray[string]; default: seq[int] = @[]): seq[string] =
  context.promptMultiIndex(msg, options, default).mapIt options[it]

when isMainModule:
  var context = CliContext(wizard: "t*")


  for mode in PromptMode:
    context.mode = mode
    context.info "longlonglooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong term"
    context.info "test test test test test test test test test test test test test test test test test test test test"
    context.info """test test test
test test test test test test
test test test test test test test test test test test"""

    context.info "this is an info message"
    context.notice "this is an notice message"
    context.warning "this is an warning message"
    context.failure "this is an failure message"
    context.hint "this is an hint message"
    context.success "this is an success message"
    echo context.prompt("this is an yes/no prompt message", YesOrNo)
    echo context.prompt("this is an dictionary prompt message", {
      "aaaaa": "description about aaaaa",
      "bbbbb": "description about bbbbb",
      "ccccc": "description about ccccc",
      "ddddd": "description about ddddd",
      })
    echo context.prompt("this is an list prompt message",
      ["aaaaa", "bbbbb", "ccccc", "ddddd", ])
    echo context.promptMulti("multi select",
      ["aaaaa", "bbbbb", "ccccc", "ddddd"],
      @[1, 3])
    echo context.prompt("this is an optional prompt message", some "hello, world")