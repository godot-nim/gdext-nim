{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

proc setIndex*(self: InputEventScreenTouch; index: int32): void =
  expandMethodBind(className InputEventScreenTouch, "set_index", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIndex*(self: InputEventScreenTouch): int32 =
  expandMethodBind(className InputEventScreenTouch, "get_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPosition*(self: InputEventScreenTouch; position: Vector2): void =
  expandMethodBind(className InputEventScreenTouch, "set_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: InputEventScreenTouch): Vector2 =
  expandMethodBind(className InputEventScreenTouch, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setPressed*(self: InputEventScreenTouch; pressed: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_pressed", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCanceled*(self: InputEventScreenTouch; canceled: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_canceled", 2586408642)
  var `?param` = [getPtr canceled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDoubleTap*(self: InputEventScreenTouch; doubleTap: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_double_tap", 2586408642)
  var `?param` = [getPtr doubleTap]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDoubleTap*(self: InputEventScreenTouch): bool =
  expandMethodBind(className InputEventScreenTouch, "is_double_tap", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template index*(self: InputEventScreenTouch): untyped = self.getIndex()
template `index=`*(self: InputEventScreenTouch; value) = self.setIndex(value)

template position*(self: InputEventScreenTouch): untyped = self.getPosition()
template `position=`*(self: InputEventScreenTouch; value) = self.setPosition(value)

template canceled*(self: InputEventScreenTouch): untyped = self.isCanceled()
template `canceled=`*(self: InputEventScreenTouch; value) = self.setCanceled(value)

template pressed*(self: InputEventScreenTouch): untyped = self.isPressed()
template `pressed=`*(self: InputEventScreenTouch; value) = self.setPressed(value)

template doubleTap*(self: InputEventScreenTouch): untyped = self.isDoubleTap()
template `doubleTap=`*(self: InputEventScreenTouch; value) = self.setDoubleTap(value)

const InputEventScreenTouch_vmap =
  InputEventFromWindow.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventScreenTouch]): Table[string, string] = InputEventScreenTouch_vmap