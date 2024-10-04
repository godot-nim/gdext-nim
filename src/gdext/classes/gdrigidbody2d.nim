{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsbody2d; export gdphysicsbody2d

method integrateForces*(self: RigidBody2D; state: PhysicsDirectBodyState2D): void {.base.} = (discard)
proc integrateForces(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[RigidBody2D](p_instance).integrateForces(p_args[0].decode(PhysicsDirectBodyState2D))
template integrateForces_bind*(_: typedesc[RigidBody2D]): ClassCallVirtual = integrateForces

proc setMass*(self: RigidBody2D; mass: Float): void =
  expandMethodBind(className RigidBody2D, "set_mass", 373806689)
  var `?param` = [getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMass*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getInertia*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_inertia", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInertia*(self: RigidBody2D; inertia: Float): void =
  expandMethodBind(className RigidBody2D, "set_inertia", 373806689)
  var `?param` = [getPtr inertia]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCenterOfMassMode*(self: RigidBody2D; mode: RigidBody2D_CenterOfMassMode): void =
  expandMethodBind(className RigidBody2D, "set_center_of_mass_mode", 1757235706)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCenterOfMassMode*(self: RigidBody2D): RigidBody2D_CenterOfMassMode =
  expandMethodBind(className RigidBody2D, "get_center_of_mass_mode", 3277132817)
  var ret: encoded RigidBody2D_CenterOfMassMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody2D_CenterOfMassMode)

proc setCenterOfMass*(self: RigidBody2D; centerOfMass: Vector2): void =
  expandMethodBind(className RigidBody2D, "set_center_of_mass", 743155724)
  var `?param` = [getPtr centerOfMass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCenterOfMass*(self: RigidBody2D): Vector2 =
  expandMethodBind(className RigidBody2D, "get_center_of_mass", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setPhysicsMaterialOverride*(self: RigidBody2D; physicsMaterialOverride: gdref PhysicsMaterial): void =
  expandMethodBind(className RigidBody2D, "set_physics_material_override", 1784508650)
  var `?param` = [getPtr physicsMaterialOverride]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsMaterialOverride*(self: RigidBody2D): gdref PhysicsMaterial =
  expandMethodBind(className RigidBody2D, "get_physics_material_override", 2521850424)
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

proc setGravityScale*(self: RigidBody2D; gravityScale: Float): void =
  expandMethodBind(className RigidBody2D, "set_gravity_scale", 373806689)
  var `?param` = [getPtr gravityScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravityScale*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_gravity_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLinearDampMode*(self: RigidBody2D; linearDampMode: RigidBody2D_DampMode): void =
  expandMethodBind(className RigidBody2D, "set_linear_damp_mode", 3406533708)
  var `?param` = [getPtr linearDampMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDampMode*(self: RigidBody2D): RigidBody2D_DampMode =
  expandMethodBind(className RigidBody2D, "get_linear_damp_mode", 2970511462)
  var ret: encoded RigidBody2D_DampMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody2D_DampMode)

proc setAngularDampMode*(self: RigidBody2D; angularDampMode: RigidBody2D_DampMode): void =
  expandMethodBind(className RigidBody2D, "set_angular_damp_mode", 3406533708)
  var `?param` = [getPtr angularDampMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDampMode*(self: RigidBody2D): RigidBody2D_DampMode =
  expandMethodBind(className RigidBody2D, "get_angular_damp_mode", 2970511462)
  var ret: encoded RigidBody2D_DampMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody2D_DampMode)

proc setLinearDamp*(self: RigidBody2D; linearDamp: Float): void =
  expandMethodBind(className RigidBody2D, "set_linear_damp", 373806689)
  var `?param` = [getPtr linearDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearDamp*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAngularDamp*(self: RigidBody2D; angularDamp: Float): void =
  expandMethodBind(className RigidBody2D, "set_angular_damp", 373806689)
  var `?param` = [getPtr angularDamp]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularDamp*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLinearVelocity*(self: RigidBody2D; linearVelocity: Vector2): void =
  expandMethodBind(className RigidBody2D, "set_linear_velocity", 743155724)
  var `?param` = [getPtr linearVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: RigidBody2D): Vector2 =
  expandMethodBind(className RigidBody2D, "get_linear_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setAngularVelocity*(self: RigidBody2D; angularVelocity: Float): void =
  expandMethodBind(className RigidBody2D, "set_angular_velocity", 373806689)
  var `?param` = [getPtr angularVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_angular_velocity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxContactsReported*(self: RigidBody2D; amount: int32): void =
  expandMethodBind(className RigidBody2D, "set_max_contacts_reported", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxContactsReported*(self: RigidBody2D): int32 =
  expandMethodBind(className RigidBody2D, "get_max_contacts_reported", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getContactCount*(self: RigidBody2D): int32 =
  expandMethodBind(className RigidBody2D, "get_contact_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseCustomIntegrator*(self: RigidBody2D; enable: bool): void =
  expandMethodBind(className RigidBody2D, "set_use_custom_integrator", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingCustomIntegrator*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_using_custom_integrator", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setContactMonitor*(self: RigidBody2D; enabled: bool): void =
  expandMethodBind(className RigidBody2D, "set_contact_monitor", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isContactMonitorEnabled*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_contact_monitor_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setContinuousCollisionDetectionMode*(self: RigidBody2D; mode: RigidBody2D_CcdMode): void =
  expandMethodBind(className RigidBody2D, "set_continuous_collision_detection_mode", 1000241384)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getContinuousCollisionDetectionMode*(self: RigidBody2D): RigidBody2D_CcdMode =
  expandMethodBind(className RigidBody2D, "get_continuous_collision_detection_mode", 815214376)
  var ret: encoded RigidBody2D_CcdMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody2D_CcdMode)

proc setAxisVelocity*(self: RigidBody2D; axisVelocity: Vector2): void =
  expandMethodBind(className RigidBody2D, "set_axis_velocity", 743155724)
  var `?param` = [getPtr axisVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyCentralImpulse*(self: RigidBody2D; impulse: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className RigidBody2D, "apply_central_impulse", 3862383994)
  var `?param` = [getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyImpulse*(self: RigidBody2D; impulse: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className RigidBody2D, "apply_impulse", 4288681949)
  var `?param` = [getPtr impulse, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorqueImpulse*(self: RigidBody2D; torque: Float): void =
  expandMethodBind(className RigidBody2D, "apply_torque_impulse", 373806689)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyCentralForce*(self: RigidBody2D; force: Vector2): void =
  expandMethodBind(className RigidBody2D, "apply_central_force", 743155724)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyForce*(self: RigidBody2D; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className RigidBody2D, "apply_force", 4288681949)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorque*(self: RigidBody2D; torque: Float): void =
  expandMethodBind(className RigidBody2D, "apply_torque", 373806689)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantCentralForce*(self: RigidBody2D; force: Vector2): void =
  expandMethodBind(className RigidBody2D, "add_constant_central_force", 743155724)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantForce*(self: RigidBody2D; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className RigidBody2D, "add_constant_force", 4288681949)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantTorque*(self: RigidBody2D; torque: Float): void =
  expandMethodBind(className RigidBody2D, "add_constant_torque", 373806689)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConstantForce*(self: RigidBody2D; force: Vector2): void =
  expandMethodBind(className RigidBody2D, "set_constant_force", 743155724)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantForce*(self: RigidBody2D): Vector2 =
  expandMethodBind(className RigidBody2D, "get_constant_force", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setConstantTorque*(self: RigidBody2D; torque: Float): void =
  expandMethodBind(className RigidBody2D, "set_constant_torque", 373806689)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantTorque*(self: RigidBody2D): Float =
  expandMethodBind(className RigidBody2D, "get_constant_torque", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSleeping*(self: RigidBody2D; sleeping: bool): void =
  expandMethodBind(className RigidBody2D, "set_sleeping", 2586408642)
  var `?param` = [getPtr sleeping]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSleeping*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_sleeping", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCanSleep*(self: RigidBody2D; ableToSleep: bool): void =
  expandMethodBind(className RigidBody2D, "set_can_sleep", 2586408642)
  var `?param` = [getPtr ableToSleep]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAbleToSleep*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_able_to_sleep", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLockRotationEnabled*(self: RigidBody2D; lockRotation: bool): void =
  expandMethodBind(className RigidBody2D, "set_lock_rotation_enabled", 2586408642)
  var `?param` = [getPtr lockRotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLockRotationEnabled*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_lock_rotation_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFreezeEnabled*(self: RigidBody2D; freezeMode: bool): void =
  expandMethodBind(className RigidBody2D, "set_freeze_enabled", 2586408642)
  var `?param` = [getPtr freezeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFreezeEnabled*(self: RigidBody2D): bool =
  expandMethodBind(className RigidBody2D, "is_freeze_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFreezeMode*(self: RigidBody2D; freezeMode: RigidBody2D_FreezeMode): void =
  expandMethodBind(className RigidBody2D, "set_freeze_mode", 1705112154)
  var `?param` = [getPtr freezeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFreezeMode*(self: RigidBody2D): RigidBody2D_FreezeMode =
  expandMethodBind(className RigidBody2D, "get_freeze_mode", 2016872314)
  var ret: encoded RigidBody2D_FreezeMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RigidBody2D_FreezeMode)

proc getCollidingBodies*(self: RigidBody2D): TypedArray[Node2D] =
  expandMethodBind(className RigidBody2D, "get_colliding_bodies", 3995934104)
  var ret: encoded TypedArray[Node2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Node2D])

template mass*(self: RigidBody2D): untyped = self.getMass()
template `mass=`*(self: RigidBody2D; value) = self.setMass(value)

template physicsMaterialOverride*(self: RigidBody2D): untyped = self.getPhysicsMaterialOverride()
template `physicsMaterialOverride=`*(self: RigidBody2D; value) = self.setPhysicsMaterialOverride(value)

template gravityScale*(self: RigidBody2D): untyped = self.getGravityScale()
template `gravityScale=`*(self: RigidBody2D; value) = self.setGravityScale(value)

template centerOfMassMode*(self: RigidBody2D): untyped = self.getCenterOfMassMode()
template `centerOfMassMode=`*(self: RigidBody2D; value) = self.setCenterOfMassMode(value)

template centerOfMass*(self: RigidBody2D): untyped = self.getCenterOfMass()
template `centerOfMass=`*(self: RigidBody2D; value) = self.setCenterOfMass(value)

template inertia*(self: RigidBody2D): untyped = self.getInertia()
template `inertia=`*(self: RigidBody2D; value) = self.setInertia(value)

template sleeping*(self: RigidBody2D): untyped = self.isSleeping()
template `sleeping=`*(self: RigidBody2D; value) = self.setSleeping(value)

template canSleep*(self: RigidBody2D): untyped = self.isAbleToSleep()
template `canSleep=`*(self: RigidBody2D; value) = self.setCanSleep(value)

template lockRotation*(self: RigidBody2D): untyped = self.isLockRotationEnabled()
template `lockRotation=`*(self: RigidBody2D; value) = self.setLockRotationEnabled(value)

template freeze*(self: RigidBody2D): untyped = self.isFreezeEnabled()
template `freeze=`*(self: RigidBody2D; value) = self.setFreezeEnabled(value)

template freezeMode*(self: RigidBody2D): untyped = self.getFreezeMode()
template `freezeMode=`*(self: RigidBody2D; value) = self.setFreezeMode(value)

template customIntegrator*(self: RigidBody2D): untyped = self.isUsingCustomIntegrator()
template `customIntegrator=`*(self: RigidBody2D; value) = self.setUseCustomIntegrator(value)

template continuousCd*(self: RigidBody2D): untyped = self.getContinuousCollisionDetectionMode()
template `continuousCd=`*(self: RigidBody2D; value) = self.setContinuousCollisionDetectionMode(value)

template contactMonitor*(self: RigidBody2D): untyped = self.isContactMonitorEnabled()
template `contactMonitor=`*(self: RigidBody2D; value) = self.setContactMonitor(value)

template maxContactsReported*(self: RigidBody2D): untyped = self.getMaxContactsReported()
template `maxContactsReported=`*(self: RigidBody2D; value) = self.setMaxContactsReported(value)

template linearVelocity*(self: RigidBody2D): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: RigidBody2D; value) = self.setLinearVelocity(value)

template linearDampMode*(self: RigidBody2D): untyped = self.getLinearDampMode()
template `linearDampMode=`*(self: RigidBody2D; value) = self.setLinearDampMode(value)

template linearDamp*(self: RigidBody2D): untyped = self.getLinearDamp()
template `linearDamp=`*(self: RigidBody2D; value) = self.setLinearDamp(value)

template angularVelocity*(self: RigidBody2D): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: RigidBody2D; value) = self.setAngularVelocity(value)

template angularDampMode*(self: RigidBody2D): untyped = self.getAngularDampMode()
template `angularDampMode=`*(self: RigidBody2D; value) = self.setAngularDampMode(value)

template angularDamp*(self: RigidBody2D): untyped = self.getAngularDamp()
template `angularDamp=`*(self: RigidBody2D; value) = self.setAngularDamp(value)

template constantForce*(self: RigidBody2D): untyped = self.getConstantForce()
template `constantForce=`*(self: RigidBody2D; value) = self.setConstantForce(value)

template constantTorque*(self: RigidBody2D): untyped = self.getConstantTorque()
template `constantTorque=`*(self: RigidBody2D; value) = self.setConstantTorque(value)

const RigidBody2D_vmap =
  PhysicsBody2D.vmap.concat toTable {
    "integrateforces" : "_integrate_forces",
    }
template vmap*(_: typedesc[RigidBody2D]): Table[string, string] = RigidBody2D_vmap

proc bodyShapeEntered*(self: RigidBody2D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_entered")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyShapeExited*(self: RigidBody2D; bodyRid: Variant; body: Variant; bodyShapeIndex: Variant; localShapeIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_shape_exited")
  let args = [bodyRid, body, bodyShapeIndex, localShapeIndex]
  self.emitSignal(signalname, args)

proc bodyEntered*(self: RigidBody2D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_entered")
  let args = [body]
  self.emitSignal(signalname, args)

proc bodyExited*(self: RigidBody2D; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("body_exited")
  let args = [body]
  self.emitSignal(signalname, args)

proc sleepingStateChanged*(self: RigidBody2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sleeping_state_changed")
  self.emitSignal(signalname)