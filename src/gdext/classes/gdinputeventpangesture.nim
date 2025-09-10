{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventgesture; export gdinputeventgesture
export InputEventPanGesture

proc setDelta*(self: InputEventPanGesture; delta: Vector2): void =
  expandMethodBind(className InputEventPanGesture, "set_delta", 743155724)
  methodbind.ptrcall(self, [getPtr delta])

proc getDelta*(self: InputEventPanGesture): Vector2 =
  expandMethodBind(className InputEventPanGesture, "get_delta", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template delta*(self: InputEventPanGesture): untyped = self.getDelta()
template `delta=`*(self: InputEventPanGesture; value) = self.setDelta(value)
