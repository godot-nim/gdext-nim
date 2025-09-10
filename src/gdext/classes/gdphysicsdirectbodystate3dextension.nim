{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsdirectbodystate3d; export gdphysicsdirectbodystate3d
export PhysicsDirectBodyState3DExtension

method getTotalGravity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getTotalGravity*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_total_gravity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalGravity().encode(r_ret)

method getTotalLinearDamp*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc registerVirtual_getTotalLinearDamp*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_total_linear_damp"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalLinearDamp().encode(r_ret)

method getTotalAngularDamp*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc registerVirtual_getTotalAngularDamp*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_total_angular_damp"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalAngularDamp().encode(r_ret)

method getCenterOfMass*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getCenterOfMass*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_center_of_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getCenterOfMass().encode(r_ret)

method getCenterOfMassLocal*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getCenterOfMassLocal*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_center_of_mass_local"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getCenterOfMassLocal().encode(r_ret)

method getPrincipalInertiaAxes*(self: PhysicsDirectBodyState3DExtension): Basis {.base.} = (discard)
proc registerVirtual_getPrincipalInertiaAxes*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_principal_inertia_axes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getPrincipalInertiaAxes().encode(r_ret)

method getInverseMass*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc registerVirtual_getInverseMass*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_inverse_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseMass().encode(r_ret)

method getInverseInertia*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getInverseInertia*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_inverse_inertia"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseInertia().encode(r_ret)

method getInverseInertiaTensor*(self: PhysicsDirectBodyState3DExtension): Basis {.base.} = (discard)
proc registerVirtual_getInverseInertiaTensor*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_inverse_inertia_tensor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseInertiaTensor().encode(r_ret)

method setLinearVelocity*(self: PhysicsDirectBodyState3DExtension; velocity: Vector3): void {.base.} = (discard)
proc registerVirtual_setLinearVelocity*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_linear_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setLinearVelocity(p_args[0].decode(Vector3))

method getLinearVelocity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getLinearVelocity*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_linear_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getLinearVelocity().encode(r_ret)

method setAngularVelocity*(self: PhysicsDirectBodyState3DExtension; velocity: Vector3): void {.base.} = (discard)
proc registerVirtual_setAngularVelocity*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_angular_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setAngularVelocity(p_args[0].decode(Vector3))

method getAngularVelocity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getAngularVelocity*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_angular_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getAngularVelocity().encode(r_ret)

method setTransform*(self: PhysicsDirectBodyState3DExtension; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_setTransform*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setTransform(p_args[0].decode(Transform3D))

method getTransform*(self: PhysicsDirectBodyState3DExtension): Transform3D {.base.} = (discard)
proc registerVirtual_getTransform*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTransform().encode(r_ret)

method getVelocityAtLocalPosition*(self: PhysicsDirectBodyState3DExtension; localPosition: Vector3): Vector3 {.base.} = (discard)
proc registerVirtual_getVelocityAtLocalPosition*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_velocity_at_local_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getVelocityAtLocalPosition(p_args[0].decode(Vector3)).encode(r_ret)

method applyCentralImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_applyCentralImpulse*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_central_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyCentralImpulse(p_args[0].decode(Vector3))

method applyImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_applyImpulse*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyImpulse(p_args[0].decode(Vector3), p_args[1].decode(Vector3))

method applyTorqueImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_applyTorqueImpulse*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_torque_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyTorqueImpulse(p_args[0].decode(Vector3))

method applyCentralForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc registerVirtual_applyCentralForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyCentralForce(p_args[0].decode(Vector3))

method applyForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_applyForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyForce(p_args[0].decode(Vector3), p_args[1].decode(Vector3))

method applyTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_applyTorque*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_apply_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyTorque(p_args[0].decode(Vector3))

method addConstantCentralForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc registerVirtual_addConstantCentralForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_constant_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantCentralForce(p_args[0].decode(Vector3))

method addConstantForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_addConstantForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantForce(p_args[0].decode(Vector3), p_args[1].decode(Vector3))

method addConstantTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_addConstantTorque*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantTorque(p_args[0].decode(Vector3))

method setConstantForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc registerVirtual_setConstantForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setConstantForce(p_args[0].decode(Vector3))

method getConstantForce*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getConstantForce*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getConstantForce().encode(r_ret)

method setConstantTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_setConstantTorque*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setConstantTorque(p_args[0].decode(Vector3))

method getConstantTorque*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc registerVirtual_getConstantTorque*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getConstantTorque().encode(r_ret)

method setSleepState*(self: PhysicsDirectBodyState3DExtension; enabled: bool): void {.base.} = (discard)
proc registerVirtual_setSleepState*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_sleep_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setSleepState(p_args[0].decode(bool))

method isSleeping*(self: PhysicsDirectBodyState3DExtension): bool {.base.} = (discard)
proc registerVirtual_isSleeping*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_sleeping"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).isSleeping().encode(r_ret)

method getContactCount*(self: PhysicsDirectBodyState3DExtension): int32 {.base.} = (discard)
proc registerVirtual_getContactCount*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactCount().encode(r_ret)

method getContactLocalPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactLocalPosition*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_local_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalNormal*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactLocalNormal*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_local_normal"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalNormal(p_args[0].decode(int32)).encode(r_ret)

method getContactImpulse*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactImpulse*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactImpulse(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalShape*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc registerVirtual_getContactLocalShape*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_local_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalShape(p_args[0].decode(int32)).encode(r_ret)

method getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactLocalVelocityAtPosition*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_local_velocity_at_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactCollider*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): RID {.base.} = (discard)
proc registerVirtual_getContactCollider*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactCollider(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactColliderPosition*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderPosition(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderId*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): uint64 {.base.} = (discard)
proc registerVirtual_getContactColliderId*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderId(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderObject*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Object {.base.} = (discard)
proc registerVirtual_getContactColliderObject*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider_object"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderObject(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderShape*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc registerVirtual_getContactColliderShape*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderShape(p_args[0].decode(int32)).encode(r_ret)

method getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc registerVirtual_getContactColliderVelocityAtPosition*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contact_collider_velocity_at_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)

method getStep*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc registerVirtual_getStep*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_step"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getStep().encode(r_ret)

method integrateForces*(self: PhysicsDirectBodyState3DExtension): void {.base.} = (discard)
proc registerVirtual_integrateForces*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_integrate_forces"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).integrateForces()

method getSpaceState*(self: PhysicsDirectBodyState3DExtension): PhysicsDirectSpaceState3D {.base.} = (discard)
proc registerVirtual_getSpaceState*[T: PhysicsDirectBodyState3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_space_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getSpaceState().encode(r_ret)
