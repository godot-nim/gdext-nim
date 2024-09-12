import std/sets

import gdext/utils/staticevents

type Contract = object
  typ*: string
  virtual*: Event
  procedure*: Event
  property*: Event
  signal*: Event

var invoked* {.compileTime.} : HashSet[string]

template contract*(T: typedesc): static Contract =
  const obj = Contract(
    typ: $T,
    virtual: event($T & "::contract::virtual"),
    procedure: event($T & "::contract::procedure"),
    property: event($T & "::contract::property"),
    signal: event($T & "::contract::signal"),
  )
  obj


template invoke*(contract: static Contract) =
  proc register_virtual {.expandEvent: contract.virtual.}
  proc register_procedure {.expandEvent: contract.procedure.}
  proc register_property {.expandEvent: contract.property.}
  proc register_signal {.expandEvent: contract.signal.}
  register_virtual()
  register_procedure()
  register_property()
  register_signal()

  static: invoked.incl contract.typ