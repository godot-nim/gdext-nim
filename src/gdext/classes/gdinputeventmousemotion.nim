{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventmouse; export gdinputeventmouse

expandOnClassImported(InputEventMouseMotion, InputEventMouse)

proc setTilt*(self: InputEventMouseMotion; tilt: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_tilt", 743155724)
  methodbind.ptrcall(self, [getPtr tilt], void)

proc getTilt*(self: InputEventMouseMotion): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_tilt", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setPressure*(self: InputEventMouseMotion; pressure: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_pressure", 373806689)
  methodbind.ptrcall(self, [getPtr pressure], void)

proc getPressure*(self: InputEventMouseMotion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_pressure", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPenInverted*(self: InputEventMouseMotion; penInverted: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_pen_inverted", 2586408642)
  methodbind.ptrcall(self, [getPtr penInverted], void)

proc getPenInverted*(self: InputEventMouseMotion): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_pen_inverted", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRelative*(self: InputEventMouseMotion; relative: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative], void)

proc getRelative*(self: InputEventMouseMotion): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_relative", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScreenRelative*(self: InputEventMouseMotion; relative: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_screen_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative], void)

proc getScreenRelative*(self: InputEventMouseMotion): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_screen_relative", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setVelocity*(self: InputEventMouseMotion; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getVelocity*(self: InputEventMouseMotion): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setScreenVelocity*(self: InputEventMouseMotion; velocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "set_screen_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getScreenVelocity*(self: InputEventMouseMotion): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventMouseMotion, "get_screen_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template tilt*(self: InputEventMouseMotion): untyped = self.getTilt()
template `tilt=`*(self: InputEventMouseMotion; value) = self.setTilt(value)

template pressure*(self: InputEventMouseMotion): untyped = self.getPressure()
template `pressure=`*(self: InputEventMouseMotion; value) = self.setPressure(value)

template penInverted*(self: InputEventMouseMotion): untyped = self.getPenInverted()
template `penInverted=`*(self: InputEventMouseMotion; value) = self.setPenInverted(value)

template relative*(self: InputEventMouseMotion): untyped = self.getRelative()
template `relative=`*(self: InputEventMouseMotion; value) = self.setRelative(value)

template screenRelative*(self: InputEventMouseMotion): untyped = self.getScreenRelative()
template `screenRelative=`*(self: InputEventMouseMotion; value) = self.setScreenRelative(value)

template velocity*(self: InputEventMouseMotion): untyped = self.getVelocity()
template `velocity=`*(self: InputEventMouseMotion; value) = self.setVelocity(value)

template screenVelocity*(self: InputEventMouseMotion): untyped = self.getScreenVelocity()
template `screenVelocity=`*(self: InputEventMouseMotion; value) = self.setScreenVelocity(value)
