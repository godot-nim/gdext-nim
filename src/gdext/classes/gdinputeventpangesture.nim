{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventgesture; export gdinputeventgesture

expandOnClassImported(InputEventPanGesture, InputEventGesture)

proc setDelta*(self: InputEventPanGesture; delta: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventPanGesture, "set_delta", 743155724)
  methodbind.ptrcall(self, [getPtr delta], void)

proc getDelta*(self: InputEventPanGesture): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventPanGesture, "get_delta", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template delta*(self: InputEventPanGesture): untyped = self.getDelta()
template `delta=`*(self: InputEventPanGesture; value) = self.setDelta(value)
