import std/[tables, macros, streams, strutils]
import std/parsecfg {.all.} except writeConfig, `$`

when not defined(fileExists):
  import std/os

type
  Section* = OrderedTableRef[string, string]
#   Config* = OrderedTableRef[string, Section]
# proc newConfig*(): Config = newOrderedTable[string, Section]()

proc addNonNil(x, y: NimNode) =
  if y != nil:
    x.add y

proc flatAdd(x, y: NimNode) =
  x.expectKind nnkStmtList
  case y.kind
  of nnkStmtList:
    x.add y[0..^1]
  else:
    x.add y

proc newSection*(): Section = newOrderedTable[string, string]()

# proc `[]=`*(cfg: var Config; section, key: string; value: string) =
#   cfg.setSectionKey(section, key, value)

# proc `[]=`*[T](cfg: var Config; section, key: string; value: T) =
#   cfg[section, key] = $value

proc `[]=`*(sec: Section; key: string; value: string) =
  tables.`[]=`(sec, key, value)
proc `[]=`*[T](sec: Section; key: string; value: T) =
  tables.`[]=`(sec, key, $value)
macro `[]=`*(sec: Section; key: string; value: untyped) =
  quote("@") do:
    tables.`[]=`(@sec, @key, @(repr value))

proc loadConfig*(filename: string): Config =
  ## Loads the specified configuration file into a new Config instance.
  if fileExists(filename):
    let stringStream = newStringStream(readFile(filename))
    defer: stringStream.close
    loadConfig(stringStream)
  else:
    newConfig()

proc evalSection*(section, body: NimNode): NimNode =
  case body.kind
  of nnkAsgn:
    var key = body[0].toStrLit
    var value = body[1]
    result = quote do:
      `section`[`key`] = `value`
  of nnkStmtList:
    result = newStmtList()
    for stmt in body:
      result.addNonNil section.evalSection(stmt)
  of nnkIfStmt, nnkWhenStmt:
    result = newNimNode body.kind
    for clause in body:
      clause[^1] = evalSection(section, clause[^1])
      result.add clause
  of nnkCaseStmt:
    result = newNimNode body.kind
    for i, clause in body:
      if i != 0:
        clause[^1] = evalSection(section, clause[^1])
      result.add clause
  else:
    discard

macro eval*(section: Section; body): untyped =
  evalSection(section, body)

macro eval*(cfg: Config; body): untyped =
  body.expectKind nnkStmtList
  result = newStmtList()
  var currentSection: NimNode
  for stmt in body:
    case stmt.kind
    of nnkBracket: # section
      let sectionName = stmt[0].toStrLit
      currentSection = genSym(nskLet)
      result.flatAdd quote do:
        let `currentSection` = `cfg`.mGetOrPut(`sectionName`, newSection())
    else:
      if currentSection != nil:
        result.flatAdd currentSection.evalSection(stmt)

proc `$`*(cfg: Config): string =
  const segmentChar = " = "
  ## Writes the contents of the table to the specified stream.
  ##
  ## .. note:: Comment statement will be ignored.
  for section, sectionData in cfg.pairs():
    if section != "": ## Not general section
      result.add("[")
      result.add(section)
      result.add("]\n\n")
    for key, value in sectionData.pairs():
      var kv: string = ""
      kv = key
      kv.add(segmentChar)
      if value != "": ## If the key is not empty
        case value
        of "true", "false":
          kv.add value
        elif allCharsInSet(value, {'0'..'9', '.'}):
          kv.add value
        else:
          kv.add("\"")
          kv.add(replace(value))
          kv.add("\"")
      result.add(kv)
      result.add("\n")
    result.add("\n")
  result.setLen(result.high)

proc writeConfig*(cfg: Config, filename: string) =
  writeFile(filename, $cfg)

when isMainModule:
  import std/strformat
  var config = newConfig()

  const bin = "bootstrap"

  config.eval:
    # ignore those!
    entry_symbol = "init_library"
    compatibility_minimum = 4.4
    reloadable = true
    linux.debug = &"res://nim/lib/linux/debug/lib{bin}.so"
    # comment
    ## comment
    [configuration]

    entry_symbol = "init_library"
    compatibility_minimum = 4.4
    reloadable = true

    [libraries]

    linux.debug = &"res://nim/lib/linux/debug/lib{bin}.so"
    windows.debug = &"res://nim/lib/windows/debug/{bin}.dll"
    macos.debug = &"res://./nim/lib/macos/debug/lib{bin}.dylib"

    linux.release = &"res://nim/lib/linux/release/lib{bin}.so"
    windows.release = &"res://nim/lib/windows/release/{bin}.dll"
    macos.release = &"res://./nim/lib/macos/release/lib{bin}.dylib"

  assert $config == """
[configuration]

entry_symbol = "init_library"
compatibility_minimum = 4.4
reloadable = true

[libraries]

linux.debug = "res://nim/lib/linux/debug/libbootstrap.so"
windows.debug = "res://nim/lib/windows/debug/bootstrap.dll"
macos.debug = "res://./nim/lib/macos/debug/libbootstrap.dylib"
linux.release = "res://nim/lib/linux/release/libbootstrap.so"
windows.release = "res://nim/lib/windows/release/bootstrap.dll"
macos.release = "res://./nim/lib/macos/release/libbootstrap.dylib"
"""