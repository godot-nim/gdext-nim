{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdphysicsdirectbodystate2d; export gdphysicsdirectbodystate2d

method getTotalGravity*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc getTotalGravity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalGravity().encode(r_ret)
template getTotalGravity_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getTotalGravity

method getTotalLinearDamp*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getTotalLinearDamp(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalLinearDamp().encode(r_ret)
template getTotalLinearDamp_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getTotalLinearDamp

method getTotalAngularDamp*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getTotalAngularDamp(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTotalAngularDamp().encode(r_ret)
template getTotalAngularDamp_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getTotalAngularDamp

method getCenterOfMass*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc getCenterOfMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getCenterOfMass().encode(r_ret)
template getCenterOfMass_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getCenterOfMass

method getCenterOfMassLocal*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc getCenterOfMassLocal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getCenterOfMassLocal().encode(r_ret)
template getCenterOfMassLocal_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getCenterOfMassLocal

method getInverseMass*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getInverseMass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getInverseMass().encode(r_ret)
template getInverseMass_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getInverseMass

method getInverseInertia*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getInverseInertia(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getInverseInertia().encode(r_ret)
template getInverseInertia_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getInverseInertia

method setLinearVelocity*(self: PhysicsDirectBodyState2DExtension; velocity: Vector2): void {.base.} = (discard)
proc setLinearVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setLinearVelocity(p_args[0].decode(Vector2))
template setLinearVelocity_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setLinearVelocity

method getLinearVelocity*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc getLinearVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getLinearVelocity().encode(r_ret)
template getLinearVelocity_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getLinearVelocity

method setAngularVelocity*(self: PhysicsDirectBodyState2DExtension; velocity: Float): void {.base.} = (discard)
proc setAngularVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setAngularVelocity(p_args[0].decode(Float))
template setAngularVelocity_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setAngularVelocity

method getAngularVelocity*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getAngularVelocity(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getAngularVelocity().encode(r_ret)
template getAngularVelocity_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getAngularVelocity

method setTransform*(self: PhysicsDirectBodyState2DExtension; transform: Transform2D): void {.base.} = (discard)
proc setTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setTransform(p_args[0].decode(Transform2D))
template setTransform_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setTransform

method getTransform*(self: PhysicsDirectBodyState2DExtension): Transform2D {.base.} = (discard)
proc getTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getTransform().encode(r_ret)
template getTransform_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getTransform

method getVelocityAtLocalPosition*(self: PhysicsDirectBodyState2DExtension; localPosition: Vector2): Vector2 {.base.} = (discard)
proc getVelocityAtLocalPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getVelocityAtLocalPosition(p_args[0].decode(Vector2)).encode(r_ret)
template getVelocityAtLocalPosition_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getVelocityAtLocalPosition

method applyCentralImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Vector2): void {.base.} = (discard)
proc applyCentralImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyCentralImpulse(p_args[0].decode(Vector2))
template applyCentralImpulse_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyCentralImpulse

method applyImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Vector2; position: Vector2): void {.base.} = (discard)
proc applyImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyImpulse(p_args[0].decode(Vector2), p_args[1].decode(Vector2))
template applyImpulse_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyImpulse

method applyTorqueImpulse*(self: PhysicsDirectBodyState2DExtension; impulse: Float): void {.base.} = (discard)
proc applyTorqueImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyTorqueImpulse(p_args[0].decode(Float))
template applyTorqueImpulse_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyTorqueImpulse

method applyCentralForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc applyCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyCentralForce(p_args[0].decode(Vector2))
template applyCentralForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyCentralForce

method applyForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2; position: Vector2): void {.base.} = (discard)
proc applyForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyForce(p_args[0].decode(Vector2), p_args[1].decode(Vector2))
template applyForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyForce

method applyTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc applyTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).applyTorque(p_args[0].decode(Float))
template applyTorque_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = applyTorque

method addConstantCentralForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc addConstantCentralForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantCentralForce(p_args[0].decode(Vector2))
template addConstantCentralForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = addConstantCentralForce

method addConstantForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2; position: Vector2): void {.base.} = (discard)
proc addConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantForce(p_args[0].decode(Vector2), p_args[1].decode(Vector2))
template addConstantForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = addConstantForce

method addConstantTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc addConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).addConstantTorque(p_args[0].decode(Float))
template addConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = addConstantTorque

method setConstantForce*(self: PhysicsDirectBodyState2DExtension; force: Vector2): void {.base.} = (discard)
proc setConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setConstantForce(p_args[0].decode(Vector2))
template setConstantForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setConstantForce

method getConstantForce*(self: PhysicsDirectBodyState2DExtension): Vector2 {.base.} = (discard)
proc getConstantForce(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getConstantForce().encode(r_ret)
template getConstantForce_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getConstantForce

method setConstantTorque*(self: PhysicsDirectBodyState2DExtension; torque: Float): void {.base.} = (discard)
proc setConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setConstantTorque(p_args[0].decode(Float))
template setConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setConstantTorque

method getConstantTorque*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getConstantTorque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getConstantTorque().encode(r_ret)
template getConstantTorque_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getConstantTorque

method setSleepState*(self: PhysicsDirectBodyState2DExtension; enabled: bool): void {.base.} = (discard)
proc setSleepState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).setSleepState(p_args[0].decode(bool))
template setSleepState_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = setSleepState

method isSleeping*(self: PhysicsDirectBodyState2DExtension): bool {.base.} = (discard)
proc isSleeping(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).isSleeping().encode(r_ret)
template isSleeping_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = isSleeping

method getContactCount*(self: PhysicsDirectBodyState2DExtension): int32 {.base.} = (discard)
proc getContactCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactCount().encode(r_ret)
template getContactCount_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactCount

method getContactLocalPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactLocalPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalPosition_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactLocalPosition

method getContactLocalNormal*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactLocalNormal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalNormal(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalNormal_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactLocalNormal

method getContactLocalShape*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc getContactLocalShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalShape(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalShape_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactLocalShape

method getContactLocalVelocityAtPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactLocalVelocityAtPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactLocalVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactLocalVelocityAtPosition_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactLocalVelocityAtPosition

method getContactCollider*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Rid {.base.} = (discard)
proc getContactCollider(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactCollider(p_args[0].decode(int32)).encode(r_ret)
template getContactCollider_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactCollider

method getContactColliderPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactColliderPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderPosition_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactColliderPosition

method getContactColliderId*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): uint64 {.base.} = (discard)
proc getContactColliderId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderId(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderId_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactColliderId

method getContactColliderObject*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Object {.base.} = (discard)
proc getContactColliderObject(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderObject(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderObject_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactColliderObject

method getContactColliderShape*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): int32 {.base.} = (discard)
proc getContactColliderShape(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderShape(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderShape_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactColliderShape

method getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactColliderVelocityAtPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactColliderVelocityAtPosition(p_args[0].decode(int32)).encode(r_ret)
template getContactColliderVelocityAtPosition_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactColliderVelocityAtPosition

method getContactImpulse*(self: PhysicsDirectBodyState2DExtension; contactIdx: int32): Vector2 {.base.} = (discard)
proc getContactImpulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getContactImpulse(p_args[0].decode(int32)).encode(r_ret)
template getContactImpulse_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getContactImpulse

method getStep*(self: PhysicsDirectBodyState2DExtension): Float {.base.} = (discard)
proc getStep(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getStep().encode(r_ret)
template getStep_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getStep

method integrateForces*(self: PhysicsDirectBodyState2DExtension): void {.base.} = (discard)
proc integrateForces(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).integrateForces()
template integrateForces_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = integrateForces

method getSpaceState*(self: PhysicsDirectBodyState2DExtension): PhysicsDirectSpaceState2D {.base.} = (discard)
proc getSpaceState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PhysicsDirectBodyState2DExtension](p_instance).getSpaceState().encode(r_ret)
template getSpaceState_bind*(_: typedesc[PhysicsDirectBodyState2DExtension]): ClassCallVirtual = getSpaceState

const PhysicsDirectBodyState2DExtension_vmap =
  PhysicsDirectBodyState2D.vmap.concat toTable {
    "gettotalgravity" : "_get_total_gravity",
    "gettotallineardamp" : "_get_total_linear_damp",
    "gettotalangulardamp" : "_get_total_angular_damp",
    "getcenterofmass" : "_get_center_of_mass",
    "getcenterofmasslocal" : "_get_center_of_mass_local",
    "getinversemass" : "_get_inverse_mass",
    "getinverseinertia" : "_get_inverse_inertia",
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
    "getcontactlocalshape" : "_get_contact_local_shape",
    "getcontactlocalvelocityatposition" : "_get_contact_local_velocity_at_position",
    "getcontactcollider" : "_get_contact_collider",
    "getcontactcolliderposition" : "_get_contact_collider_position",
    "getcontactcolliderid" : "_get_contact_collider_id",
    "getcontactcolliderobject" : "_get_contact_collider_object",
    "getcontactcollidershape" : "_get_contact_collider_shape",
    "getcontactcollidervelocityatposition" : "_get_contact_collider_velocity_at_position",
    "getcontactimpulse" : "_get_contact_impulse",
    "getstep" : "_get_step",
    "integrateforces" : "_integrate_forces",
    "getspacestate" : "_get_space_state",
    }
template vmap*(_: typedesc[PhysicsDirectBodyState2DExtension]): Table[string, string] = PhysicsDirectBodyState2DExtension_vmap