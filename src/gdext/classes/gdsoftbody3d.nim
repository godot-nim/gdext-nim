{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmeshinstance3d; export gdmeshinstance3d

proc getPhysicsRid*(self: SoftBody3D): RID =
  expandMethodBind(className SoftBody3D, "get_physics_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setCollisionMask*(self: SoftBody3D; collisionMask: uint32): void =
  expandMethodBind(className SoftBody3D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: SoftBody3D): uint32 =
  expandMethodBind(className SoftBody3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionLayer*(self: SoftBody3D; collisionLayer: uint32): void =
  expandMethodBind(className SoftBody3D, "set_collision_layer", 1286410249)
  var `?param` = [getPtr collisionLayer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayer*(self: SoftBody3D): uint32 =
  expandMethodBind(className SoftBody3D, "get_collision_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: SoftBody3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className SoftBody3D, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: SoftBody3D; layerNumber: int32): bool =
  expandMethodBind(className SoftBody3D, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionLayerValue*(self: SoftBody3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className SoftBody3D, "set_collision_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayerValue*(self: SoftBody3D; layerNumber: int32): bool =
  expandMethodBind(className SoftBody3D, "get_collision_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setParentCollisionIgnore*(self: SoftBody3D; parentCollisionIgnore: NodePath): void =
  expandMethodBind(className SoftBody3D, "set_parent_collision_ignore", 1348162250)
  var `?param` = [getPtr parentCollisionIgnore]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParentCollisionIgnore*(self: SoftBody3D): NodePath =
  expandMethodBind(className SoftBody3D, "get_parent_collision_ignore", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setDisableMode*(self: SoftBody3D; mode: SoftBody3D_DisableMode): void =
  expandMethodBind(className SoftBody3D, "set_disable_mode", 1104158384)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisableMode*(self: SoftBody3D): SoftBody3D_DisableMode =
  expandMethodBind(className SoftBody3D, "get_disable_mode", 4135042476)
  var ret: encoded SoftBody3D_DisableMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SoftBody3D_DisableMode)

proc getCollisionExceptions*(self: SoftBody3D): TypedArray[PhysicsBody3D] =
  expandMethodBind(className SoftBody3D, "get_collision_exceptions", 2915620761)
  var ret: encoded TypedArray[PhysicsBody3D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[PhysicsBody3D])

proc addCollisionExceptionWith*(self: SoftBody3D; body: Node): void =
  expandMethodBind(className SoftBody3D, "add_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCollisionExceptionWith*(self: SoftBody3D; body: Node): void =
  expandMethodBind(className SoftBody3D, "remove_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSimulationPrecision*(self: SoftBody3D; simulationPrecision: int32): void =
  expandMethodBind(className SoftBody3D, "set_simulation_precision", 1286410249)
  var `?param` = [getPtr simulationPrecision]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSimulationPrecision*(self: SoftBody3D): int32 =
  expandMethodBind(className SoftBody3D, "get_simulation_precision", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTotalMass*(self: SoftBody3D; mass: Float): void =
  expandMethodBind(className SoftBody3D, "set_total_mass", 373806689)
  var `?param` = [getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTotalMass*(self: SoftBody3D): Float =
  expandMethodBind(className SoftBody3D, "get_total_mass", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLinearStiffness*(self: SoftBody3D; linearStiffness: Float): void =
  expandMethodBind(className SoftBody3D, "set_linear_stiffness", 373806689)
  var `?param` = [getPtr linearStiffness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearStiffness*(self: SoftBody3D): Float =
  expandMethodBind(className SoftBody3D, "get_linear_stiffness", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPressureCoefficient*(self: SoftBody3D; pressureCoefficient: Float): void =
  expandMethodBind(className SoftBody3D, "set_pressure_coefficient", 373806689)
  var `?param` = [getPtr pressureCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPressureCoefficient*(self: SoftBody3D): Float =
  expandMethodBind(className SoftBody3D, "get_pressure_coefficient", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDampingCoefficient*(self: SoftBody3D; dampingCoefficient: Float): void =
  expandMethodBind(className SoftBody3D, "set_damping_coefficient", 373806689)
  var `?param` = [getPtr dampingCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDampingCoefficient*(self: SoftBody3D): Float =
  expandMethodBind(className SoftBody3D, "get_damping_coefficient", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDragCoefficient*(self: SoftBody3D; dragCoefficient: Float): void =
  expandMethodBind(className SoftBody3D, "set_drag_coefficient", 373806689)
  var `?param` = [getPtr dragCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDragCoefficient*(self: SoftBody3D): Float =
  expandMethodBind(className SoftBody3D, "get_drag_coefficient", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getPointTransform*(self: SoftBody3D; pointIndex: int32): Vector3 =
  expandMethodBind(className SoftBody3D, "get_point_transform", 871989493)
  var `?param` = [getPtr pointIndex]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setPointPinned*(self: SoftBody3D; pointIndex: int32; pinned: bool; attachmentPath: NodePath = nodePath()): void =
  expandMethodBind(className SoftBody3D, "set_point_pinned", 3814935226)
  var `?param` = [getPtr pointIndex, getPtr pinned, getPtr attachmentPath]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPointPinned*(self: SoftBody3D; pointIndex: int32): bool =
  expandMethodBind(className SoftBody3D, "is_point_pinned", 1116898809)
  var `?param` = [getPtr pointIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setRayPickable*(self: SoftBody3D; rayPickable: bool): void =
  expandMethodBind(className SoftBody3D, "set_ray_pickable", 2586408642)
  var `?param` = [getPtr rayPickable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRayPickable*(self: SoftBody3D): bool =
  expandMethodBind(className SoftBody3D, "is_ray_pickable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const SoftBody3D_vmap =
  MeshInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SoftBody3D]): Table[string, string] = SoftBody3D_vmap