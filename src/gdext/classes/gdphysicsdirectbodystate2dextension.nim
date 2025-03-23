{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsdirectbodystate2d; export gdphysicsdirectbodystate2d

method getTotalGravity*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getTotalGravity*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_total_gravity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalGravity().encode(r_ret)

method getTotalLinearDamp*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getTotalLinearDamp*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_total_linear_damp"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalLinearDamp().encode(r_ret)

method getTotalAngularDamp*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getTotalAngularDamp*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_total_angular_damp"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalAngularDamp().encode(r_ret)

method getCenterOfMass*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getCenterOfMass*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_center_of_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getCenterOfMass().encode(r_ret)

method getCenterOfMassLocal*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getCenterOfMassLocal*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_center_of_mass_local"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getCenterOfMassLocal().encode(r_ret)

method getInverseMass*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getInverseMass*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_inverse_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getInverseMass().encode(r_ret)

method getInverseInertia*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getInverseInertia*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_inverse_inertia"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getInverseInertia().encode(r_ret)

method setLinearVelocity*(self: PhysicsDirectBodyState2DExtension; velocity: Vector2): void {.base.} = (discard)
proc registerVirtual_setLinearVelocity*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_linear_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setLinearVelocity(p_args[0].decode(Vector2))

method getLinearVelocity*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getLinearVelocity*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_linear_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getLinearVelocity().encode(r_ret)

method setAngularVelocity*(self: PhysicsDirectBodyState2DExtension; velocity: Float): void {.base.} = (discard)
proc registerVirtual_setAngularVelocity*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_angular_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setAngularVelocity(p_args[0].decode(Float))

method getAngularVelocity*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getAngularVelocity*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_angular_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getAngularVelocity().encode(r_ret)

method setTransform*(self: PhysicsDirectBodyState2DExtension; transform: Transform2D): void {.base.} = (discard)
proc registerVirtual_setTransform*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setTransform(p_args[0].decode(Transform2D))

method getTransform*(self: PhysicsDirectBodyState2DExtension): Transform2D {.base.} = (discard)
proc registerVirtual_getTransform*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTransform().encode(r_ret)

method getVelocityAtLocalPosition*(self: PhysicsDirectBodyState2DExtension; localPosition: Vector2): Vector2 {.base.} = (discard)
proc registerVirtual_getVelocityAtLocalPosition*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_velocity_at_local_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getVelocityAtLocalPosition(p_args[0].decode(Vector2)).encode(r_ret)

method applyCentralImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Vector2): void {.base.} = (discard)
proc registerVirtual_applyCentralImpulse*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_central_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyCentralImpulse(p_args[0].decode(Vector2))

method applyImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_applyImpulse*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyImpulse(p_args[0].decode(Vector2), p_args[1].decode(Vector2))

method applyTorqueImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Float): void {.base.} = (discard)
proc registerVirtual_applyTorqueImpulse*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_torque_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyTorqueImpulse(p_args[0].decode(Float))

method applyCentralForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc registerVirtual_applyCentralForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyCentralForce(p_args[0].decode(Vector2))

method applyForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_applyForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyForce(p_args[0].decode(Vector2), p_args[1].decode(Vector2))

method applyTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc registerVirtual_applyTorque*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_apply_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyTorque(p_args[0].decode(Float))

method addConstantCentralForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc registerVirtual_addConstantCentralForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_add_constant_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantCentralForce(p_args[0].decode(Vector2))

method addConstantForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_addConstantForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_add_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantForce(p_args[0].decode(Vector2), p_args[1].decode(Vector2))

method addConstantTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc registerVirtual_addConstantTorque*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_add_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantTorque(p_args[0].decode(Float))

method setConstantForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc registerVirtual_setConstantForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setConstantForce(p_args[0].decode(Vector2))

method getConstantForce*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getConstantForce*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getConstantForce().encode(r_ret)

method setConstantTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc registerVirtual_setConstantTorque*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setConstantTorque(p_args[0].decode(Float))

method getConstantTorque*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getConstantTorque*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getConstantTorque().encode(r_ret)

method setSleepState*(self: PhysicsDirectBodyState2DExtension; enabled: bool): void {.base.} = (discard)
proc registerVirtual_setSleepState*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_sleep_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setSleepState(p_args[0].decode(bool))

method isSleeping*(self: PhysicsDirectBodyState2DExtension): bool {.base.} = (discard)
proc registerVirtual_isSleeping*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_sleeping"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).isSleeping().encode(r_ret)

method getContactCount*(self: PhysicsDirectBodyState2DExtension): int32 {.base.} = (discard)
proc registerVirtual_getContactCount*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactCount().encode(r_ret)

method getContactLocalPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactLocalPosition*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_local_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalNormal*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactLocalNormal*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_local_normal"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalNormal(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalShape*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc registerVirtual_getContactLocalShape*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_local_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalShape(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactLocalVelocityAtPosition*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_local_velocity_at_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactCollider*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): RID {.base.} = (discard)
proc registerVirtual_getContactCollider*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactCollider(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactColliderPosition*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderId*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): uint64 {.base.} = (discard)
proc registerVirtual_getContactColliderId*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderId(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderObject*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Object {.base.} = (discard)
proc registerVirtual_getContactColliderObject*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider_object"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderObject(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderShape*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc registerVirtual_getContactColliderShape*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderShape(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactColliderVelocityAtPosition*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_collider_velocity_at_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactImpulse*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc registerVirtual_getContactImpulse*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_contact_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactImpulse(p_args[0].decode(int32)).encode(r_ret)

method getStep*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc registerVirtual_getStep*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_step"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getStep().encode(r_ret)

method integrateForces*(self: PhysicsDirectBodyState2DExtension): void {.base.} = (discard)
proc registerVirtual_integrateForces*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_integrate_forces"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).integrateForces()

method getSpaceState*(self: PhysicsDirectBodyState2DExtension): PhysicsDirectSpaceState2D {.base.} = (discard)
proc registerVirtual_getSpaceState*[T: PhysicsDirectBodyState2DExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_space_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getSpaceState().encode(r_ret)