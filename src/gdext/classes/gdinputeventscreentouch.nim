{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

expandOnClassImported(InputEventScreenTouch, InputEventFromWindow)

proc setIndex*(self: InputEventScreenTouch; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "set_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getIndex*(self: InputEventScreenTouch): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "get_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPosition*(self: InputEventScreenTouch; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: InputEventScreenTouch): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setPressed*(self: InputEventScreenTouch; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc setCanceled*(self: InputEventScreenTouch; canceled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "set_canceled", 2586408642)
  methodbind.ptrcall(self, [getPtr canceled], void)

proc setDoubleTap*(self: InputEventScreenTouch; doubleTap: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "set_double_tap", 2586408642)
  methodbind.ptrcall(self, [getPtr doubleTap], void)

proc isDoubleTap*(self: InputEventScreenTouch): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenTouch, "is_double_tap", 36873697)
  methodbind.ptrcall(self, [], bool)

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
