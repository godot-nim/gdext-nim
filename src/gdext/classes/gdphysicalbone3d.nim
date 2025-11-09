{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

expandOnClassImported(PhysicalBone3D, PhysicsBody3D)

method integrateForces*(self: PhysicalBone3D; state: PhysicsDirectBodyState3D): void {.base.} = (discard)
proc registerVirtual_integrateForces*[T: PhysicalBone3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_integrate_forces"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicalBone3D](p_instance).integrateForces(p_args[0].decode(PhysicsDirectBodyState3D))

proc applyCentralImpulse*(self: PhysicalBone3D; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "apply_central_impulse", 3460891852)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyImpulse*(self: PhysicalBone3D; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "apply_impulse", 2754756483)
  methodbind.ptrcall(self, [getPtr impulse, getPtr position], void)

proc setJointType*(self: PhysicalBone3D; jointType: PhysicalBone3D_JointType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_joint_type", 2289552604)
  methodbind.ptrcall(self, [getPtr jointType], void)

proc getJointType*(self: PhysicalBone3D): PhysicalBone3D_JointType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_joint_type", 931347320)
  methodbind.ptrcall(self, [], PhysicalBone3D_JointType)

proc setJointOffset*(self: PhysicalBone3D; offset: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_joint_offset", 2952846383)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getJointOffset*(self: PhysicalBone3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_joint_offset", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setJointRotation*(self: PhysicalBone3D; euler: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_joint_rotation", 3460891852)
  methodbind.ptrcall(self, [getPtr euler], void)

proc getJointRotation*(self: PhysicalBone3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_joint_rotation", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setBodyOffset*(self: PhysicalBone3D; offset: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_body_offset", 2952846383)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getBodyOffset*(self: PhysicalBone3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_body_offset", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getSimulatePhysics*(self: PhysicalBone3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_simulate_physics", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isSimulatingPhysics*(self: PhysicalBone3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "is_simulating_physics", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getBoneId*(self: PhysicalBone3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_bone_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMass*(self: PhysicalBone3D; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass], void)

proc getMass*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_mass", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFriction*(self: PhysicalBone3D; friction: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_friction", 373806689)
  methodbind.ptrcall(self, [getPtr friction], void)

proc getFriction*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_friction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBounce*(self: PhysicalBone3D; bounce: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_bounce", 373806689)
  methodbind.ptrcall(self, [getPtr bounce], void)

proc getBounce*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_bounce", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGravityScale*(self: PhysicalBone3D; gravityScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_gravity_scale", 373806689)
  methodbind.ptrcall(self, [getPtr gravityScale], void)

proc getGravityScale*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_gravity_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearDampMode*(self: PhysicalBone3D; linearDampMode: PhysicalBone3D_DampMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_linear_damp_mode", 1244972221)
  methodbind.ptrcall(self, [getPtr linearDampMode], void)

proc getLinearDampMode*(self: PhysicalBone3D): PhysicalBone3D_DampMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_linear_damp_mode", 205884699)
  methodbind.ptrcall(self, [], PhysicalBone3D_DampMode)

proc setAngularDampMode*(self: PhysicalBone3D; angularDampMode: PhysicalBone3D_DampMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_angular_damp_mode", 1244972221)
  methodbind.ptrcall(self, [getPtr angularDampMode], void)

proc getAngularDampMode*(self: PhysicalBone3D): PhysicalBone3D_DampMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_angular_damp_mode", 205884699)
  methodbind.ptrcall(self, [], PhysicalBone3D_DampMode)

proc setLinearDamp*(self: PhysicalBone3D; linearDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_linear_damp", 373806689)
  methodbind.ptrcall(self, [getPtr linearDamp], void)

proc getLinearDamp*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_linear_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAngularDamp*(self: PhysicalBone3D; angularDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_angular_damp", 373806689)
  methodbind.ptrcall(self, [getPtr angularDamp], void)

proc getAngularDamp*(self: PhysicalBone3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_angular_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearVelocity*(self: PhysicalBone3D; linearVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr linearVelocity], void)

proc getLinearVelocity*(self: PhysicalBone3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAngularVelocity*(self: PhysicalBone3D; angularVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr angularVelocity], void)

proc getAngularVelocity*(self: PhysicalBone3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "get_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setUseCustomIntegrator*(self: PhysicalBone3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_use_custom_integrator", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingCustomIntegrator*(self: PhysicalBone3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "is_using_custom_integrator", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setCanSleep*(self: PhysicalBone3D; ableToSleep: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "set_can_sleep", 2586408642)
  methodbind.ptrcall(self, [getPtr ableToSleep], void)

proc isAbleToSleep*(self: PhysicalBone3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicalBone3D, "is_able_to_sleep", 36873697)
  methodbind.ptrcall(self, [], bool)

template jointType*(self: PhysicalBone3D): untyped = self.getJointType()
template `jointType=`*(self: PhysicalBone3D; value) = self.setJointType(value)

template jointOffset*(self: PhysicalBone3D): untyped = self.getJointOffset()
template `jointOffset=`*(self: PhysicalBone3D; value) = self.setJointOffset(value)

template jointRotation*(self: PhysicalBone3D): untyped = self.getJointRotation()
template `jointRotation=`*(self: PhysicalBone3D; value) = self.setJointRotation(value)

template bodyOffset*(self: PhysicalBone3D): untyped = self.getBodyOffset()
template `bodyOffset=`*(self: PhysicalBone3D; value) = self.setBodyOffset(value)

template mass*(self: PhysicalBone3D): untyped = self.getMass()
template `mass=`*(self: PhysicalBone3D; value) = self.setMass(value)

template friction*(self: PhysicalBone3D): untyped = self.getFriction()
template `friction=`*(self: PhysicalBone3D; value) = self.setFriction(value)

template bounce*(self: PhysicalBone3D): untyped = self.getBounce()
template `bounce=`*(self: PhysicalBone3D; value) = self.setBounce(value)

template gravityScale*(self: PhysicalBone3D): untyped = self.getGravityScale()
template `gravityScale=`*(self: PhysicalBone3D; value) = self.setGravityScale(value)

template customIntegrator*(self: PhysicalBone3D): untyped = self.isUsingCustomIntegrator()
template `customIntegrator=`*(self: PhysicalBone3D; value) = self.setUseCustomIntegrator(value)

template linearDampMode*(self: PhysicalBone3D): untyped = self.getLinearDampMode()
template `linearDampMode=`*(self: PhysicalBone3D; value) = self.setLinearDampMode(value)

template linearDamp*(self: PhysicalBone3D): untyped = self.getLinearDamp()
template `linearDamp=`*(self: PhysicalBone3D; value) = self.setLinearDamp(value)

template angularDampMode*(self: PhysicalBone3D): untyped = self.getAngularDampMode()
template `angularDampMode=`*(self: PhysicalBone3D; value) = self.setAngularDampMode(value)

template angularDamp*(self: PhysicalBone3D): untyped = self.getAngularDamp()
template `angularDamp=`*(self: PhysicalBone3D; value) = self.setAngularDamp(value)

template linearVelocity*(self: PhysicalBone3D): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: PhysicalBone3D; value) = self.setLinearVelocity(value)

template angularVelocity*(self: PhysicalBone3D): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: PhysicalBone3D; value) = self.setAngularVelocity(value)

template canSleep*(self: PhysicalBone3D): untyped = self.isAbleToSleep()
template `canSleep=`*(self: PhysicalBone3D; value) = self.setCanSleep(value)
