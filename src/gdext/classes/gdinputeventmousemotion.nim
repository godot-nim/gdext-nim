{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventmouse; export gdinputeventmouse

proc setTilt*(self: InputEventMouseMotion; tilt: Vector2): void =
  expandMethodBind(className InputEventMouseMotion, "set_tilt", 743155724)
  methodbind.ptrcall(self, [getPtr tilt])

proc getTilt*(self: InputEventMouseMotion): Vector2 =
  expandMethodBind(className InputEventMouseMotion, "get_tilt", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setPressure*(self: InputEventMouseMotion; pressure: Float): void =
  expandMethodBind(className InputEventMouseMotion, "set_pressure", 373806689)
  methodbind.ptrcall(self, [getPtr pressure])

proc getPressure*(self: InputEventMouseMotion): Float =
  expandMethodBind(className InputEventMouseMotion, "get_pressure", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPenInverted*(self: InputEventMouseMotion; penInverted: bool): void =
  expandMethodBind(className InputEventMouseMotion, "set_pen_inverted", 2586408642)
  methodbind.ptrcall(self, [getPtr penInverted])

proc getPenInverted*(self: InputEventMouseMotion): bool =
  expandMethodBind(className InputEventMouseMotion, "get_pen_inverted", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRelative*(self: InputEventMouseMotion; relative: Vector2): void =
  expandMethodBind(className InputEventMouseMotion, "set_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative])

proc getRelative*(self: InputEventMouseMotion): Vector2 =
  expandMethodBind(className InputEventMouseMotion, "get_relative", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setScreenRelative*(self: InputEventMouseMotion; relative: Vector2): void =
  expandMethodBind(className InputEventMouseMotion, "set_screen_relative", 743155724)
  methodbind.ptrcall(self, [getPtr relative])

proc getScreenRelative*(self: InputEventMouseMotion): Vector2 =
  expandMethodBind(className InputEventMouseMotion, "get_screen_relative", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setVelocity*(self: InputEventMouseMotion; velocity: Vector2): void =
  expandMethodBind(className InputEventMouseMotion, "set_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity])

proc getVelocity*(self: InputEventMouseMotion): Vector2 =
  expandMethodBind(className InputEventMouseMotion, "get_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setScreenVelocity*(self: InputEventMouseMotion; velocity: Vector2): void =
  expandMethodBind(className InputEventMouseMotion, "set_screen_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity])

proc getScreenVelocity*(self: InputEventMouseMotion): Vector2 =
  expandMethodBind(className InputEventMouseMotion, "get_screen_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

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

const InputEventMouseMotion_vmap =
  InputEventMouse.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventMouseMotion]): Table[string, string] = InputEventMouseMotion_vmap