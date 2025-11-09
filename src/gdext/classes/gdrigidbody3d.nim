{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

expandOnClassImported(RigidBody3D, PhysicsBody3D)

method integrateForces*(self: RigidBody3D; state: PhysicsDirectBodyState3D): void {.base.} = (discard)
proc registerVirtual_integrateForces*[T: RigidBody3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_integrate_forces"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RigidBody3D](p_instance).integrateForces(p_args[0].decode(PhysicsDirectBodyState3D))

proc setMass*(self: RigidBody3D; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass], void)

proc getMass*(self: RigidBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_mass", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setInertia*(self: RigidBody3D; inertia: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_inertia", 3460891852)
  methodbind.ptrcall(self, [getPtr inertia], void)

proc getInertia*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_inertia", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setCenterOfMassMode*(self: RigidBody3D; mode: RigidBody3D_CenterOfMassMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_center_of_mass_mode", 3625866032)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getCenterOfMassMode*(self: RigidBody3D): RigidBody3D_CenterOfMassMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_center_of_mass_mode", 237405040)
  methodbind.ptrcall(self, [], RigidBody3D_CenterOfMassMode)

proc setCenterOfMass*(self: RigidBody3D; centerOfMass: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_center_of_mass", 3460891852)
  methodbind.ptrcall(self, [getPtr centerOfMass], void)

proc getCenterOfMass*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_center_of_mass", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setPhysicsMaterialOverride*(self: RigidBody3D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_physics_material_override", 1784508650)
  methodbind.ptrcall(self, [getPtr physicsMaterialOverride], void)

proc getPhysicsMaterialOverride*(self: RigidBody3D): gdref PhysicsMaterial =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_physics_material_override", 2521850424)
  methodbind.ptrcall(self, [], gdref PhysicsMaterial)

proc setLinearVelocity*(self: RigidBody3D; linearVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr linearVelocity], void)

proc getLinearVelocity*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAngularVelocity*(self: RigidBody3D; angularVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr angularVelocity], void)

proc getAngularVelocity*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getInverseInertiaTensor*(self: RigidBody3D): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_inverse_inertia_tensor", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc setGravityScale*(self: RigidBody3D; gravityScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_gravity_scale", 373806689)
  methodbind.ptrcall(self, [getPtr gravityScale], void)

proc getGravityScale*(self: RigidBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_gravity_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLinearDampMode*(self: RigidBody3D; linearDampMode: RigidBody3D_DampMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_linear_damp_mode", 1802035050)
  methodbind.ptrcall(self, [getPtr linearDampMode], void)

proc getLinearDampMode*(self: RigidBody3D): RigidBody3D_DampMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_linear_damp_mode", 1366206940)
  methodbind.ptrcall(self, [], RigidBody3D_DampMode)

proc setAngularDampMode*(self: RigidBody3D; angularDampMode: RigidBody3D_DampMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_angular_damp_mode", 1802035050)
  methodbind.ptrcall(self, [getPtr angularDampMode], void)

proc getAngularDampMode*(self: RigidBody3D): RigidBody3D_DampMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_angular_damp_mode", 1366206940)
  methodbind.ptrcall(self, [], RigidBody3D_DampMode)

proc setLinearDamp*(self: RigidBody3D; linearDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_linear_damp", 373806689)
  methodbind.ptrcall(self, [getPtr linearDamp], void)

proc getLinearDamp*(self: RigidBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_linear_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAngularDamp*(self: RigidBody3D; angularDamp: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_angular_damp", 373806689)
  methodbind.ptrcall(self, [getPtr angularDamp], void)

proc getAngularDamp*(self: RigidBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_angular_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxContactsReported*(self: RigidBody3D; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_max_contacts_reported", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getMaxContactsReported*(self: RigidBody3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_max_contacts_reported", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getContactCount*(self: RigidBody3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_contact_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setUseCustomIntegrator*(self: RigidBody3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_use_custom_integrator", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingCustomIntegrator*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_using_custom_integrator", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setContactMonitor*(self: RigidBody3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_contact_monitor", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isContactMonitorEnabled*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_contact_monitor_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseContinuousCollisionDetection*(self: RigidBody3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_use_continuous_collision_detection", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingContinuousCollisionDetection*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_using_continuous_collision_detection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAxisVelocity*(self: RigidBody3D; axisVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_axis_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr axisVelocity], void)

proc applyCentralImpulse*(self: RigidBody3D; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_central_impulse", 3460891852)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyImpulse*(self: RigidBody3D; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_impulse", 2754756483)
  methodbind.ptrcall(self, [getPtr impulse, getPtr position], void)

proc applyTorqueImpulse*(self: RigidBody3D; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_torque_impulse", 3460891852)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyCentralForce*(self: RigidBody3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_central_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc applyForce*(self: RigidBody3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_force", 2754756483)
  methodbind.ptrcall(self, [getPtr force, getPtr position], void)

proc applyTorque*(self: RigidBody3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "apply_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc addConstantCentralForce*(self: RigidBody3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "add_constant_central_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc addConstantForce*(self: RigidBody3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "add_constant_force", 2754756483)
  methodbind.ptrcall(self, [getPtr force, getPtr position], void)

proc addConstantTorque*(self: RigidBody3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "add_constant_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc setConstantForce*(self: RigidBody3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_constant_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc getConstantForce*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_constant_force", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setConstantTorque*(self: RigidBody3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_constant_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc getConstantTorque*(self: RigidBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_constant_torque", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSleeping*(self: RigidBody3D; sleeping: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_sleeping", 2586408642)
  methodbind.ptrcall(self, [getPtr sleeping], void)

proc isSleeping*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_sleeping", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCanSleep*(self: RigidBody3D; ableToSleep: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_can_sleep", 2586408642)
  methodbind.ptrcall(self, [getPtr ableToSleep], void)

proc isAbleToSleep*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_able_to_sleep", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLockRotationEnabled*(self: RigidBody3D; lockRotation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_lock_rotation_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr lockRotation], void)

proc isLockRotationEnabled*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_lock_rotation_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFreezeEnabled*(self: RigidBody3D; freezeMode: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_freeze_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr freezeMode], void)

proc isFreezeEnabled*(self: RigidBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "is_freeze_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFreezeMode*(self: RigidBody3D; freezeMode: RigidBody3D_FreezeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "set_freeze_mode", 1319914653)
  methodbind.ptrcall(self, [getPtr freezeMode], void)

proc getFreezeMode*(self: RigidBody3D): RigidBody3D_FreezeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_freeze_mode", 2008423905)
  methodbind.ptrcall(self, [], RigidBody3D_FreezeMode)

proc getCollidingBodies*(self: RigidBody3D): TypedArray[Node3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RigidBody3D, "get_colliding_bodies", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Node3D])

template mass*(self: RigidBody3D): untyped = self.getMass()
template `mass=`*(self: RigidBody3D; value) = self.setMass(value)

template physicsMaterialOverride*(self: RigidBody3D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: RigidBody3D; value) = self.setPhysicsMaterialOverride(value)

template gravityScale*(self: RigidBody3D): untyped = self.getGravityScale()
template `gravityScale=`*(self: RigidBody3D; value) = self.setGravityScale(value)

template centerOfMassMode*(self: RigidBody3D): untyped = self.getCenterOfMassMode()
template `centerOfMassMode=`*(self: RigidBody3D; value) = self.setCenterOfMassMode(value)

template centerOfMass*(self: RigidBody3D): untyped = self.getCenterOfMass()
template `centerOfMass=`*(self: RigidBody3D; value) = self.setCenterOfMass(value)

template inertia*(self: RigidBody3D): untyped = self.getInertia()
template `inertia=`*(self: RigidBody3D; value) = self.setInertia(value)

template sleeping*(self: RigidBody3D): untyped = self.isSleeping()
template `sleeping=`*(self: RigidBody3D; value) = self.setSleeping(value)

template canSleep*(self: RigidBody3D): untyped = self.isAbleToSleep()
template `canSleep=`*(self: RigidBody3D; value) = self.setCanSleep(value)

template lockRotation*(self: RigidBody3D): untyped = self.isLockRotationEnabled()
template `lockRotation=`*(self: RigidBody3D; value) = self.setLockRotationEnabled(value)

template freeze*(self: RigidBody3D): untyped = self.isFreezeEnabled()
template `freeze=`*(self: RigidBody3D; value) = self.setFreezeEnabled(value)

template freezeMode*(self: RigidBody3D): untyped = self.getFreezeMode()
template `freezeMode=`*(self: RigidBody3D; value) = self.setFreezeMode(value)

template customIntegrator*(self: RigidBody3D): untyped = self.isUsingCustomIntegrator()
template `customIntegrator=`*(self: RigidBody3D; value) = self.setUseCustomIntegrator(value)

template continuousCd*(self: RigidBody3D): untyped = self.isUsingContinuousCollisionDetection()
template `continuousCd=`*(self: RigidBody3D; value) = self.setUseContinuousCollisionDetection(value)

template contactMonitor*(self: RigidBody3D): untyped = self.isContactMonitorEnabled()
template `contactMonitor=`*(self: RigidBody3D; value) = self.setContactMonitor(value)

template maxContactsReported*(self: RigidBody3D): untyped = self.getMaxContactsReported()
template `maxContactsReported=`*(self: RigidBody3D; value) = self.setMaxContactsReported(value)

template linearVelocity*(self: RigidBody3D): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: RigidBody3D; value) = self.setLinearVelocity(value)

template linearDampMode*(self: RigidBody3D): untyped = self.getLinearDampMode()
template `linearDampMode=`*(self: RigidBody3D; value) = self.setLinearDampMode(value)

template linearDamp*(self: RigidBody3D): untyped = self.getLinearDamp()
template `linearDamp=`*(self: RigidBody3D; value) = self.setLinearDamp(value)

template angularVelocity*(self: RigidBody3D): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: RigidBody3D; value) = self.setAngularVelocity(value)

template angularDampMode*(self: RigidBody3D): untyped = self.getAngularDampMode()
template `angularDampMode=`*(self: RigidBody3D; value) = self.setAngularDampMode(value)

template angularDamp*(self: RigidBody3D): untyped = self.getAngularDamp()
template `angularDamp=`*(self: RigidBody3D; value) = self.setAngularDamp(value)

template constantForce*(self: RigidBody3D): untyped = self.getConstantForce()
template `constantForce=`*(self: RigidBody3D; value) = self.setConstantForce(value)

template constantTorque*(self: RigidBody3D): untyped = self.getConstantTorque()
template `constantTorque=`*(self: RigidBody3D; value) = self.setConstantTorque(value)
