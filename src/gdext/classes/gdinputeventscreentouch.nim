{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

proc setIndex*(self: InputEventScreenTouch; index: int32): void =
  expandMethodBind(className InputEventScreenTouch, "set_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc getIndex*(self: InputEventScreenTouch): int32 =
  expandMethodBind(className InputEventScreenTouch, "get_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPosition*(self: InputEventScreenTouch; position: Vector2): void =
  expandMethodBind(className InputEventScreenTouch, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getPosition*(self: InputEventScreenTouch): Vector2 =
  expandMethodBind(className InputEventScreenTouch, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setPressed*(self: InputEventScreenTouch; pressed: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc setCanceled*(self: InputEventScreenTouch; canceled: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_canceled", 2586408642)
  methodbind.ptrcall(self, [getPtr canceled])

proc setDoubleTap*(self: InputEventScreenTouch; doubleTap: bool): void =
  expandMethodBind(className InputEventScreenTouch, "set_double_tap", 2586408642)
  methodbind.ptrcall(self, [getPtr doubleTap])

proc isDoubleTap*(self: InputEventScreenTouch): bool =
  expandMethodBind(className InputEventScreenTouch, "is_double_tap", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
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