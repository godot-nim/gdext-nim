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
  invoke contract.virtual
  invoke contract.procedure
  invoke contract.property
  invoke contract.signal
  static: invoked.incl contract.typ