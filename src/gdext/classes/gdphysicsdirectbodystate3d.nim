{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsDirectBodyState3D, Object)

proc getTotalGravity*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_total_gravity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getTotalLinearDamp*(self: PhysicsDirectBodyState3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_total_linear_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getTotalAngularDamp*(self: PhysicsDirectBodyState3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_total_angular_damp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCenterOfMass*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_center_of_mass", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getCenterOfMassLocal*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_center_of_mass_local", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getPrincipalInertiaAxes*(self: PhysicsDirectBodyState3D): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_principal_inertia_axes", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc getInverseMass*(self: PhysicsDirectBodyState3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_inverse_mass", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getInverseInertia*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_inverse_inertia", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getInverseInertiaTensor*(self: PhysicsDirectBodyState3D): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_inverse_inertia_tensor", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc setLinearVelocity*(self: PhysicsDirectBodyState3D; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getLinearVelocity*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAngularVelocity*(self: PhysicsDirectBodyState3D; velocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr velocity], void)

proc getAngularVelocity*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTransform*(self: PhysicsDirectBodyState3D; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getTransform*(self: PhysicsDirectBodyState3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc getVelocityAtLocalPosition*(self: PhysicsDirectBodyState3D; localPosition: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_velocity_at_local_position", 192990374)
  methodbind.ptrcall(self, [getPtr localPosition], Vector3)

proc applyCentralImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_central_impulse", 2007698547)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_impulse", 2754756483)
  methodbind.ptrcall(self, [getPtr impulse, getPtr position], void)

proc applyTorqueImpulse*(self: PhysicsDirectBodyState3D; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_torque_impulse", 3460891852)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyCentralForce*(self: PhysicsDirectBodyState3D; force: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_central_force", 2007698547)
  methodbind.ptrcall(self, [getPtr force], void)

proc applyForce*(self: PhysicsDirectBodyState3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_force", 2754756483)
  methodbind.ptrcall(self, [getPtr force, getPtr position], void)

proc applyTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "apply_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc addConstantCentralForce*(self: PhysicsDirectBodyState3D; force: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "add_constant_central_force", 2007698547)
  methodbind.ptrcall(self, [getPtr force], void)

proc addConstantForce*(self: PhysicsDirectBodyState3D; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "add_constant_force", 2754756483)
  methodbind.ptrcall(self, [getPtr force, getPtr position], void)

proc addConstantTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "add_constant_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc setConstantForce*(self: PhysicsDirectBodyState3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_constant_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc getConstantForce*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_constant_force", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setConstantTorque*(self: PhysicsDirectBodyState3D; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_constant_torque", 3460891852)
  methodbind.ptrcall(self, [getPtr torque], void)

proc getConstantTorque*(self: PhysicsDirectBodyState3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_constant_torque", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSleepState*(self: PhysicsDirectBodyState3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_sleep_state", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSleeping*(self: PhysicsDirectBodyState3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "is_sleeping", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollisionLayer*(self: PhysicsDirectBodyState3D; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getCollisionLayer*(self: PhysicsDirectBodyState3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMask*(self: PhysicsDirectBodyState3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: PhysicsDirectBodyState3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getContactCount*(self: PhysicsDirectBodyState3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getContactLocalPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_position", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getContactLocalNormal*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_normal", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getContactImpulse*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_impulse", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getContactLocalShape*(self: PhysicsDirectBodyState3D; contactIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_shape", 923996154)
  methodbind.ptrcall(self, [getPtr contactIdx], int32)

proc getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_local_velocity_at_position", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getContactCollider*(self: PhysicsDirectBodyState3D; contactIdx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider", 495598643)
  methodbind.ptrcall(self, [getPtr contactIdx], RID)

proc getContactColliderPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_position", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getContactColliderId*(self: PhysicsDirectBodyState3D; contactIdx: int32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_id", 923996154)
  methodbind.ptrcall(self, [getPtr contactIdx], uint64)

proc getContactColliderObject*(self: PhysicsDirectBodyState3D; contactIdx: int32): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_object", 3332903315)
  methodbind.ptrcall(self, [getPtr contactIdx], Object)

proc getContactColliderShape*(self: PhysicsDirectBodyState3D; contactIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_shape", 923996154)
  methodbind.ptrcall(self, [getPtr contactIdx], int32)

proc getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState3D; contactIdx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_contact_collider_velocity_at_position", 711720468)
  methodbind.ptrcall(self, [getPtr contactIdx], Vector3)

proc getStep*(self: PhysicsDirectBodyState3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc integrateForces*(self: PhysicsDirectBodyState3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "integrate_forces", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSpaceState*(self: PhysicsDirectBodyState3D): PhysicsDirectSpaceState3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectBodyState3D, "get_space_state", 2069328350)
  methodbind.ptrcall(self, [], PhysicsDirectSpaceState3D)

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

template collisionLayer*(self: PhysicsDirectBodyState3D): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: PhysicsDirectBodyState3D; value) = self.setCollisionLayer(value)

template collisionMask*(self: PhysicsDirectBodyState3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsDirectBodyState3D; value) = self.setCollisionMask(value)

template transform*(self: PhysicsDirectBodyState3D): untyped = self.getTransform()
template `transform=`*(self: PhysicsDirectBodyState3D; value) = self.setTransform(value)
