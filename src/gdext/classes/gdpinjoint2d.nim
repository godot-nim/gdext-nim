{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

expandOnClassImported(PinJoint2D, Joint2D)

proc setSoftness*(self: PinJoint2D; softness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_softness", 373806689)
  methodbind.ptrcall(self, [getPtr softness], void)

proc getSoftness*(self: PinJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "get_softness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAngularLimitLower*(self: PinJoint2D; angularLimitLower: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_angular_limit_lower", 373806689)
  methodbind.ptrcall(self, [getPtr angularLimitLower], void)

proc getAngularLimitLower*(self: PinJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "get_angular_limit_lower", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAngularLimitUpper*(self: PinJoint2D; angularLimitUpper: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_angular_limit_upper", 373806689)
  methodbind.ptrcall(self, [getPtr angularLimitUpper], void)

proc getAngularLimitUpper*(self: PinJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "get_angular_limit_upper", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMotorTargetVelocity*(self: PinJoint2D; motorTargetVelocity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_motor_target_velocity", 373806689)
  methodbind.ptrcall(self, [getPtr motorTargetVelocity], void)

proc getMotorTargetVelocity*(self: PinJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "get_motor_target_velocity", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMotorEnabled*(self: PinJoint2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_motor_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMotorEnabled*(self: PinJoint2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "is_motor_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAngularLimitEnabled*(self: PinJoint2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "set_angular_limit_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isAngularLimitEnabled*(self: PinJoint2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint2D, "is_angular_limit_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

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
