{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc worldBoundaryShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "world_boundary_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc separationRayShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "separation_ray_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc sphereShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "sphere_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc boxShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "box_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc capsuleShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "capsule_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc cylinderShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "cylinder_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc convexPolygonShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "convex_polygon_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc concavePolygonShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "concave_polygon_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc heightmapShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "heightmap_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc customShapeCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "custom_shape_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc shapeSetData*(self: PhysicsServer3D; shape: RID; data: Variant): void =
  expandMethodBind(className PhysicsServer3D, "shape_set_data", 3175752987)
  methodbind.ptrcall(self, [getPtr shape, getPtr data])

proc shapeSetMargin*(self: PhysicsServer3D; shape: RID; margin: Float): void =
  expandMethodBind(className PhysicsServer3D, "shape_set_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr shape, getPtr margin])

proc shapeGetType*(self: PhysicsServer3D; shape: RID): PhysicsServer3D_ShapeType =
  expandMethodBind(className PhysicsServer3D, "shape_get_type", 3418923367)
  var ret: encoded PhysicsServer3D_ShapeType
  methodbind.ptrcall(self, [getPtr shape], addr ret)
  (addr ret).decode_result(PhysicsServer3D_ShapeType)

proc shapeGetData*(self: PhysicsServer3D; shape: RID): Variant =
  expandMethodBind(className PhysicsServer3D, "shape_get_data", 4171304767)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr shape], addr ret)
  (addr ret).decode_result(Variant)

proc shapeGetMargin*(self: PhysicsServer3D; shape: RID): Float =
  expandMethodBind(className PhysicsServer3D, "shape_get_margin", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr shape], addr ret)
  (addr ret).decode_result(Float)

proc spaceCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "space_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc spaceSetActive*(self: PhysicsServer3D; space: RID; active: bool): void =
  expandMethodBind(className PhysicsServer3D, "space_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr space, getPtr active])

proc spaceIsActive*(self: PhysicsServer3D; space: RID): bool =
  expandMethodBind(className PhysicsServer3D, "space_is_active", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr space], addr ret)
  (addr ret).decode_result(bool)

proc spaceSetParam*(self: PhysicsServer3D; space: RID; param: PhysicsServer3D_SpaceParameter; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "space_set_param", 2406017470)
  methodbind.ptrcall(self, [getPtr space, getPtr param, getPtr value])

proc spaceGetParam*(self: PhysicsServer3D; space: RID; param: PhysicsServer3D_SpaceParameter): Float =
  expandMethodBind(className PhysicsServer3D, "space_get_param", 1523206731)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr space, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc spaceGetDirectState*(self: PhysicsServer3D; space: RID): PhysicsDirectSpaceState3D =
  expandMethodBind(className PhysicsServer3D, "space_get_direct_state", 2048616813)
  var ret: encoded PhysicsDirectSpaceState3D
  methodbind.ptrcall(self, [getPtr space], addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState3D)

proc areaCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "area_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc areaSetSpace*(self: PhysicsServer3D; area: RID; space: RID): void =
  expandMethodBind(className PhysicsServer3D, "area_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr area, getPtr space])

proc areaGetSpace*(self: PhysicsServer3D; area: RID): RID =
  expandMethodBind(className PhysicsServer3D, "area_get_space", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(RID)

proc areaAddShape*(self: PhysicsServer3D; area: RID; shape: RID; transform: Transform3D = transform3D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer3D, "area_add_shape", 3711419014)
  methodbind.ptrcall(self, [getPtr area, getPtr shape, getPtr transform, getPtr disabled])

proc areaSetShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32; shape: RID): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr shape])

proc areaSetShapeTransform*(self: PhysicsServer3D; area: RID; shapeIdx: int32; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape_transform", 675327471)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr transform])

proc areaSetShapeDisabled*(self: PhysicsServer3D; area: RID; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr disabled])

proc areaGetShapeCount*(self: PhysicsServer3D; area: RID): int32 =
  expandMethodBind(className PhysicsServer3D, "area_get_shape_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(int32)

proc areaGetShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32): RID =
  expandMethodBind(className PhysicsServer3D, "area_get_shape", 1066463050)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], addr ret)
  (addr ret).decode_result(RID)

proc areaGetShapeTransform*(self: PhysicsServer3D; area: RID; shapeIdx: int32): Transform3D =
  expandMethodBind(className PhysicsServer3D, "area_get_shape_transform", 1050775521)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc areaRemoveShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer3D, "area_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx])

proc areaClearShapes*(self: PhysicsServer3D; area: RID): void =
  expandMethodBind(className PhysicsServer3D, "area_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr area])

proc areaSetCollisionLayer*(self: PhysicsServer3D; area: RID; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "area_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr layer])

proc areaGetCollisionLayer*(self: PhysicsServer3D; area: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "area_get_collision_layer", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetCollisionMask*(self: PhysicsServer3D; area: RID; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "area_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr mask])

proc areaGetCollisionMask*(self: PhysicsServer3D; area: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "area_get_collision_mask", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetParam*(self: PhysicsServer3D; area: RID; param: PhysicsServer3D_AreaParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "area_set_param", 2980114638)
  methodbind.ptrcall(self, [getPtr area, getPtr param, getPtr value])

proc areaSetTransform*(self: PhysicsServer3D; area: RID; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "area_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr area, getPtr transform])

proc areaGetParam*(self: PhysicsServer3D; area: RID; param: PhysicsServer3D_AreaParameter): Variant =
  expandMethodBind(className PhysicsServer3D, "area_get_param", 890056067)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr area, getPtr param], addr ret)
  (addr ret).decode_result(Variant)

proc areaGetTransform*(self: PhysicsServer3D; area: RID): Transform3D =
  expandMethodBind(className PhysicsServer3D, "area_get_transform", 1128465797)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(Transform3D)

proc areaAttachObjectInstanceId*(self: PhysicsServer3D; area: RID; id: uint64): void =
  expandMethodBind(className PhysicsServer3D, "area_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr id])

proc areaGetObjectInstanceId*(self: PhysicsServer3D; area: RID): uint64 =
  expandMethodBind(className PhysicsServer3D, "area_get_object_instance_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr area], addr ret)
  (addr ret).decode_result(uint64)

proc areaSetMonitorCallback*(self: PhysicsServer3D; area: RID; callback: Callable): void =
  expandMethodBind(className PhysicsServer3D, "area_set_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback])

proc areaSetAreaMonitorCallback*(self: PhysicsServer3D; area: RID; callback: Callable): void =
  expandMethodBind(className PhysicsServer3D, "area_set_area_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback])

proc areaSetMonitorable*(self: PhysicsServer3D; area: RID; monitorable: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_monitorable", 1265174801)
  methodbind.ptrcall(self, [getPtr area, getPtr monitorable])

proc areaSetRayPickable*(self: PhysicsServer3D; area: RID; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr area, getPtr enable])

proc bodyCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "body_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc bodySetSpace*(self: PhysicsServer3D; body: RID; space: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr space])

proc bodyGetSpace*(self: PhysicsServer3D; body: RID): RID =
  expandMethodBind(className PhysicsServer3D, "body_get_space", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(RID)

proc bodySetMode*(self: PhysicsServer3D; body: RID; mode: PhysicsServer3D_BodyMode): void =
  expandMethodBind(className PhysicsServer3D, "body_set_mode", 606803466)
  methodbind.ptrcall(self, [getPtr body, getPtr mode])

proc bodyGetMode*(self: PhysicsServer3D; body: RID): PhysicsServer3D_BodyMode =
  expandMethodBind(className PhysicsServer3D, "body_get_mode", 2488819728)
  var ret: encoded PhysicsServer3D_BodyMode
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(PhysicsServer3D_BodyMode)

proc bodySetCollisionLayer*(self: PhysicsServer3D; body: RID; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr layer])

proc bodyGetCollisionLayer*(self: PhysicsServer3D; body: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_layer", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionMask*(self: PhysicsServer3D; body: RID; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr mask])

proc bodyGetCollisionMask*(self: PhysicsServer3D; body: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_mask", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionPriority*(self: PhysicsServer3D; body: RID; priority: Float): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr priority])

proc bodyGetCollisionPriority*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_priority", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc bodyAddShape*(self: PhysicsServer3D; body: RID; shape: RID; transform: Transform3D = transform3D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer3D, "body_add_shape", 3711419014)
  methodbind.ptrcall(self, [getPtr body, getPtr shape, getPtr transform, getPtr disabled])

proc bodySetShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32; shape: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr shape])

proc bodySetShapeTransform*(self: PhysicsServer3D; body: RID; shapeIdx: int32; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape_transform", 675327471)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr transform])

proc bodySetShapeDisabled*(self: PhysicsServer3D; body: RID; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr disabled])

proc bodyGetShapeCount*(self: PhysicsServer3D; body: RID): int32 =
  expandMethodBind(className PhysicsServer3D, "body_get_shape_count", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(int32)

proc bodyGetShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32): RID =
  expandMethodBind(className PhysicsServer3D, "body_get_shape", 1066463050)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], addr ret)
  (addr ret).decode_result(RID)

proc bodyGetShapeTransform*(self: PhysicsServer3D; body: RID; shapeIdx: int32): Transform3D =
  expandMethodBind(className PhysicsServer3D, "body_get_shape_transform", 1050775521)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], addr ret)
  (addr ret).decode_result(Transform3D)

proc bodyRemoveShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer3D, "body_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx])

proc bodyClearShapes*(self: PhysicsServer3D; body: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr body])

proc bodyAttachObjectInstanceId*(self: PhysicsServer3D; body: RID; id: uint64): void =
  expandMethodBind(className PhysicsServer3D, "body_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr id])

proc bodyGetObjectInstanceId*(self: PhysicsServer3D; body: RID): uint64 =
  expandMethodBind(className PhysicsServer3D, "body_get_object_instance_id", 2198884583)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(uint64)

proc bodySetEnableContinuousCollisionDetection*(self: PhysicsServer3D; body: RID; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_enable_continuous_collision_detection", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable])

proc bodyIsContinuousCollisionDetectionEnabled*(self: PhysicsServer3D; body: RID): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_continuous_collision_detection_enabled", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(bool)

proc bodySetParam*(self: PhysicsServer3D; body: RID; param: PhysicsServer3D_BodyParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "body_set_param", 910941953)
  methodbind.ptrcall(self, [getPtr body, getPtr param, getPtr value])

proc bodyGetParam*(self: PhysicsServer3D; body: RID; param: PhysicsServer3D_BodyParameter): Variant =
  expandMethodBind(className PhysicsServer3D, "body_get_param", 3385027841)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr body, getPtr param], addr ret)
  (addr ret).decode_result(Variant)

proc bodyResetMassProperties*(self: PhysicsServer3D; body: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_reset_mass_properties", 2722037293)
  methodbind.ptrcall(self, [getPtr body])

proc bodySetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "body_set_state", 599977762)
  methodbind.ptrcall(self, [getPtr body, getPtr state, getPtr value])

proc bodyGetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState): Variant =
  expandMethodBind(className PhysicsServer3D, "body_get_state", 1850449534)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr body, getPtr state], addr ret)
  (addr ret).decode_result(Variant)

proc bodyApplyCentralImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_central_impulse", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse])

proc bodyApplyImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_impulse", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse, getPtr position])

proc bodyApplyTorqueImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_torque_impulse", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse])

proc bodyApplyCentralForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_central_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force])

proc bodyApplyForce*(self: PhysicsServer3D; body: RID; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_force", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position])

proc bodyApplyTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque])

proc bodyAddConstantCentralForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_central_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force])

proc bodyAddConstantForce*(self: PhysicsServer3D; body: RID; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_force", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position])

proc bodyAddConstantTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque])

proc bodySetConstantForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_constant_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force])

proc bodyGetConstantForce*(self: PhysicsServer3D; body: RID): Vector3 =
  expandMethodBind(className PhysicsServer3D, "body_get_constant_force", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Vector3)

proc bodySetConstantTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_constant_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque])

proc bodyGetConstantTorque*(self: PhysicsServer3D; body: RID): Vector3 =
  expandMethodBind(className PhysicsServer3D, "body_get_constant_torque", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Vector3)

proc bodySetAxisVelocity*(self: PhysicsServer3D; body: RID; axisVelocity: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_axis_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr axisVelocity])

proc bodySetAxisLock*(self: PhysicsServer3D; body: RID; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_axis_lock", 2020836892)
  methodbind.ptrcall(self, [getPtr body, getPtr axis, getPtr lock])

proc bodyIsAxisLocked*(self: PhysicsServer3D; body: RID; axis: PhysicsServer3D_BodyAxis): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_axis_locked", 587853580)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body, getPtr axis], addr ret)
  (addr ret).decode_result(bool)

proc bodyAddCollisionException*(self: PhysicsServer3D; body: RID; exceptedBody: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_add_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody])

proc bodyRemoveCollisionException*(self: PhysicsServer3D; body: RID; exceptedBody: RID): void =
  expandMethodBind(className PhysicsServer3D, "body_remove_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody])

proc bodySetMaxContactsReported*(self: PhysicsServer3D; body: RID; amount: int32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_max_contacts_reported", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr amount])

proc bodyGetMaxContactsReported*(self: PhysicsServer3D; body: RID): int32 =
  expandMethodBind(className PhysicsServer3D, "body_get_max_contacts_reported", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(int32)

proc bodySetOmitForceIntegration*(self: PhysicsServer3D; body: RID; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_omit_force_integration", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable])

proc bodyIsOmittingForceIntegration*(self: PhysicsServer3D; body: RID): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_omitting_force_integration", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(bool)

proc bodySetStateSyncCallback*(self: PhysicsServer3D; body: RID; callable: Callable): void =
  expandMethodBind(className PhysicsServer3D, "body_set_state_sync_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr body, getPtr callable])

proc bodySetForceIntegrationCallback*(self: PhysicsServer3D; body: RID; callable: Callable; userdata: Variant = default(Variant)): void =
  expandMethodBind(className PhysicsServer3D, "body_set_force_integration_callback", 3059434249)
  methodbind.ptrcall(self, [getPtr body, getPtr callable, getPtr userdata])

proc bodySetRayPickable*(self: PhysicsServer3D; body: RID; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable])

proc bodyTestMotion*(self: PhysicsServer3D; body: RID; parameters: gdref PhysicsTestMotionParameters3D; retval: gdref PhysicsTestMotionResult3D = default gdref PhysicsTestMotionResult3D): bool =
  expandMethodBind(className PhysicsServer3D, "body_test_motion", 1944921792)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body, getPtr parameters, getPtr retval], addr ret)
  (addr ret).decode_result(bool)

proc bodyGetDirectState*(self: PhysicsServer3D; body: RID): PhysicsDirectBodyState3D =
  expandMethodBind(className PhysicsServer3D, "body_get_direct_state", 3029727957)
  var ret: encoded PhysicsDirectBodyState3D
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(PhysicsDirectBodyState3D)

proc softBodyCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "soft_body_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc softBodyUpdateRenderingServer*(self: PhysicsServer3D; body: RID; renderingServerHandler: PhysicsServer3DRenderingServerHandler): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_update_rendering_server", 2218179753)
  methodbind.ptrcall(self, [getPtr body, getPtr renderingServerHandler])

proc softBodySetSpace*(self: PhysicsServer3D; body: RID; space: RID): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr space])

proc softBodyGetSpace*(self: PhysicsServer3D; body: RID): RID =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_space", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(RID)

proc softBodySetMesh*(self: PhysicsServer3D; body: RID; mesh: RID): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr mesh])

proc softBodyGetBounds*(self: PhysicsServer3D; body: RID): AABB =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_bounds", 974181306)
  var ret: encoded AABB
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(AABB)

proc softBodySetCollisionLayer*(self: PhysicsServer3D; body: RID; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr layer])

proc softBodyGetCollisionLayer*(self: PhysicsServer3D; body: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_collision_layer", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(uint32)

proc softBodySetCollisionMask*(self: PhysicsServer3D; body: RID; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr mask])

proc softBodyGetCollisionMask*(self: PhysicsServer3D; body: RID): uint32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_collision_mask", 2198884583)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(uint32)

proc softBodyAddCollisionException*(self: PhysicsServer3D; body: RID; bodyB: RID): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_add_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr bodyB])

proc softBodyRemoveCollisionException*(self: PhysicsServer3D; body: RID; bodyB: RID): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_remove_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr bodyB])

proc softBodySetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState; variant: Variant): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_state", 599977762)
  methodbind.ptrcall(self, [getPtr body, getPtr state, getPtr variant])

proc softBodyGetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState): Variant =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_state", 1850449534)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr body, getPtr state], addr ret)
  (addr ret).decode_result(Variant)

proc softBodySetTransform*(self: PhysicsServer3D; body: RID; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr body, getPtr transform])

proc softBodySetRayPickable*(self: PhysicsServer3D; body: RID; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable])

proc softBodySetSimulationPrecision*(self: PhysicsServer3D; body: RID; simulationPrecision: int32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_simulation_precision", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr simulationPrecision])

proc softBodyGetSimulationPrecision*(self: PhysicsServer3D; body: RID): int32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_simulation_precision", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(int32)

proc softBodySetTotalMass*(self: PhysicsServer3D; body: RID; totalMass: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_total_mass", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr totalMass])

proc softBodyGetTotalMass*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_total_mass", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetLinearStiffness*(self: PhysicsServer3D; body: RID; stiffness: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_linear_stiffness", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr stiffness])

proc softBodyGetLinearStiffness*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_linear_stiffness", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetPressureCoefficient*(self: PhysicsServer3D; body: RID; pressureCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_pressure_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr pressureCoefficient])

proc softBodyGetPressureCoefficient*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_pressure_coefficient", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetDampingCoefficient*(self: PhysicsServer3D; body: RID; dampingCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_damping_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr dampingCoefficient])

proc softBodyGetDampingCoefficient*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_damping_coefficient", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetDragCoefficient*(self: PhysicsServer3D; body: RID; dragCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_drag_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr dragCoefficient])

proc softBodyGetDragCoefficient*(self: PhysicsServer3D; body: RID): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_drag_coefficient", 866169185)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Float)

proc softBodyMovePoint*(self: PhysicsServer3D; body: RID; pointIndex: int32; globalPosition: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_move_point", 831953689)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr globalPosition])

proc softBodyGetPointGlobalPosition*(self: PhysicsServer3D; body: RID; pointIndex: int32): Vector3 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_point_global_position", 3440143363)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc softBodyRemoveAllPinnedPoints*(self: PhysicsServer3D; body: RID): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_remove_all_pinned_points", 2722037293)
  methodbind.ptrcall(self, [getPtr body])

proc softBodyPinPoint*(self: PhysicsServer3D; body: RID; pointIndex: int32; pin: bool): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_pin_point", 2658558584)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr pin])

proc softBodyIsPointPinned*(self: PhysicsServer3D; body: RID; pointIndex: int32): bool =
  expandMethodBind(className PhysicsServer3D, "soft_body_is_point_pinned", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex], addr ret)
  (addr ret).decode_result(bool)

proc jointCreate*(self: PhysicsServer3D): RID =
  expandMethodBind(className PhysicsServer3D, "joint_create", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc jointClear*(self: PhysicsServer3D; joint: RID): void =
  expandMethodBind(className PhysicsServer3D, "joint_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr joint])

proc jointMakePin*(self: PhysicsServer3D; joint: RID; bodyA: RID; localA: Vector3; bodyB: RID; localB: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_pin", 4280171926)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localA, getPtr bodyB, getPtr localB])

proc pinJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_PinJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_param", 810685294)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value])

proc pinJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_PinJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_param", 2817972347)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr joint, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc pinJointSetLocalA*(self: PhysicsServer3D; joint: RID; localA: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_local_a", 3227306858)
  methodbind.ptrcall(self, [getPtr joint, getPtr localA])

proc pinJointGetLocalA*(self: PhysicsServer3D; joint: RID): Vector3 =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_local_a", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc pinJointSetLocalB*(self: PhysicsServer3D; joint: RID; localB: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_local_b", 3227306858)
  methodbind.ptrcall(self, [getPtr joint, getPtr localB])

proc pinJointGetLocalB*(self: PhysicsServer3D; joint: RID): Vector3 =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_local_b", 531438156)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc jointMakeHinge*(self: PhysicsServer3D; joint: RID; bodyA: RID; hingeA: Transform3D; bodyB: RID; hingeB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_hinge", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr hingeA, getPtr bodyB, getPtr hingeB])

proc hingeJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_HingeJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_set_param", 3165502333)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value])

proc hingeJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_HingeJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_get_param", 2129207581)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr joint, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc hingeJointSetFlag*(self: PhysicsServer3D; joint: RID; flag: PhysicsServer3D_HingeJointFlag; enabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_set_flag", 1601626188)
  methodbind.ptrcall(self, [getPtr joint, getPtr flag, getPtr enabled])

proc hingeJointGetFlag*(self: PhysicsServer3D; joint: RID; flag: PhysicsServer3D_HingeJointFlag): bool =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_get_flag", 4165147865)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr joint, getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc jointMakeSlider*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_slider", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB])

proc sliderJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_SliderJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "slider_joint_set_param", 2264833593)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value])

proc sliderJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_SliderJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "slider_joint_get_param", 3498644957)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr joint, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc jointMakeConeTwist*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_cone_twist", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB])

proc coneTwistJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_ConeTwistJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "cone_twist_joint_set_param", 808587618)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value])

proc coneTwistJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_ConeTwistJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "cone_twist_joint_get_param", 1134789658)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr joint, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc jointGetType*(self: PhysicsServer3D; joint: RID): PhysicsServer3D_JointType =
  expandMethodBind(className PhysicsServer3D, "joint_get_type", 4290791900)
  var ret: encoded PhysicsServer3D_JointType
  methodbind.ptrcall(self, [getPtr joint], addr ret)
  (addr ret).decode_result(PhysicsServer3D_JointType)

proc jointSetSolverPriority*(self: PhysicsServer3D; joint: RID; priority: int32): void =
  expandMethodBind(className PhysicsServer3D, "joint_set_solver_priority", 3411492887)
  methodbind.ptrcall(self, [getPtr joint, getPtr priority])

proc jointGetSolverPriority*(self: PhysicsServer3D; joint: RID): int32 =
  expandMethodBind(className PhysicsServer3D, "joint_get_solver_priority", 2198884583)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr joint], addr ret)
  (addr ret).decode_result(int32)

proc jointDisableCollisionsBetweenBodies*(self: PhysicsServer3D; joint: RID; disable: bool): void =
  expandMethodBind(className PhysicsServer3D, "joint_disable_collisions_between_bodies", 1265174801)
  methodbind.ptrcall(self, [getPtr joint, getPtr disable])

proc jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer3D; joint: RID): bool =
  expandMethodBind(className PhysicsServer3D, "joint_is_disabled_collisions_between_bodies", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr joint], addr ret)
  (addr ret).decode_result(bool)

proc jointMakeGeneric6Dof*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_generic_6dof", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB])

proc generic6DofJointSetParam*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_param", 2600081391)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr param, getPtr value])

proc generic6DofJointGetParam*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam): Float =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_param", 467122058)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc generic6DofJointSetFlag*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_flag", 3570926903)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr flag, getPtr enable])

proc generic6DofJointGetFlag*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag): bool =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_flag", 4158090196)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc freeRid*(self: PhysicsServer3D; rid: RID): void =
  expandMethodBind(className PhysicsServer3D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc setActive*(self: PhysicsServer3D; active: bool): void =
  expandMethodBind(className PhysicsServer3D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc getProcessInfo*(self: PhysicsServer3D; processInfo: PhysicsServer3D_ProcessInfo): int32 =
  expandMethodBind(className PhysicsServer3D, "get_process_info", 1332958745)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr processInfo], addr ret)
  (addr ret).decode_result(int32)

const PhysicsServer3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsServer3D]): Table[string, string] = PhysicsServer3D_vmap