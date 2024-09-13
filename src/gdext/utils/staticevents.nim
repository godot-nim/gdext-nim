import std/[macros, tables, sets, hashes, sequtils]
import gdext/buildconf

type Event* = distinct string
proc event*(name: string): Event = Event name
proc hash*(event: Event): Hash {.borrow.}
proc `==`*(a, b: Event): bool {.borrow.}
proc `$`*(event: Event): string = string event

type Action = NimNode
var eventtable {.compileTime.} : Table[Event, seq[Action]]
var alreadyExpanded {.compileTime.} : HashSet[Event]

macro expandEvent*(event: static Event; def: untyped): untyped =
  if event in alreadyExpanded:
    error "failed to expand; " & $event & " is already expanded.", def
  alreadyExpanded.incl event

  result = copy def
  result.body = newStmtList eventtable.mgetOrPut(event, @[]).mapIt(newCall it)


when Dev.debugEvents:
  from strutils import join

  proc decho(args: varargs[string, `$`]) =
    stderr.writeLine args.join("")

proc processName(node: NimNode): string =
  case node.kind
  of nnkPostfix:
    if node[0].eqIdent "*":
      processName node[1]
    else:
      repr node
  of nnkAccQuoted:
    var res: string
    for sub in node:
      res.add processName sub
    res
  of nnkStrLit:
    $node
  else:
    repr node

macro execon*(event: static Event; def): untyped =
  let name = gensym(nskProc)
  when Dev.debugEvents:
    let processname = def[0].processName
    let eventstr = $event & "::process >> " & processname
    def.body.insert(0, quote do: decho `eventstr`)
  def.name = name

  if event in alreadyExpanded:
    error "the event " & event.string & " is already consumed", def
  eventtable.mgetOrPut(event, @[]).add name
  def

const init_engine* = (
    on_load_builtinclassConstructor: event("load_builtinclassConstructor"),
    on_load_builtinclassOperator: event("load_builtinclassOperator"),
    on_load_builtinclassMethod: event("load_builtinclassMethod"),
)