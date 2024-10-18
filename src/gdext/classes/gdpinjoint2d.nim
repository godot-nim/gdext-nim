{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

proc setSoftness*(self: PinJoint2D; softness: Float): void =
  expandMethodBind(className PinJoint2D, "set_softness", 373806689)
  var `?param` = [getPtr softness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSoftness*(self: PinJoint2D): Float =
  expandMethodBind(className PinJoint2D, "get_softness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAngularLimitLower*(self: PinJoint2D; angularLimitLower: Float): void =
  expandMethodBind(className PinJoint2D, "set_angular_limit_lower", 373806689)
  var `?param` = [getPtr angularLimitLower]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularLimitLower*(self: PinJoint2D): Float =
  expandMethodBind(className PinJoint2D, "get_angular_limit_lower", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAngularLimitUpper*(self: PinJoint2D; angularLimitUpper: Float): void =
  expandMethodBind(className PinJoint2D, "set_angular_limit_upper", 373806689)
  var `?param` = [getPtr angularLimitUpper]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularLimitUpper*(self: PinJoint2D): Float =
  expandMethodBind(className PinJoint2D, "get_angular_limit_upper", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMotorTargetVelocity*(self: PinJoint2D; motorTargetVelocity: Float): void =
  expandMethodBind(className PinJoint2D, "set_motor_target_velocity", 373806689)
  var `?param` = [getPtr motorTargetVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotorTargetVelocity*(self: PinJoint2D): Float =
  expandMethodBind(className PinJoint2D, "get_motor_target_velocity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMotorEnabled*(self: PinJoint2D; enabled: bool): void =
  expandMethodBind(className PinJoint2D, "set_motor_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMotorEnabled*(self: PinJoint2D): bool =
  expandMethodBind(className PinJoint2D, "is_motor_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAngularLimitEnabled*(self: PinJoint2D; enabled: bool): void =
  expandMethodBind(className PinJoint2D, "set_angular_limit_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAngularLimitEnabled*(self: PinJoint2D): bool =
  expandMethodBind(className PinJoint2D, "is_angular_limit_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template softness*(self: PinJoint2D): untyped = self.getSoftness()
template `softness=`*(self: PinJoint2D; value) = self.setSoftness(value)

template angularLimitEnabled*(self: PinJoint2D): untyped = self.isAngularLimitEnabled()
template `angularLimitEnabled=`*(self: PinJoint2D; value) = self.setAngularLimitEnabled(value)

template angularLimitLower*(self: PinJoint2D): untyped = self.getAngularLimitLower()
template `angularLimitLower=`*(self: PinJoint2D; value) = self.setAngularLimitLower(value)

template angularLimitUpper*(self: PinJoint2D): untyped = self.getAngularLimitUpper()
template `angularLimitUpper=`*(self: PinJoint2D; value) = self.setAngularLimitUpper(value)

template motorEnabled*(self: PinJoint2D): untyped = self.isMotorEnabled()
template `motorEnabled=`*(self: PinJoint2D; value) = self.setMotorEnabled(value)

template motorTargetVelocity*(self: PinJoint2D): untyped = self.getMotorTargetVelocity()
template `motorTargetVelocity=`*(self: PinJoint2D; value) = self.setMotorTargetVelocity(value)

const PinJoint2D_vmap =
  Joint2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PinJoint2D]): Table[string, string] = PinJoint2D_vmap