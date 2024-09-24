import std/sets

import gdext/utils/staticevents

type Contract*[T] = object

var invoked* {.compileTime.} : HashSet[string]

template enums*(c: typedesc[Contract]): static Event = event $c.T & "::contract::enums"
template virtual*(c: typedesc[Contract]): static Event = event $c.T & "::contract::virtual"
template procedure*(c: typedesc[Contract]): static Event = event $c.T & "::contract::procedure"
template pre_property*(c: typedesc[Contract]): static Event = event $c.T & "::contract::pre-property"
template property*(c: typedesc[Contract]): static Event = event $c.T & "::contract::property"
template signal*(c: typedesc[Contract]): static Event = event $c.T & "::contract::signal"


template invoke*(contract: typedesc[Contract]) =
  proc register_enums {.expandEvent: contract.enums.}
  proc register_virtual {.expandEvent: contract.virtual.}
  proc register_procedure {.expandEvent: contract.procedure.}
  proc register_pre_property {.expandEvent: contract.pre_property.}
  proc register_property {.expandEvent: contract.property.}
  proc register_signal {.expandEvent: contract.signal.}
  register_enums()
  register_virtual()
  register_procedure()
  register_pre_property()
  register_property()
  register_signal()

  static: invoked.incl $contract.T