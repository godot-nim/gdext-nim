import std/[macros, macrocache, sets, hashes]
import gdext/buildconf

type Event* = CacheSeq
proc event*(name: string): Event = Event name
proc hash*(event: Event): Hash {.borrow.}
proc `==`*(a, b: Event): bool {.borrow.}

var alreadyExpanded {.compileTime.} : HashSet[Event]

macro expandEvent*(event: static Event; def: untyped): untyped =
  if event in alreadyExpanded:
    error "failed to expand; " & event.string & " is already expanded.", def
  alreadyExpanded.incl event

  result = copy def
  result.body = newStmtList()
  for action in event:
    result.body.add newCall action

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
    let eventstr = event.string & "::process >> " & processname
    def.body.insert(0, quote do: echo `eventstr`)
  def.name = name

  if event in alreadyExpanded:
    error "the event " & event.string & " is already consumed", def
  event.add name
  def

const init_engine* = (
    on_load_builtinclassConstructor: event("load_builtinclassConstructor"),
    on_load_builtinclassOperator: event("load_builtinclassOperator"),
    on_load_builtinclassMethod: event("load_builtinclassMethod"),
)