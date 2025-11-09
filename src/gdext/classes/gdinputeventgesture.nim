{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

expandOnClassImported(InputEventGesture, InputEventWithModifiers)

proc setPosition*(self: InputEventGesture; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventGesture, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: InputEventGesture): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventGesture, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template position*(self: InputEventGesture): untyped = self.getPosition()
template `position=`*(self: InputEventGesture; value) = self.setPosition(value)
