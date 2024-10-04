{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsbody3d; export gdphysicsbody3d

method integrateForces*(self: RigidBody3D; state: PhysicsDirectBodyState3D): void {.base.} = (discard)
proc integrateForces(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RigidBody3D](p_instance).integrateForces(p_args[0].decode(PhysicsDirectBodyState3D))
template integrateForces_bind*(_: typedesc[RigidBody3D]): ClassCallVirtual = integrateForces

proc setMass*(self: RigidBody3D; mass: Float): void =
  expandMethodBind(className RigidBody3D, "set_mass", 373806689)
  var `?param` = [getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMass*(self: RigidBody3D): Float =
  expandMethodBind(className RigidBody3D, "get_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInertia*(self: RigidBody3D; inertia: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_inertia", 3460891852)
  var `?param` = [getPtr inertia]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInertia*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_inertia", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setCenterOfMassMode*(self: RigidBody3D; mode: RigidBody3D_CenterOfMassMode): void =
  expandMethodBind(className RigidBody3D, "set_center_of_mass_mode", 3625866032)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCenterOfMassMode*(self: RigidBody3D): RigidBody3D_CenterOfMassMode =
  expandMethodBind(className RigidBody3D, "get_center_of_mass_mode", 237405040)
  var ret: encoded RigidBody3D_CenterOfMassMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody3D_CenterOfMassMode)

proc setCenterOfMass*(self: RigidBody3D; centerOfMass: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_center_of_mass", 3460891852)
  var `?param` = [getPtr centerOfMass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCenterOfMass*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_center_of_mass", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setPhysicsMaterialOverride*(self: RigidBody3D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  expandMethodBind(className RigidBody3D, "set_physics_material_override", 1784508650)
  var `?param` = [getPtr physicsMaterialOverride]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsMaterialOverride*(self: RigidBody3D): gdref PhysicsMaterial =
  expandMethodBind(className RigidBody3D, "get_physics_material_override", 2521850424)
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

proc setLinearVelocity*(self: RigidBody3D; linearVelocity: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_linear_velocity", 3460891852)
  var `?param` = [getPtr linearVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: RigidBody3D; angularVelocity: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_angular_velocity", 3460891852)
  var `?param` = [getPtr angularVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getInverseInertiaTensor*(self: RigidBody3D): Basis =
  expandMethodBind(className RigidBody3D, "get_inverse_inertia_tensor", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc setGravityScale*(self: RigidBody3D; gravityScale: Float): void =
  expandMethodBind(className RigidBody3D, "set_gravity_scale", 373806689)
  var `?param` = [getPtr gravityScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravityScale*(self: RigidBody3D): Float =
  expandMethodBind(className RigidBody3D, "get_gravity_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLinearDampMode*(self: RigidBody3D; linearDampMode: RigidBody3D_DampMode): void =
  expandMethodBind(className RigidBody3D, "set_linear_damp_mode", 1802035050)
  var `?param` = [getPtr linearDampMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDampMode*(self: RigidBody3D): RigidBody3D_DampMode =
  expandMethodBind(className RigidBody3D, "get_linear_damp_mode", 1366206940)
  var ret: encoded RigidBody3D_DampMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody3D_DampMode)

proc setAngularDampMode*(self: RigidBody3D; angularDampMode: RigidBody3D_DampMode): void =
  expandMethodBind(className RigidBody3D, "set_angular_damp_mode", 1802035050)
  var `?param` = [getPtr angularDampMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDampMode*(self: RigidBody3D): RigidBody3D_DampMode =
  expandMethodBind(className RigidBody3D, "get_angular_damp_mode", 1366206940)
  var ret: encoded RigidBody3D_DampMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody3D_DampMode)

proc setLinearDamp*(self: RigidBody3D; linearDamp: Float): void =
  expandMethodBind(className RigidBody3D, "set_linear_damp", 373806689)
  var `?param` = [getPtr linearDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDamp*(self: RigidBody3D): Float =
  expandMethodBind(className RigidBody3D, "get_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAngularDamp*(self: RigidBody3D; angularDamp: Float): void =
  expandMethodBind(className RigidBody3D, "set_angular_damp", 373806689)
  var `?param` = [getPtr angularDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDamp*(self: RigidBody3D): Float =
  expandMethodBind(className RigidBody3D, "get_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxContactsReported*(self: RigidBody3D; amount: int32): void =
  expandMethodBind(className RigidBody3D, "set_max_contacts_reported", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxContactsReported*(self: RigidBody3D): int32 =
  expandMethodBind(className RigidBody3D, "get_max_contacts_reported", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getContactCount*(self: RigidBody3D): int32 =
  expandMethodBind(className RigidBody3D, "get_contact_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseCustomIntegrator*(self: RigidBody3D; enable: bool): void =
  expandMethodBind(className RigidBody3D, "set_use_custom_integrator", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingCustomIntegrator*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_using_custom_integrator", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setContactMonitor*(self: RigidBody3D; enabled: bool): void =
  expandMethodBind(className RigidBody3D, "set_contact_monitor", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isContactMonitorEnabled*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_contact_monitor_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseContinuousCollisionDetection*(self: RigidBody3D; enable: bool): void =
  expandMethodBind(className RigidBody3D, "set_use_continuous_collision_detection", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingContinuousCollisionDetection*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_using_continuous_collision_detection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAxisVelocity*(self: RigidBody3D; axisVelocity: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_axis_velocity", 3460891852)
  var `?param` = [getPtr axisVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyCentralImpulse*(self: RigidBody3D; impulse: Vector3): void =
  expandMethodBind(className RigidBody3D, "apply_central_impulse", 3460891852)
  var `?param` = [getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyImpulse*(self: RigidBody3D; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className RigidBody3D, "apply_impulse", 2754756483)
  var `?param` = [getPtr impulse, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorqueImpulse*(self: RigidBody3D; impulse: Vector3): void =
  expandMethodBind(className RigidBody3D, "apply_torque_impulse", 3460891852)
  var `?param` = [getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyCentralForce*(self: RigidBody3D; force: Vector3): void =
  expandMethodBind(className RigidBody3D, "apply_central_force", 3460891852)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyForce*(self: RigidBody3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className RigidBody3D, "apply_force", 2754756483)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorque*(self: RigidBody3D; torque: Vector3): void =
  expandMethodBind(className RigidBody3D, "apply_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantCentralForce*(self: RigidBody3D; force: Vector3): void =
  expandMethodBind(className RigidBody3D, "add_constant_central_force", 3460891852)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantForce*(self: RigidBody3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className RigidBody3D, "add_constant_force", 2754756483)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantTorque*(self: RigidBody3D; torque: Vector3): void =
  expandMethodBind(className RigidBody3D, "add_constant_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConstantForce*(self: RigidBody3D; force: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_constant_force", 3460891852)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantForce*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_constant_force", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setConstantTorque*(self: RigidBody3D; torque: Vector3): void =
  expandMethodBind(className RigidBody3D, "set_constant_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantTorque*(self: RigidBody3D): Vector3 =
  expandMethodBind(className RigidBody3D, "get_constant_torque", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSleeping*(self: RigidBody3D; sleeping: bool): void =
  expandMethodBind(className RigidBody3D, "set_sleeping", 2586408642)
  var `?param` = [getPtr sleeping]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSleeping*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_sleeping", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCanSleep*(self: RigidBody3D; ableToSleep: bool): void =
  expandMethodBind(className RigidBody3D, "set_can_sleep", 2586408642)
  var `?param` = [getPtr ableToSleep]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAbleToSleep*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_able_to_sleep", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLockRotationEnabled*(self: RigidBody3D; lockRotation: bool): void =
  expandMethodBind(className RigidBody3D, "set_lock_rotation_enabled", 2586408642)
  var `?param` = [getPtr lockRotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLockRotationEnabled*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_lock_rotation_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFreezeEnabled*(self: RigidBody3D; freezeMode: bool): void =
  expandMethodBind(className RigidBody3D, "set_freeze_enabled", 2586408642)
  var `?param` = [getPtr freezeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFreezeEnabled*(self: RigidBody3D): bool =
  expandMethodBind(className RigidBody3D, "is_freeze_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFreezeMode*(self: RigidBody3D; freezeMode: RigidBody3D_FreezeMode): void =
  expandMethodBind(className RigidBody3D, "set_freeze_mode", 1319914653)
  var `?param` = [getPtr freezeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFreezeMode*(self: RigidBody3D): RigidBody3D_FreezeMode =
  expandMethodBind(className RigidBody3D, "get_freeze_mode", 2008423905)
  var ret: encoded RigidBody3D_FreezeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody3D_FreezeMode)

proc getCollidingBodies*(self: RigidBody3D): TypedArray[Node3D] =
  expandMethodBind(className RigidBody3D, "get_colliding_bodies", 3995934104)
  var ret: encoded TypedArray[Node3D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Node3D])

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

const RigidBody3D_vmap =
  PhysicsBody3D.vmap.concat toTable {
    "integrateforces" : "_integrate_forces",
    }
template vmap*(_: typedesc[RigidBody3D]): Table[string, string] = RigidBody3D_vmap

proc bodyShapeEntered*(self: RigidBody3D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_entered")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyShapeExited*(self: RigidBody3D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_exited")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyEntered*(self: RigidBody3D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_entered")
  let args = [body]
  self.emitSignal(signalname, args)

proc bodyExited*(self: RigidBody3D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_exited")
  let args = [body]
  self.emitSignal(signalname, args)

proc sleepingStateChanged*(self: RigidBody3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sleeping_state_changed")
  self.emitSignal(signalname)