{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventmouse; export gdinputeventmouse

proc setFactor*(self: InputEventMouseButton; factor: Float): void =
  expandMethodBind(className InputEventMouseButton, "set_factor", 373806689)
  var `?param` = [getPtr factor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFactor*(self: InputEventMouseButton): Float =
  expandMethodBind(className InputEventMouseButton, "get_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setButtonIndex*(self: InputEventMouseButton; buttonIndex: MouseButton): void =
  expandMethodBind(className InputEventMouseButton, "set_button_index", 3624991109)
  var `?param` = [getPtr buttonIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getButtonIndex*(self: InputEventMouseButton): MouseButton =
  expandMethodBind(className InputEventMouseButton, "get_button_index", 1132662608)
  var ret: encoded MouseButton
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MouseButton)

proc setPressed*(self: InputEventMouseButton; pressed: bool): void =
  expandMethodBind(className InputEventMouseButton, "set_pressed", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCanceled*(self: InputEventMouseButton; canceled: bool): void =
  expandMethodBind(className InputEventMouseButton, "set_canceled", 2586408642)
  var `?param` = [getPtr canceled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDoubleClick*(self: InputEventMouseButton; doubleClick: bool): void =
  expandMethodBind(className InputEventMouseButton, "set_double_click", 2586408642)
  var `?param` = [getPtr doubleClick]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDoubleClick*(self: InputEventMouseButton): bool =
  expandMethodBind(className InputEventMouseButton, "is_double_click", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const InputEventMouseButton_vmap =
  InputEventMouse.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventMouseButton]): Table[string, string] = InputEventMouseButton_vmap