import std/macros
import std/tables
import std/hashes

const EnableDebugEvent {.booldefine: "debug.event".} = false

type Event* = distinct string
proc event*(name: string): Event = Event name
proc hash*(event: Event): Hash {.borrow.}
proc `==`*(a, b: Event): bool {.borrow.}
proc `$`*(event: Event): string = string event

type ProcessBody = NimNode
var eventtable {.compileTime.} : Table[Event, tuple[consumed: bool, list: seq[ProcessBody]]]

macro invoke*(event: static Event): untyped =
  if eventtable.hasKey(event):
    eventtable[event].consumed = true
  else:
    eventtable[event] = (true, @[])
    return

  let eventhandler = ident (string event) & "_handle"

  let eventproc = newProc(name = eventhandler,  body = newStmtList())

  for process in eventtable[event].list:
    case process.kind
    of nnkStmtList:
      eventproc.body.add newCall(process)
    else:
      eventproc.body.add newCall(process)

  result = quote do:
    `eventproc`
    `eventhandler`()

when EnableDebugEvent:
  from strutils import join

  proc decho(args: varargs[string, `$`]) =
    stderr.writeLine args.join("")

  var processCounter {.compileTime.} : int

macro process*(event: static Event; body) =
  let name = gensym(nskProc)
  when EnableDebugEvent:
    result = newProc(name, body= newStmtList(quote do: decho `event`, "::process >> #", `processCounter`).add body[0..^1])
    inc processCounter
  else:
    result = newProc(name, body= body)

  if eventtable.hasKey(event):
    if eventtable[event].consumed:
      error "the event " & event.string & " is already consumed", body
    eventtable[event].list.add name
  else:
    eventtable[event] = (false, @[name])

macro process*(event: static Event; processname: string; body) =
  let name = gensym(nskProc)
  result = newProc(name, body= body)
  when EnableDebugEvent:
    result = newProc(name, body= newStmtList(quote do: decho `event`, "::process >> ", `processname`).add body[0..^1])
  else:
    result = newProc(name, body= body)

  if eventtable.hasKey(event):
    if eventtable[event].consumed:
      error "the event " & event.string & " is already consumed", body
    eventtable[event].list.add name
  else:
    eventtable[event] = (false, @[name])

const init_engine* = (
    on_load_builtinclassConstructor: event("load_builtinclassConstructor"),
    on_load_builtinclassOperator: event("load_builtinclassOperator"),
    on_load_builtinclassMethod: event("load_builtinclassMethod"),
)