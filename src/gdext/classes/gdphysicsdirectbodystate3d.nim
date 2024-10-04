{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getTotalGravity*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_total_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getTotalLinearDamp*(self: PhysicsDirectBodyState3D): Float =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_total_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getTotalAngularDamp*(self: PhysicsDirectBodyState3D): Float =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_total_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getCenterOfMass*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_center_of_mass", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getCenterOfMassLocal*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_center_of_mass_local", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getPrincipalInertiaAxes*(self: PhysicsDirectBodyState3D): Basis =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_principal_inertia_axes", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc getInverseMass*(self: PhysicsDirectBodyState3D): Float =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_inverse_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getInverseInertia*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_inverse_inertia", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getInverseInertiaTensor*(self: PhysicsDirectBodyState3D): Basis =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_inverse_inertia_tensor", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc setLinearVelocity*(self: PhysicsDirectBodyState3D; velocity: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_linear_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: PhysicsDirectBodyState3D; velocity: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_angular_velocity", 3460891852)
  var `?param` = [getPtr velocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setTransform*(self: PhysicsDirectBodyState3D; transform: Transform3D): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_transform", 2952846383)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: PhysicsDirectBodyState3D): Transform3D =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc getVelocityAtLocalPosition*(self: PhysicsDirectBodyState3D; localPosition: Vector3): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_velocity_at_local_position", 192990374)
  var `?param` = [getPtr localPosition]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc applyCentralImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_central_impulse", 2007698547)
  var `?param` = [getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_impulse", 2754756483)
  var `?param` = [getPtr impulse, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorqueImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_torque_impulse", 3460891852)
  var `?param` = [getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyCentralForce*(self: PhysicsDirectBodyState3D; force: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_central_force", 2007698547)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyForce*(self: PhysicsDirectBodyState3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_force", 2754756483)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc applyTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "apply_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantCentralForce*(self: PhysicsDirectBodyState3D; force: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "add_constant_central_force", 2007698547)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantForce*(self: PhysicsDirectBodyState3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "add_constant_force", 2754756483)
  var `?param` = [getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc addConstantTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "add_constant_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc setConstantForce*(self: PhysicsDirectBodyState3D; force: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_constant_force", 3460891852)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantForce*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_constant_force", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setConstantTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_constant_torque", 3460891852)
  var `?param` = [getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstantTorque*(self: PhysicsDirectBodyState3D): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_constant_torque", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSleepState*(self: PhysicsDirectBodyState3D; enabled: bool): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "set_sleep_state", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSleeping*(self: PhysicsDirectBodyState3D): bool =
  expandMethodBind(className PhysicsDirectBodyState3D, "is_sleeping", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getContactCount*(self: PhysicsDirectBodyState3D): int32 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getContactLocalPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_position", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getContactLocalNormal*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_normal", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getContactImpulse*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_impulse", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getContactLocalShape*(self: PhysicsDirectBodyState3D; contactIdx: int32): int32 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_shape", 923996154)
  var `?param` = [getPtr contactIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_velocity_at_position", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getContactCollider*(self: PhysicsDirectBodyState3D; contactIdx: int32): Rid =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider", 495598643)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc getContactColliderPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_position", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getContactColliderId*(self: PhysicsDirectBodyState3D; contactIdx: int32): uint64 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_id", 923996154)
  var `?param` = [getPtr contactIdx]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getContactColliderObject*(self: PhysicsDirectBodyState3D; contactIdx: int32): Object =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_object", 3332903315)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Object
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Object)

proc getContactColliderShape*(self: PhysicsDirectBodyState3D; contactIdx: int32): int32 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_shape", 923996154)
  var `?param` = [getPtr contactIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_velocity_at_position", 711720468)
  var `?param` = [getPtr contactIdx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getStep*(self: PhysicsDirectBodyState3D): Float =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc integrateForces*(self: PhysicsDirectBodyState3D): void =
  expandMethodBind(className PhysicsDirectBodyState3D, "integrate_forces", 3218959716)
  methodbind.ptrcall(self, nil)

proc getSpaceState*(self: PhysicsDirectBodyState3D): PhysicsDirectSpaceState3D =
  expandMethodBind(className PhysicsDirectBodyState3D, "get_space_state", 2069328350)
  var ret: encoded PhysicsDirectSpaceState3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState3D)

template step*(self: PhysicsDirectBodyState3D): untyped = self.getStep()

template inverseMass*(self: PhysicsDirectBodyState3D): untyped = self.getInverseMass()

template totalAngularDamp*(self: PhysicsDirectBodyState3D): untyped = self.getTotalAngularDamp()

template totalLinearDamp*(self: PhysicsDirectBodyState3D): untyped = self.getTotalLinearDamp()

template inverseInertia*(self: PhysicsDirectBodyState3D): untyped = self.getInverseInertia()

template inverseInertiaTensor*(self: PhysicsDirectBodyState3D): untyped = self.getInverseInertiaTensor()

template totalGravity*(self: PhysicsDirectBodyState3D): untyped = self.getTotalGravity()

template centerOfMass*(self: PhysicsDirectBodyState3D): untyped = self.getCenterOfMass()

template centerOfMassLocal*(self: PhysicsDirectBodyState3D): untyped = self.getCenterOfMassLocal()

template principalInertiaAxes*(self: PhysicsDirectBodyState3D): untyped = self.getPrincipalInertiaAxes()

template angularVelocity*(self: PhysicsDirectBodyState3D): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: PhysicsDirectBodyState3D; value) = self.setAngularVelocity(value)

template linearVelocity*(self: PhysicsDirectBodyState3D): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: PhysicsDirectBodyState3D; value) = self.setLinearVelocity(value)

template sleeping*(self: PhysicsDirectBodyState3D): untyped = self.isSleeping()
template `sleeping=`*(self: PhysicsDirectBodyState3D; value) = self.setSleepState(value)

template transform*(self: PhysicsDirectBodyState3D): untyped = self.getTransform()
template `transform=`*(self: PhysicsDirectBodyState3D; value) = self.setTransform(value)

const PhysicsDirectBodyState3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsDirectBodyState3D]): Table[string, string] = PhysicsDirectBodyState3D_vmap