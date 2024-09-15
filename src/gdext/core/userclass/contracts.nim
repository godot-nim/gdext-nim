import std/sets

import gdext/utils/staticevents

var invoked* {.compileTime.} : HashSet[string]
template contract*(T: typedesc): static Event = event $T & "::contract"

template invokeContract*(class: typedesc) =
  proc `class .contract` {.expandEvent: class.contract.}
  `class .contract`()
  static: invoked.incl $T