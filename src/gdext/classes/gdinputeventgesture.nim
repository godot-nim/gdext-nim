{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers
export InputEventGesture

proc setPosition*(self: InputEventGesture; position: Vector2): void =
  expandMethodBind(className InputEventGesture, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getPosition*(self: InputEventGesture): Vector2 =
  expandMethodBind(className InputEventGesture, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template position*(self: InputEventGesture): untyped = self.getPosition()
template `position=`*(self: InputEventGesture; value) = self.setPosition(value)
