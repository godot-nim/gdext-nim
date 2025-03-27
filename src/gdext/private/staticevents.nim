import std/[macros, macrocache, sets, hashes]
import gdext/private/buildsettings

type
  Event* = CacheSeq
  Contract*[T] = object
proc event*(name: string): Event = Event name
proc hash*(event: Event): Hash {.borrow.}
proc `==`*(a, b: Event): bool {.borrow.}

var alreadyExpanded {.compileTime.} : HashSet[Event]
var invoked* {.compileTime.} : HashSet[string]

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

template enums*(c: typedesc[Contract]): static Event = event $c.T & "::contract::enums"
template virtual_base*(c: typedesc[Contract]): static Event = event $c.T & "::contract::virtual-base"
template virtual*(c: typedesc[Contract]): static Event = event $c.T & "::contract::virtual"
template procedure*(c: typedesc[Contract]): static Event = event $c.T & "::contract::procedure"
template pre_property*(c: typedesc[Contract]): static Event = event $c.T & "::contract::pre-property"
template property*(c: typedesc[Contract]): static Event = event $c.T & "::contract::property"
template signal*(c: typedesc[Contract]): static Event = event $c.T & "::contract::signal"

template invoke*(contract: typedesc[Contract]) =
  proc register_enums {.expandEvent: contract.enums.}
  proc register_virtual_base {.expandEvent: contract.virtual_base.}
  proc register_virtual {.expandEvent: contract.virtual.}
  proc register_procedure {.expandEvent: contract.procedure.}
  proc register_pre_property {.expandEvent: contract.pre_property.}
  proc register_property {.expandEvent: contract.property.}
  proc register_signal {.expandEvent: contract.signal.}
  register_enums()
  register_virtual_base()
  register_virtual()
  register_procedure()
  register_pre_property()
  register_property()
  register_signal()

  static: invoked.incl $contract.T

const init_engine* = (
    on_load_builtinclassConstructor: event("load_builtinclassConstructor"),
    on_load_builtinclassOperator: event("load_builtinclassOperator"),
    on_load_builtinclassMethod: event("load_builtinclassMethod"),
)

const initialize_core* = event("initialize_core")
const initialize_servers* = event("initialize_servers")
const initialize_scene* = event("initialize_scene")
const initialize_editor* = event("initialize_editor")
const eliminate_core* = event("eliminate_core")
const eliminate_servers* = event("eliminate_servers")
const eliminate_scene* = event("eliminate_scene")
const eliminate_editor* = event("eliminate_editor")
