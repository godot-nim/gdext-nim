{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

expandOnClassImported(InputEventScreenDrag, InputEventFromWindow)

proc setIndex*(self: InputEventScreenDrag; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getIndex*(self: InputEventScreenDrag): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTilt*(self: InputEventScreenDrag; tilt: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_tilt", 743155724)
  methodbind.ptrcall(self, [getPtr tilt], void)

proc getTilt*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_tilt", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setPressure*(self: InputEventScreenDrag; pressure: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_pressure", 373806689)
  methodbind.ptrcall(self, [getPtr pressure], void)

proc getPressure*(self: InputEventScreenDrag): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_pressure", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPenInverted*(self: InputEventScreenDrag; penInverted: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_pen_inverted", 2586408642)
  methodbind.ptrcall(self, [getPtr penInverted], void)

proc getPenInverted*(self: InputEventScreenDrag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_pen_inverted", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPosition*(self: InputEventScreenDrag; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setRelative*(self: InputEventScreenDrag; relative: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative], void)

proc getRelative*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_relative", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScreenRelative*(self: InputEventScreenDrag; relative: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_screen_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative], void)

proc getScreenRelative*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_screen_relative", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setVelocity*(self: InputEventScreenDrag; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScreenVelocity*(self: InputEventScreenDrag; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "set_screen_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getScreenVelocity*(self: InputEventScreenDrag): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventScreenDrag, "get_screen_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template index*(self: InputEventScreenDrag): untyped = self.getIndex()
template `index=`*(self: InputEventScreenDrag; value) = self.setIndex(value)

template tilt*(self: InputEventScreenDrag): untyped = self.getTilt()
template `tilt=`*(self: InputEventScreenDrag; value) = self.setTilt(value)

template pressure*(self: InputEventScreenDrag): untyped = self.getPressure()
template `pressure=`*(self: InputEventScreenDrag; value) = self.setPressure(value)

template penInverted*(self: InputEventScreenDrag): untyped = self.getPenInverted()
template `penInverted=`*(self: InputEventScreenDrag; value) = self.setPenInverted(value)

template position*(self: InputEventScreenDrag): untyped = self.getPosition()
template `position=`*(self: InputEventScreenDrag; value) = self.setPosition(value)

template relative*(self: InputEventScreenDrag): untyped = self.getRelative()
template `relative=`*(self: InputEventScreenDrag; value) = self.setRelative(value)

template screenRelative*(self: InputEventScreenDrag): untyped = self.getScreenRelative()
template `screenRelative=`*(self: InputEventScreenDrag; value) = self.setScreenRelative(value)

template velocity*(self: InputEventScreenDrag): untyped = self.getVelocity()
template `velocity=`*(self: InputEventScreenDrag; value) = self.setVelocity(value)

template screenVelocity*(self: InputEventScreenDrag): untyped = self.getScreenVelocity()
template `screenVelocity=`*(self: InputEventScreenDrag; value) = self.setScreenVelocity(value)
