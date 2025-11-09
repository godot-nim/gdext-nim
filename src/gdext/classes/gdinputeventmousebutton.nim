{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventmouse; export gdinputeventmouse

expandOnClassImported(InputEventMouseButton, InputEventMouse)

proc setFactor*(self: InputEventMouseButton; factor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "set_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor], void)

proc getFactor*(self: InputEventMouseButton): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "get_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setButtonIndex*(self: InputEventMouseButton; buttonIndex: MouseButton): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "set_button_index", 3624991109)
  methodbind.ptrcall(self, [getPtr buttonIndex], void)

proc getButtonIndex*(self: InputEventMouseButton): MouseButton =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "get_button_index", 1132662608)
  methodbind.ptrcall(self, [], MouseButton)

proc setPressed*(self: InputEventMouseButton; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc setCanceled*(self: InputEventMouseButton; canceled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "set_canceled", 2586408642)
  methodbind.ptrcall(self, [getPtr canceled], void)

proc setDoubleClick*(self: InputEventMouseButton; doubleClick: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "set_double_click", 2586408642)
  methodbind.ptrcall(self, [getPtr doubleClick], void)

proc isDoubleClick*(self: InputEventMouseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseButton, "is_double_click", 36873697)
  methodbind.ptrcall(self, [], bool)

template factor*(self: InputEventMouseButton): untyped = self.getFactor()
template `factor=`*(self: InputEventMouseButton; value) = self.setFactor(value)

template buttonIndex*(self: InputEventMouseButton): untyped = self.getButtonIndex()
template `buttonIndex=`*(self: InputEventMouseButton; value) = self.setButtonIndex(value)

template canceled*(self: InputEventMouseButton): untyped = self.isCanceled()
template `canceled=`*(self: InputEventMouseButton; value) = self.setCanceled(value)

template pressed*(self: InputEventMouseButton): untyped = self.isPressed()
template `pressed=`*(self: InputEventMouseButton; value) = self.setPressed(value)

template doubleClick*(self: InputEventMouseButton): untyped = self.isDoubleClick()
template `doubleClick=`*(self: InputEventMouseButton; value) = self.setDoubleClick(value)
