{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

proc setIndex*(self: InputEventScreenDrag; index: int32): void =
  expandMethodBind(className InputEventScreenDrag, "set_index", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIndex*(self: InputEventScreenDrag): int32 =
  expandMethodBind(className InputEventScreenDrag, "get_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTilt*(self: InputEventScreenDrag; tilt: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_tilt", 743155724)
  var `?param` = [getPtr tilt]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTilt*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_tilt", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setPressure*(self: InputEventScreenDrag; pressure: Float): void =
  expandMethodBind(className InputEventScreenDrag, "set_pressure", 373806689)
  var `?param` = [getPtr pressure]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPressure*(self: InputEventScreenDrag): Float =
  expandMethodBind(className InputEventScreenDrag, "get_pressure", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPenInverted*(self: InputEventScreenDrag; penInverted: bool): void =
  expandMethodBind(className InputEventScreenDrag, "set_pen_inverted", 2586408642)
  var `?param` = [getPtr penInverted]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPenInverted*(self: InputEventScreenDrag): bool =
  expandMethodBind(className InputEventScreenDrag, "get_pen_inverted", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPosition*(self: InputEventScreenDrag; position: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setRelative*(self: InputEventScreenDrag; relative: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_relative", 743155724)
  var `?param` = [getPtr relative]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRelative*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_relative", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScreenRelative*(self: InputEventScreenDrag; relative: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_screen_relative", 743155724)
  var `?param` = [getPtr relative]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScreenRelative*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_screen_relative", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setVelocity*(self: InputEventScreenDrag; velocity: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_velocity", 743155724)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVelocity*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setScreenVelocity*(self: InputEventScreenDrag; velocity: Vector2): void =
  expandMethodBind(className InputEventScreenDrag, "set_screen_velocity", 743155724)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScreenVelocity*(self: InputEventScreenDrag): Vector2 =
  expandMethodBind(className InputEventScreenDrag, "get_screen_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

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

const InputEventScreenDrag_vmap =
  InputEventFromWindow.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventScreenDrag]): Table[string, string] = InputEventScreenDrag_vmap