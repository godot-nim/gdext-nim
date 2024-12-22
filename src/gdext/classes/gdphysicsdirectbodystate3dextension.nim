{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsdirectbodystate3d; export gdphysicsdirectbodystate3d

method getTotalGravity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getTotalGravity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalGravity().encode(r_ret)
template getTotalGravity_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getTotalGravity

method getTotalLinearDamp*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc getTotalLinearDamp(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalLinearDamp().encode(r_ret)
template getTotalLinearDamp_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getTotalLinearDamp

method getTotalAngularDamp*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc getTotalAngularDamp(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTotalAngularDamp().encode(r_ret)
template getTotalAngularDamp_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getTotalAngularDamp

method getCenterOfMass*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getCenterOfMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getCenterOfMass().encode(r_ret)
template getCenterOfMass_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getCenterOfMass

method getCenterOfMassLocal*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getCenterOfMassLocal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getCenterOfMassLocal().encode(r_ret)
template getCenterOfMassLocal_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getCenterOfMassLocal

method getPrincipalInertiaAxes*(self: PhysicsDirectBodyState3DExtension): Basis {.base.} = (discard)
proc getPrincipalInertiaAxes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getPrincipalInertiaAxes().encode(r_ret)
template getPrincipalInertiaAxes_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getPrincipalInertiaAxes

method getInverseMass*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc getInverseMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseMass().encode(r_ret)
template getInverseMass_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getInverseMass

method getInverseInertia*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getInverseInertia(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseInertia().encode(r_ret)
template getInverseInertia_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getInverseInertia

method getInverseInertiaTensor*(self: PhysicsDirectBodyState3DExtension): Basis {.base.} = (discard)
proc getInverseInertiaTensor(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getInverseInertiaTensor().encode(r_ret)
template getInverseInertiaTensor_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getInverseInertiaTensor

method setLinearVelocity*(self: PhysicsDirectBodyState3DExtension; velocity: Vector3): void {.base.} = (discard)
proc setLinearVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setLinearVelocity(p_args[0].decode(Vector3))
template setLinearVelocity_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setLinearVelocity

method getLinearVelocity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getLinearVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getLinearVelocity().encode(r_ret)
template getLinearVelocity_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getLinearVelocity

method setAngularVelocity*(self: PhysicsDirectBodyState3DExtension; velocity: Vector3): void {.base.} = (discard)
proc setAngularVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setAngularVelocity(p_args[0].decode(Vector3))
template setAngularVelocity_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setAngularVelocity

method getAngularVelocity*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getAngularVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getAngularVelocity().encode(r_ret)
template getAngularVelocity_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getAngularVelocity

method setTransform*(self: PhysicsDirectBodyState3DExtension; transform: Transform3D): void {.base.} = (discard)
proc setTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setTransform(p_args[0].decode(Transform3D))
template setTransform_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setTransform

method getTransform*(self: PhysicsDirectBodyState3DExtension): Transform3D {.base.} = (discard)
proc getTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getTransform().encode(r_ret)
template getTransform_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getTransform

method getVelocityAtLocalPosition*(self: PhysicsDirectBodyState3DExtension; localPosition: Vector3): Vector3 {.base.} = (discard)
proc getVelocityAtLocalPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getVelocityAtLocalPosition(p_args[0].decode(Vector3)).encode(r_ret)
template getVelocityAtLocalPosition_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getVelocityAtLocalPosition

method applyCentralImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3): void {.base.} = (discard)
proc applyCentralImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyCentralImpulse(p_args[0].decode(Vector3))
template applyCentralImpulse_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyCentralImpulse

method applyImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3; position: Vector3): void {.base.} = (discard)
proc applyImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyImpulse(p_args[0].decode(Vector3), p_args[1].decode(Vector3))
template applyImpulse_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyImpulse

method applyTorqueImpulse*(self: PhysicsDirectBodyState3DExtension; impulse: Vector3): void {.base.} = (discard)
proc applyTorqueImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyTorqueImpulse(p_args[0].decode(Vector3))
template applyTorqueImpulse_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyTorqueImpulse

method applyCentralForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc applyCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyCentralForce(p_args[0].decode(Vector3))
template applyCentralForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyCentralForce

method applyForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3; position: Vector3): void {.base.} = (discard)
proc applyForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyForce(p_args[0].decode(Vector3), p_args[1].decode(Vector3))
template applyForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyForce

method applyTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc applyTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).applyTorque(p_args[0].decode(Vector3))
template applyTorque_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = applyTorque

method addConstantCentralForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc addConstantCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantCentralForce(p_args[0].decode(Vector3))
template addConstantCentralForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = addConstantCentralForce

method addConstantForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3; position: Vector3): void {.base.} = (discard)
proc addConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantForce(p_args[0].decode(Vector3), p_args[1].decode(Vector3))
template addConstantForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = addConstantForce

method addConstantTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc addConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).addConstantTorque(p_args[0].decode(Vector3))
template addConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = addConstantTorque

method setConstantForce*(self: PhysicsDirectBodyState3DExtension; force: Vector3): void {.base.} = (discard)
proc setConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setConstantForce(p_args[0].decode(Vector3))
template setConstantForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setConstantForce

method getConstantForce*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getConstantForce().encode(r_ret)
template getConstantForce_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getConstantForce

method setConstantTorque*(self: PhysicsDirectBodyState3DExtension; torque: Vector3): void {.base.} = (discard)
proc setConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setConstantTorque(p_args[0].decode(Vector3))
template setConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setConstantTorque

method getConstantTorque*(self: PhysicsDirectBodyState3DExtension): Vector3 {.base.} = (discard)
proc getConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getConstantTorque().encode(r_ret)
template getConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getConstantTorque

method setSleepState*(self: PhysicsDirectBodyState3DExtension; enabled: bool): void {.base.} = (discard)
proc setSleepState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).setSleepState(p_args[0].decode(bool))
template setSleepState_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = setSleepState

method isSleeping*(self: PhysicsDirectBodyState3DExtension): bool {.base.} = (discard)
proc isSleeping(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).isSleeping().encode(r_ret)
template isSleeping_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = isSleeping

method getContactCount*(self: PhysicsDirectBodyState3DExtension): int32 {.base.} = (discard)
proc getContactCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactCount().encode(r_ret)
template getContactCount_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactCount

method getContactLocalPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactLocalPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalPosition_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactLocalPosition

method getContactLocalNormal*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactLocalNormal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalNormal(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalNormal_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactLocalNormal

method getContactImpulse*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactImpulse(p_args[0].decode(int32)).encode(r_ret)
template getContactImpulse_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactImpulse

method getContactLocalShape*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc getContactLocalShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalShape(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalShape_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactLocalShape

method getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactLocalVelocityAtPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactLocalVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalVelocityAtPosition_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactLocalVelocityAtPosition

method getContactCollider*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): RID {.base.} = (discard)
proc getContactCollider(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactCollider(p_args[0].decode(int32)).encode(r_ret)
template getContactCollider_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactCollider

method getContactColliderPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactColliderPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderPosition_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactColliderPosition

method getContactColliderId*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): uint64 {.base.} = (discard)
proc getContactColliderId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderId(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderId_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactColliderId

method getContactColliderObject*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Object {.base.} = (discard)
proc getContactColliderObject(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderObject(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderObject_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactColliderObject

method getContactColliderShape*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc getContactColliderShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderShape(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderShape_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactColliderShape

method getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState3DExtension; contactIdx: int32): Vector3 {.base.} = (discard)
proc getContactColliderVelocityAtPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getContactColliderVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderVelocityAtPosition_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getContactColliderVelocityAtPosition

method getStep*(self: PhysicsDirectBodyState3DExtension): Float {.base.} = (discard)
proc getStep(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getStep().encode(r_ret)
template getStep_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getStep

method integrateForces*(self: PhysicsDirectBodyState3DExtension): void {.base.} = (discard)
proc integrateForces(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).integrateForces()
template integrateForces_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = integrateForces

method getSpaceState*(self: PhysicsDirectBodyState3DExtension): PhysicsDirectSpaceState3D {.base.} = (discard)
proc getSpaceState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState3DExtension](p_instance).getSpaceState().encode(r_ret)
template getSpaceState_bind*(_: typedesc[PhysicsDirectBodyState3DExtension]): ClassCallVirtual = getSpaceState

const PhysicsDirectBodyState3DExtension_vmap =
  PhysicsDirectBodyState3D.vmap.concat toTable {
    "gettotalgravity" : "_get_total_gravity",
    "gettotallineardamp" : "_get_total_linear_damp",
    "gettotalangulardamp" : "_get_total_angular_damp",
    "getcenterofmass" : "_get_center_of_mass",
    "getcenterofmasslocal" : "_get_center_of_mass_local",
    "getprincipalinertiaaxes" : "_get_principal_inertia_axes",
    "getinversemass" : "_get_inverse_mass",
    "getinverseinertia" : "_get_inverse_inertia",
    "getinverseinertiatensor" : "_get_inverse_inertia_tensor",
    "setlinearvelocity" : "_set_linear_velocity",
    "getlinearvelocity" : "_get_linear_velocity",
    "setangularvelocity" : "_set_angular_velocity",
    "getangularvelocity" : "_get_angular_velocity",
    "settransform" : "_set_transform",
    "gettransform" : "_get_transform",
    "getvelocityatlocalposition" : "_get_velocity_at_local_position",
    "applycentralimpulse" : "_apply_central_impulse",
    "applyimpulse" : "_apply_impulse",
    "applytorqueimpulse" : "_apply_torque_impulse",
    "applycentralforce" : "_apply_central_force",
    "applyforce" : "_apply_force",
    "applytorque" : "_apply_torque",
    "addconstantcentralforce" : "_add_constant_central_force",
    "addconstantforce" : "_add_constant_force",
    "addconstanttorque" : "_add_constant_torque",
    "setconstantforce" : "_set_constant_force",
    "getconstantforce" : "_get_constant_force",
    "setconstanttorque" : "_set_constant_torque",
    "getconstanttorque" : "_get_constant_torque",
    "setsleepstate" : "_set_sleep_state",
    "issleeping" : "_is_sleeping",
    "getcontactcount" : "_get_contact_count",
    "getcontactlocalposition" : "_get_contact_local_position",
    "getcontactlocalnormal" : "_get_contact_local_normal",
    "getcontactimpulse" : "_get_contact_impulse",
    "getcontactlocalshape" : "_get_contact_local_shape",
    "getcontactlocalvelocityatposition" : "_get_contact_local_velocity_at_position",
    "getcontactcollider" : "_get_contact_collider",
    "getcontactcolliderposition" : "_get_contact_collider_position",
    "getcontactcolliderid" : "_get_contact_collider_id",
    "getcontactcolliderobject" : "_get_contact_collider_object",
    "getcontactcollidershape" : "_get_contact_collider_shape",
    "getcontactcollidervelocityatposition" : "_get_contact_collider_velocity_at_position",
    "getstep" : "_get_step",
    "integrateforces" : "_integrate_forces",
    "getspacestate" : "_get_space_state",
    }
template vmap*(_: typedesc[PhysicsDirectBodyState3DExtension]): Table[string, string] = PhysicsDirectBodyState3DExtension_vmap