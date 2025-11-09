{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputevent; export gdinputevent

expandOnClassImported(InputEventJoypadButton, InputEvent)

proc setButtonIndex*(self: InputEventJoypadButton; buttonIndex: JoyButton): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadButton, "set_button_index", 1466368136)
  methodbind.ptrcall(self, [getPtr buttonIndex], void)

proc getButtonIndex*(self: InputEventJoypadButton): JoyButton =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadButton, "get_button_index", 595588182)
  methodbind.ptrcall(self, [], JoyButton)

proc setPressure*(self: InputEventJoypadButton; pressure: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadButton, "set_pressure", 373806689)
  methodbind.ptrcall(self, [getPtr pressure], void)

proc getPressure*(self: InputEventJoypadButton): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadButton, "get_pressure", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPressed*(self: InputEventJoypadButton; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventJoypadButton, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

template buttonIndex*(self: InputEventJoypadButton): untyped = self.getButtonIndex()
template `buttonIndex=`*(self: InputEventJoypadButton; value) = self.setButtonIndex(value)

template pressure*(self: InputEventJoypadButton): untyped = self.getPressure()
template `pressure=`*(self: InputEventJoypadButton; value) = self.setPressure(value)

template pressed*(self: InputEventJoypadButton): untyped = self.isPressed()
template `pressed=`*(self: InputEventJoypadButton; value) = self.setPressed(value)
