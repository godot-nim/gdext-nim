import std/[macros, tables, sets, hashes, sequtils]
import gdext/buildconf

type Event* = distinct string
proc event*(name: string): Event = Event name
proc hash*(event: Event): Hash {.borrow.}
proc `==`*(a, b: Event): bool {.borrow.}
proc `$`*(event: Event): string = string event

type ProcessBody = NimNode
var eventtable {.compileTime.} : Table[Event, seq[ProcessBody]]
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

  var processCounter {.compileTime.} : int

macro process*(event: static Event; body) =
  let name = gensym(nskProc)
  when Dev.debugEvents:
    result = newProc(name, body= newStmtList(quote do: decho `event`, "::process >> #", `processCounter`).add body[0..^1])
    inc processCounter
  else:
    result = newProc(name, body= body)

  if event in alreadyExpanded:
    error "the event " & event.string & " is already consumed", body
  eventtable.mgetOrPut(event, @[]).add name

macro process*(event: static Event; processname: string; body) =
  let name = gensym(nskProc)
  result = newProc(name, body= body)
  when Dev.debugEvents:
    result = newProc(name, body= newStmtList(quote do: decho `event`, "::process >> ", `processname`).add body[0..^1])
  else:
    result = newProc(name, body= body)

  if event in alreadyExpanded:
    error "the event " & event.string & " is already consumed", body
  eventtable.mgetOrPut(event, @[]).add name

const init_engine* = (
    on_load_builtinclassConstructor: event("load_builtinclassConstructor"),
    on_load_builtinclassOperator: event("load_builtinclassOperator"),
    on_load_builtinclassMethod: event("load_builtinclassMethod"),
)