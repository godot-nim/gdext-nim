{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

proc setPosition*(self: InputEventGesture; position: Vector2): void =
  expandMethodBind(className InputEventGesture, "set_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: InputEventGesture): Vector2 =
  expandMethodBind(className InputEventGesture, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template position*(self: InputEventGesture): untyped = self.getPosition()
template `position=`*(self: InputEventGesture; value) = self.setPosition(value)

const InputEventGesture_vmap =
  InputEventWithModifiers.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventGesture]): Table[string, string] = InputEventGesture_vmap