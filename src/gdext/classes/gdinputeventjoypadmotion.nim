{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventJoypadMotion, InputEvent)

proc setAxis*(self: InputEventJoypadMotion; axis: JoyAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadMotion, "set_axis", 1332685170)
  methodbind.ptrcall(self, [getPtr axis], void)

proc getAxis*(self: InputEventJoypadMotion): JoyAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadMotion, "get_axis", 4019121683)
  methodbind.ptrcall(self, [], JoyAxis)

proc setAxisValue*(self: InputEventJoypadMotion; axisValue: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadMotion, "set_axis_value", 373806689)
  methodbind.ptrcall(self, [getPtr axisValue], void)

proc getAxisValue*(self: InputEventJoypadMotion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadMotion, "get_axis_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

template axis*(self: InputEventJoypadMotion): untyped = self.getAxis()
template `axis=`*(self: InputEventJoypadMotion; value) = self.setAxis(value)

template axisValue*(self: InputEventJoypadMotion): untyped = self.getAxisValue()
template `axisValue=`*(self: InputEventJoypadMotion; value) = self.setAxisValue(value)
