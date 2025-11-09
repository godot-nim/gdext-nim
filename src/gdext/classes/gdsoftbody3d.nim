{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmeshinstance3d; export gdmeshinstance3d

expandOnClassImported(SoftBody3D, MeshInstance3D)

proc getPhysicsRid*(self: SoftBody3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_physics_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setCollisionMask*(self: SoftBody3D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: SoftBody3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionLayer*(self: SoftBody3D; collisionLayer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionLayer], void)

proc getCollisionLayer*(self: SoftBody3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: SoftBody3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: SoftBody3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionLayerValue*(self: SoftBody3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionLayerValue*(self: SoftBody3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_collision_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setParentCollisionIgnore*(self: SoftBody3D; parentCollisionIgnore: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_parent_collision_ignore", 1348162250)
  methodbind.ptrcall(self, [getPtr parentCollisionIgnore], void)

proc getParentCollisionIgnore*(self: SoftBody3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_parent_collision_ignore", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setDisableMode*(self: SoftBody3D; mode: SoftBody3D_DisableMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_disable_mode", 1104158384)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDisableMode*(self: SoftBody3D): SoftBody3D_DisableMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_disable_mode", 4135042476)
  methodbind.ptrcall(self, [], SoftBody3D_DisableMode)

proc getCollisionExceptions*(self: SoftBody3D): TypedArray[PhysicsBody3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_collision_exceptions", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[PhysicsBody3D])

proc addCollisionExceptionWith*(self: SoftBody3D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "add_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)

proc removeCollisionExceptionWith*(self: SoftBody3D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "remove_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)

proc setSimulationPrecision*(self: SoftBody3D; simulationPrecision: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_simulation_precision", 1286410249)
  methodbind.ptrcall(self, [getPtr simulationPrecision], void)

proc getSimulationPrecision*(self: SoftBody3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_simulation_precision", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setTotalMass*(self: SoftBody3D; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_total_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass], void)

proc getTotalMass*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_total_mass", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setLinearStiffness*(self: SoftBody3D; linearStiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_linear_stiffness", 373806689)
  methodbind.ptrcall(self, [getPtr linearStiffness], void)

proc getLinearStiffness*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_linear_stiffness", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setShrinkingFactor*(self: SoftBody3D; shrinkingFactor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_shrinking_factor", 373806689)
  methodbind.ptrcall(self, [getPtr shrinkingFactor], void)

proc getShrinkingFactor*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_shrinking_factor", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setPressureCoefficient*(self: SoftBody3D; pressureCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_pressure_coefficient", 373806689)
  methodbind.ptrcall(self, [getPtr pressureCoefficient], void)

proc getPressureCoefficient*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_pressure_coefficient", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setDampingCoefficient*(self: SoftBody3D; dampingCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_damping_coefficient", 373806689)
  methodbind.ptrcall(self, [getPtr dampingCoefficient], void)

proc getDampingCoefficient*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_damping_coefficient", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setDragCoefficient*(self: SoftBody3D; dragCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_drag_coefficient", 373806689)
  methodbind.ptrcall(self, [getPtr dragCoefficient], void)

proc getDragCoefficient*(self: SoftBody3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_drag_coefficient", 191475506)
  methodbind.ptrcall(self, [], Float)

proc getPointTransform*(self: SoftBody3D; pointIndex: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "get_point_transform", 871989493)
  methodbind.ptrcall(self, [getPtr pointIndex], Vector3)

proc applyImpulse*(self: SoftBody3D; pointIndex: int32; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "apply_impulse", 1530502735)
  methodbind.ptrcall(self, [getPtr pointIndex, getPtr impulse], void)

proc applyForce*(self: SoftBody3D; pointIndex: int32; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "apply_force", 1530502735)
  methodbind.ptrcall(self, [getPtr pointIndex, getPtr force], void)

proc applyCentralImpulse*(self: SoftBody3D; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "apply_central_impulse", 3460891852)
  methodbind.ptrcall(self, [getPtr impulse], void)

proc applyCentralForce*(self: SoftBody3D; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "apply_central_force", 3460891852)
  methodbind.ptrcall(self, [getPtr force], void)

proc setPointPinned*(self: SoftBody3D; pointIndex: int32; pinned: bool; attachmentPath: NodePath = newNodePath(); insertAt: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_point_pinned", 528784402)
  methodbind.ptrcall(self, [getPtr pointIndex, getPtr pinned, getPtr attachmentPath, getPtr insertAt], void)

proc isPointPinned*(self: SoftBody3D; pointIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "is_point_pinned", 1116898809)
  methodbind.ptrcall(self, [getPtr pointIndex], bool)

proc setRayPickable*(self: SoftBody3D; rayPickable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "set_ray_pickable", 2586408642)
  methodbind.ptrcall(self, [getPtr rayPickable], void)

proc isRayPickable*(self: SoftBody3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SoftBody3D, "is_ray_pickable", 36873697)
  methodbind.ptrcall(self, [], bool)

template collisionLayer*(self: SoftBody3D): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: SoftBody3D; value) = self.setCollisionLayer(value)

template collisionMask*(self: SoftBody3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: SoftBody3D; value) = self.setCollisionMask(value)

template parentCollisionIgnore*(self: SoftBody3D): untyped = self.getParentCollisionIgnore()
template `parentCollisionIgnore=`*(self: SoftBody3D; value) = self.setParentCollisionIgnore(value)

template simulationPrecision*(self: SoftBody3D): untyped = self.getSimulationPrecision()
template `simulationPrecision=`*(self: SoftBody3D; value) = self.setSimulationPrecision(value)

template totalMass*(self: SoftBody3D): untyped = self.getTotalMass()
template `totalMass=`*(self: SoftBody3D; value) = self.setTotalMass(value)

template linearStiffness*(self: SoftBody3D): untyped = self.getLinearStiffness()
template `linearStiffness=`*(self: SoftBody3D; value) = self.setLinearStiffness(value)

template shrinkingFactor*(self: SoftBody3D): untyped = self.getShrinkingFactor()
template `shrinkingFactor=`*(self: SoftBody3D; value) = self.setShrinkingFactor(value)

template pressureCoefficient*(self: SoftBody3D): untyped = self.getPressureCoefficient()
template `pressureCoefficient=`*(self: SoftBody3D; value) = self.setPressureCoefficient(value)

template dampingCoefficient*(self: SoftBody3D): untyped = self.getDampingCoefficient()
template `dampingCoefficient=`*(self: SoftBody3D; value) = self.setDampingCoefficient(value)

template dragCoefficient*(self: SoftBody3D): untyped = self.getDragCoefficient()
template `dragCoefficient=`*(self: SoftBody3D; value) = self.setDragCoefficient(value)

template rayPickable*(self: SoftBody3D): untyped = self.isRayPickable()
template `rayPickable=`*(self: SoftBody3D; value) = self.setRayPickable(value)

template disableMode*(self: SoftBody3D): untyped = self.getDisableMode()
template `disableMode=`*(self: SoftBody3D; value) = self.setDisableMode(value)
