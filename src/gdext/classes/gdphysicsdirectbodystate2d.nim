{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getTotalGravity*(self: PhysicsDirectBodyState2D): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_total_gravity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getTotalLinearDamp*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_total_linear_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getTotalAngularDamp*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_total_angular_damp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCenterOfMass*(self: PhysicsDirectBodyState2D): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_center_of_mass", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getCenterOfMassLocal*(self: PhysicsDirectBodyState2D): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_center_of_mass_local", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getInverseMass*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_inverse_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getInverseInertia*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_inverse_inertia", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLinearVelocity*(self: PhysicsDirectBodyState2D; velocity: Vector2): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_linear_velocity", 743155724)
  methodbind.ptrcall(self, [getPtr velocity])

proc getLinearVelocity*(self: PhysicsDirectBodyState2D): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_linear_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setAngularVelocity*(self: PhysicsDirectBodyState2D; velocity: Float): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_angular_velocity", 373806689)
  methodbind.ptrcall(self, [getPtr velocity])

proc getAngularVelocity*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_angular_velocity", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTransform*(self: PhysicsDirectBodyState2D; transform: Transform2D): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform])

proc getTransform*(self: PhysicsDirectBodyState2D): Transform2D =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc getVelocityAtLocalPosition*(self: PhysicsDirectBodyState2D; localPosition: Vector2): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_velocity_at_local_position", 2656412154)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr localPosition], addr ret)
  (addr ret).decode_result(Vector2)

proc applyCentralImpulse*(self: PhysicsDirectBodyState2D; impulse: Vector2): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_central_impulse", 743155724)
  methodbind.ptrcall(self, [getPtr impulse])

proc applyTorqueImpulse*(self: PhysicsDirectBodyState2D; impulse: Float): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_torque_impulse", 373806689)
  methodbind.ptrcall(self, [getPtr impulse])

proc applyImpulse*(self: PhysicsDirectBodyState2D; impulse: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_impulse", 4288681949)
  methodbind.ptrcall(self, [getPtr impulse, getPtr position])

proc applyCentralForce*(self: PhysicsDirectBodyState2D; force: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_central_force", 3862383994)
  methodbind.ptrcall(self, [getPtr force])

proc applyForce*(self: PhysicsDirectBodyState2D; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_force", 4288681949)
  methodbind.ptrcall(self, [getPtr force, getPtr position])

proc applyTorque*(self: PhysicsDirectBodyState2D; torque: Float): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "apply_torque", 373806689)
  methodbind.ptrcall(self, [getPtr torque])

proc addConstantCentralForce*(self: PhysicsDirectBodyState2D; force: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "add_constant_central_force", 3862383994)
  methodbind.ptrcall(self, [getPtr force])

proc addConstantForce*(self: PhysicsDirectBodyState2D; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "add_constant_force", 4288681949)
  methodbind.ptrcall(self, [getPtr force, getPtr position])

proc addConstantTorque*(self: PhysicsDirectBodyState2D; torque: Float): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "add_constant_torque", 373806689)
  methodbind.ptrcall(self, [getPtr torque])

proc setConstantForce*(self: PhysicsDirectBodyState2D; force: Vector2): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_constant_force", 743155724)
  methodbind.ptrcall(self, [getPtr force])

proc getConstantForce*(self: PhysicsDirectBodyState2D): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_constant_force", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setConstantTorque*(self: PhysicsDirectBodyState2D; torque: Float): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_constant_torque", 373806689)
  methodbind.ptrcall(self, [getPtr torque])

proc getConstantTorque*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_constant_torque", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSleepState*(self: PhysicsDirectBodyState2D; enabled: bool): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "set_sleep_state", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isSleeping*(self: PhysicsDirectBodyState2D): bool =
  expandMethodBind(className PhysicsDirectBodyState2D, "is_sleeping", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getContactCount*(self: PhysicsDirectBodyState2D): int32 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getContactLocalPosition*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_local_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getContactLocalNormal*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_local_normal", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getContactLocalShape*(self: PhysicsDirectBodyState2D; contactIdx: int32): int32 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_local_shape", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(int32)

proc getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_local_velocity_at_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getContactCollider*(self: PhysicsDirectBodyState2D; contactIdx: int32): RID =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(RID)

proc getContactColliderPosition*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getContactColliderId*(self: PhysicsDirectBodyState2D; contactIdx: int32): uint64 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider_id", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(uint64)

proc getContactColliderObject*(self: PhysicsDirectBodyState2D; contactIdx: int32): Object =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider_object", 3332903315)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Object)

proc getContactColliderShape*(self: PhysicsDirectBodyState2D; contactIdx: int32): int32 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider_shape", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(int32)

proc getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_collider_velocity_at_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getContactImpulse*(self: PhysicsDirectBodyState2D; contactIdx: int32): Vector2 =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_contact_impulse", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr contactIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc getStep*(self: PhysicsDirectBodyState2D): Float =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc integrateForces*(self: PhysicsDirectBodyState2D): void =
  expandMethodBind(className PhysicsDirectBodyState2D, "integrate_forces", 3218959716)
  methodbind.ptrcall(self, [])

proc getSpaceState*(self: PhysicsDirectBodyState2D): PhysicsDirectSpaceState2D =
  expandMethodBind(className PhysicsDirectBodyState2D, "get_space_state", 2506717822)
  var ret: encoded PhysicsDirectSpaceState2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState2D)

template step*(self: PhysicsDirectBodyState2D): untyped = self.getStep()

template inverseMass*(self: PhysicsDirectBodyState2D): untyped = self.getInverseMass()

template inverseInertia*(self: PhysicsDirectBodyState2D): untyped = self.getInverseInertia()

template totalAngularDamp*(self: PhysicsDirectBodyState2D): untyped = self.getTotalAngularDamp()

template totalLinearDamp*(self: PhysicsDirectBodyState2D): untyped = self.getTotalLinearDamp()

template totalGravity*(self: PhysicsDirectBodyState2D): untyped = self.getTotalGravity()

template centerOfMass*(self: PhysicsDirectBodyState2D): untyped = self.getCenterOfMass()

template centerOfMassLocal*(self: PhysicsDirectBodyState2D): untyped = self.getCenterOfMassLocal()

template angularVelocity*(self: PhysicsDirectBodyState2D): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: PhysicsDirectBodyState2D; value) = self.setAngularVelocity(value)

template linearVelocity*(self: PhysicsDirectBodyState2D): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: PhysicsDirectBodyState2D; value) = self.setLinearVelocity(value)

template sleeping*(self: PhysicsDirectBodyState2D): untyped = self.isSleeping()
template `sleeping=`*(self: PhysicsDirectBodyState2D; value) = self.setSleepState(value)

template transform*(self: PhysicsDirectBodyState2D): untyped = self.getTransform()
template `transform=`*(self: PhysicsDirectBodyState2D; value) = self.setTransform(value)

const PhysicsDirectBodyState2D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsDirectBodyState2D]): Table[string, string] = PhysicsDirectBodyState2D_vmap