{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsServer3D, Object)

proc worldBoundaryShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "world_boundary_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc separationRayShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "separation_ray_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc sphereShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "sphere_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc boxShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "box_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc capsuleShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "capsule_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc cylinderShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "cylinder_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc convexPolygonShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "convex_polygon_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc concavePolygonShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "concave_polygon_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc heightmapShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "heightmap_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc customShapeCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "custom_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc shapeSetData*(self: PhysicsServer3D; shape: RID; data: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "shape_set_data", 3175752987)
  methodbind.ptrcall(self, [getPtr shape, getPtr data], void)

proc shapeSetMargin*(self: PhysicsServer3D; shape: RID; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "shape_set_margin", 1794382983)
  methodbind.ptrcall(self, [getPtr shape, getPtr margin], void)

proc shapeGetType*(self: PhysicsServer3D; shape: RID): PhysicsServer3D_ShapeType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "shape_get_type", 3418923367)
  methodbind.ptrcall(self, [getPtr shape], PhysicsServer3D_ShapeType)

proc shapeGetData*(self: PhysicsServer3D; shape: RID): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "shape_get_data", 4171304767)
  methodbind.ptrcall(self, [getPtr shape], Variant)

proc shapeGetMargin*(self: PhysicsServer3D; shape: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "shape_get_margin", 866169185)
  methodbind.ptrcall(self, [getPtr shape], Float)

proc spaceCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc spaceSetActive*(self: PhysicsServer3D; space: RID; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr space, getPtr active], void)

proc spaceIsActive*(self: PhysicsServer3D; space: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_is_active", 4155700596)
  methodbind.ptrcall(self, [getPtr space], bool)

proc spaceSetParam*(self: PhysicsServer3D; space: RID; param: PhysicsServer3D_SpaceParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_set_param", 2406017470)
  methodbind.ptrcall(self, [getPtr space, getPtr param, getPtr value], void)

proc spaceGetParam*(self: PhysicsServer3D; space: RID; param: PhysicsServer3D_SpaceParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_get_param", 1523206731)
  methodbind.ptrcall(self, [getPtr space, getPtr param], Float)

proc spaceGetDirectState*(self: PhysicsServer3D; space: RID): PhysicsDirectSpaceState3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "space_get_direct_state", 2048616813)
  methodbind.ptrcall(self, [getPtr space], PhysicsDirectSpaceState3D)

proc areaCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc areaSetSpace*(self: PhysicsServer3D; area: RID; space: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr area, getPtr space], void)

proc areaGetSpace*(self: PhysicsServer3D; area: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_space", 3814569979)
  methodbind.ptrcall(self, [getPtr area], RID)

proc areaAddShape*(self: PhysicsServer3D; area: RID; shape: RID; transform: Transform3D = transform3D(); disabled: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_add_shape", 3711419014)
  methodbind.ptrcall(self, [getPtr area, getPtr shape, getPtr transform, getPtr disabled], void)

proc areaSetShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr shape], void)

proc areaSetShapeTransform*(self: PhysicsServer3D; area: RID; shapeIdx: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_shape_transform", 675327471)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr transform], void)

proc areaSetShapeDisabled*(self: PhysicsServer3D; area: RID; shapeIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr disabled], void)

proc areaGetShapeCount*(self: PhysicsServer3D; area: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_shape_count", 2198884583)
  methodbind.ptrcall(self, [getPtr area], int32)

proc areaGetShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_shape", 1066463050)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], RID)

proc areaGetShapeTransform*(self: PhysicsServer3D; area: RID; shapeIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_shape_transform", 1050775521)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], Transform3D)

proc areaRemoveShape*(self: PhysicsServer3D; area: RID; shapeIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], void)

proc areaClearShapes*(self: PhysicsServer3D; area: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr area], void)

proc areaSetCollisionLayer*(self: PhysicsServer3D; area: RID; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr layer], void)

proc areaGetCollisionLayer*(self: PhysicsServer3D; area: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_collision_layer", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint32)

proc areaSetCollisionMask*(self: PhysicsServer3D; area: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr mask], void)

proc areaGetCollisionMask*(self: PhysicsServer3D; area: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_collision_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint32)

proc areaSetParam*(self: PhysicsServer3D; area: RID; param: PhysicsServer3D_AreaParameter; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_param", 2980114638)
  methodbind.ptrcall(self, [getPtr area, getPtr param, getPtr value], void)

proc areaSetTransform*(self: PhysicsServer3D; area: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr area, getPtr transform], void)

proc areaGetParam*(self: PhysicsServer3D; area: RID; param: PhysicsServer3D_AreaParameter): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_param", 890056067)
  methodbind.ptrcall(self, [getPtr area, getPtr param], Variant)

proc areaGetTransform*(self: PhysicsServer3D; area: RID): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_transform", 1128465797)
  methodbind.ptrcall(self, [getPtr area], Transform3D)

proc areaAttachObjectInstanceId*(self: PhysicsServer3D; area: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr id], void)

proc areaGetObjectInstanceId*(self: PhysicsServer3D; area: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_get_object_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint64)

proc areaSetMonitorCallback*(self: PhysicsServer3D; area: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback], void)

proc areaSetAreaMonitorCallback*(self: PhysicsServer3D; area: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_area_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback], void)

proc areaSetMonitorable*(self: PhysicsServer3D; area: RID; monitorable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_monitorable", 1265174801)
  methodbind.ptrcall(self, [getPtr area, getPtr monitorable], void)

proc areaSetRayPickable*(self: PhysicsServer3D; area: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "area_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr area, getPtr enable], void)

proc bodyCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc bodySetSpace*(self: PhysicsServer3D; body: RID; space: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr space], void)

proc bodyGetSpace*(self: PhysicsServer3D; body: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_space", 3814569979)
  methodbind.ptrcall(self, [getPtr body], RID)

proc bodySetMode*(self: PhysicsServer3D; body: RID; mode: PhysicsServer3D_BodyMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_mode", 606803466)
  methodbind.ptrcall(self, [getPtr body, getPtr mode], void)

proc bodyGetMode*(self: PhysicsServer3D; body: RID): PhysicsServer3D_BodyMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_mode", 2488819728)
  methodbind.ptrcall(self, [getPtr body], PhysicsServer3D_BodyMode)

proc bodySetCollisionLayer*(self: PhysicsServer3D; body: RID; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr layer], void)

proc bodyGetCollisionLayer*(self: PhysicsServer3D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_collision_layer", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc bodySetCollisionMask*(self: PhysicsServer3D; body: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr mask], void)

proc bodyGetCollisionMask*(self: PhysicsServer3D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_collision_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc bodySetCollisionPriority*(self: PhysicsServer3D; body: RID; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_collision_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr priority], void)

proc bodyGetCollisionPriority*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_collision_priority", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc bodyAddShape*(self: PhysicsServer3D; body: RID; shape: RID; transform: Transform3D = transform3D(); disabled: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_add_shape", 3711419014)
  methodbind.ptrcall(self, [getPtr body, getPtr shape, getPtr transform, getPtr disabled], void)

proc bodySetShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr shape], void)

proc bodySetShapeTransform*(self: PhysicsServer3D; body: RID; shapeIdx: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_shape_transform", 675327471)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr transform], void)

proc bodySetShapeDisabled*(self: PhysicsServer3D; body: RID; shapeIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr disabled], void)

proc bodyGetShapeCount*(self: PhysicsServer3D; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_shape_count", 2198884583)
  methodbind.ptrcall(self, [getPtr body], int32)

proc bodyGetShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_shape", 1066463050)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], RID)

proc bodyGetShapeTransform*(self: PhysicsServer3D; body: RID; shapeIdx: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_shape_transform", 1050775521)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], Transform3D)

proc bodyRemoveShape*(self: PhysicsServer3D; body: RID; shapeIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], void)

proc bodyClearShapes*(self: PhysicsServer3D; body: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr body], void)

proc bodyAttachObjectInstanceId*(self: PhysicsServer3D; body: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr id], void)

proc bodyGetObjectInstanceId*(self: PhysicsServer3D; body: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_object_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint64)

proc bodySetEnableContinuousCollisionDetection*(self: PhysicsServer3D; body: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_enable_continuous_collision_detection", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable], void)

proc bodyIsContinuousCollisionDetectionEnabled*(self: PhysicsServer3D; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_is_continuous_collision_detection_enabled", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)

proc bodySetParam*(self: PhysicsServer3D; body: RID; param: PhysicsServer3D_BodyParameter; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_param", 910941953)
  methodbind.ptrcall(self, [getPtr body, getPtr param, getPtr value], void)

proc bodyGetParam*(self: PhysicsServer3D; body: RID; param: PhysicsServer3D_BodyParameter): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_param", 3385027841)
  methodbind.ptrcall(self, [getPtr body, getPtr param], Variant)

proc bodyResetMassProperties*(self: PhysicsServer3D; body: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_reset_mass_properties", 2722037293)
  methodbind.ptrcall(self, [getPtr body], void)

proc bodySetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_state", 599977762)
  methodbind.ptrcall(self, [getPtr body, getPtr state, getPtr value], void)

proc bodyGetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_state", 1850449534)
  methodbind.ptrcall(self, [getPtr body, getPtr state], Variant)

proc bodyApplyCentralImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_central_impulse", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse], void)

proc bodyApplyImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_impulse", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse, getPtr position], void)

proc bodyApplyTorqueImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_torque_impulse", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse], void)

proc bodyApplyCentralForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_central_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyApplyForce*(self: PhysicsServer3D; body: RID; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_force", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position], void)

proc bodyApplyTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_apply_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodyAddConstantCentralForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_add_constant_central_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyAddConstantForce*(self: PhysicsServer3D; body: RID; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_add_constant_force", 390416203)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position], void)

proc bodyAddConstantTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_add_constant_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodySetConstantForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_constant_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyGetConstantForce*(self: PhysicsServer3D; body: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_constant_force", 531438156)
  methodbind.ptrcall(self, [getPtr body], Vector3)

proc bodySetConstantTorque*(self: PhysicsServer3D; body: RID; torque: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_constant_torque", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodyGetConstantTorque*(self: PhysicsServer3D; body: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_constant_torque", 531438156)
  methodbind.ptrcall(self, [getPtr body], Vector3)

proc bodySetAxisVelocity*(self: PhysicsServer3D; body: RID; axisVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_axis_velocity", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr axisVelocity], void)

proc bodySetAxisLock*(self: PhysicsServer3D; body: RID; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_axis_lock", 2020836892)
  methodbind.ptrcall(self, [getPtr body, getPtr axis, getPtr lock], void)

proc bodyIsAxisLocked*(self: PhysicsServer3D; body: RID; axis: PhysicsServer3D_BodyAxis): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_is_axis_locked", 587853580)
  methodbind.ptrcall(self, [getPtr body, getPtr axis], bool)

proc bodyAddCollisionException*(self: PhysicsServer3D; body: RID; exceptedBody: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_add_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody], void)

proc bodyRemoveCollisionException*(self: PhysicsServer3D; body: RID; exceptedBody: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_remove_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody], void)

proc bodySetMaxContactsReported*(self: PhysicsServer3D; body: RID; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_max_contacts_reported", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr amount], void)

proc bodyGetMaxContactsReported*(self: PhysicsServer3D; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_max_contacts_reported", 2198884583)
  methodbind.ptrcall(self, [getPtr body], int32)

proc bodySetOmitForceIntegration*(self: PhysicsServer3D; body: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_omit_force_integration", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable], void)

proc bodyIsOmittingForceIntegration*(self: PhysicsServer3D; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_is_omitting_force_integration", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)

proc bodySetStateSyncCallback*(self: PhysicsServer3D; body: RID; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_state_sync_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr body, getPtr callable], void)

proc bodySetForceIntegrationCallback*(self: PhysicsServer3D; body: RID; callable: Callable; userdata: Variant = default(Variant)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_force_integration_callback", 3059434249)
  methodbind.ptrcall(self, [getPtr body, getPtr callable, getPtr userdata], void)

proc bodySetRayPickable*(self: PhysicsServer3D; body: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable], void)

proc bodyTestMotion*(self: PhysicsServer3D; body: RID; parameters: gdref PhysicsTestMotionParameters3D; retval: gdref PhysicsTestMotionResult3D = default gdref PhysicsTestMotionResult3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_test_motion", 1944921792)
  methodbind.ptrcall(self, [getPtr body, getPtr parameters, getPtr retval], bool)

proc bodyGetDirectState*(self: PhysicsServer3D; body: RID): PhysicsDirectBodyState3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "body_get_direct_state", 3029727957)
  methodbind.ptrcall(self, [getPtr body], PhysicsDirectBodyState3D)

proc softBodyCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc softBodyUpdateRenderingServer*(self: PhysicsServer3D; body: RID; renderingServerHandler: PhysicsServer3DRenderingServerHandler): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_update_rendering_server", 2218179753)
  methodbind.ptrcall(self, [getPtr body, getPtr renderingServerHandler], void)

proc softBodySetSpace*(self: PhysicsServer3D; body: RID; space: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr space], void)

proc softBodyGetSpace*(self: PhysicsServer3D; body: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_space", 3814569979)
  methodbind.ptrcall(self, [getPtr body], RID)

proc softBodySetMesh*(self: PhysicsServer3D; body: RID; mesh: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_mesh", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr mesh], void)

proc softBodyGetBounds*(self: PhysicsServer3D; body: RID): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_bounds", 974181306)
  methodbind.ptrcall(self, [getPtr body], AABB)

proc softBodySetCollisionLayer*(self: PhysicsServer3D; body: RID; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr layer], void)

proc softBodyGetCollisionLayer*(self: PhysicsServer3D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_collision_layer", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc softBodySetCollisionMask*(self: PhysicsServer3D; body: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr mask], void)

proc softBodyGetCollisionMask*(self: PhysicsServer3D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_collision_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc softBodyAddCollisionException*(self: PhysicsServer3D; body: RID; bodyB: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_add_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr bodyB], void)

proc softBodyRemoveCollisionException*(self: PhysicsServer3D; body: RID; bodyB: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_remove_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr bodyB], void)

proc softBodySetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState; variant: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_state", 599977762)
  methodbind.ptrcall(self, [getPtr body, getPtr state, getPtr variant], void)

proc softBodyGetState*(self: PhysicsServer3D; body: RID; state: PhysicsServer3D_BodyState): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_state", 1850449534)
  methodbind.ptrcall(self, [getPtr body, getPtr state], Variant)

proc softBodySetTransform*(self: PhysicsServer3D; body: RID; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_transform", 3935195649)
  methodbind.ptrcall(self, [getPtr body, getPtr transform], void)

proc softBodySetRayPickable*(self: PhysicsServer3D; body: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_ray_pickable", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable], void)

proc softBodySetSimulationPrecision*(self: PhysicsServer3D; body: RID; simulationPrecision: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_simulation_precision", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr simulationPrecision], void)

proc softBodyGetSimulationPrecision*(self: PhysicsServer3D; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_simulation_precision", 2198884583)
  methodbind.ptrcall(self, [getPtr body], int32)

proc softBodySetTotalMass*(self: PhysicsServer3D; body: RID; totalMass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_total_mass", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr totalMass], void)

proc softBodyGetTotalMass*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_total_mass", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodySetLinearStiffness*(self: PhysicsServer3D; body: RID; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_linear_stiffness", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr stiffness], void)

proc softBodyGetLinearStiffness*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_linear_stiffness", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodySetShrinkingFactor*(self: PhysicsServer3D; body: RID; shrinkingFactor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_shrinking_factor", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr shrinkingFactor], void)

proc softBodyGetShrinkingFactor*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_shrinking_factor", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodySetPressureCoefficient*(self: PhysicsServer3D; body: RID; pressureCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_pressure_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr pressureCoefficient], void)

proc softBodyGetPressureCoefficient*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_pressure_coefficient", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodySetDampingCoefficient*(self: PhysicsServer3D; body: RID; dampingCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_damping_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr dampingCoefficient], void)

proc softBodyGetDampingCoefficient*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_damping_coefficient", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodySetDragCoefficient*(self: PhysicsServer3D; body: RID; dragCoefficient: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_set_drag_coefficient", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr dragCoefficient], void)

proc softBodyGetDragCoefficient*(self: PhysicsServer3D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_drag_coefficient", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc softBodyMovePoint*(self: PhysicsServer3D; body: RID; pointIndex: int32; globalPosition: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_move_point", 831953689)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr globalPosition], void)

proc softBodyGetPointGlobalPosition*(self: PhysicsServer3D; body: RID; pointIndex: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_get_point_global_position", 3440143363)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex], Vector3)

proc softBodyRemoveAllPinnedPoints*(self: PhysicsServer3D; body: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_remove_all_pinned_points", 2722037293)
  methodbind.ptrcall(self, [getPtr body], void)

proc softBodyPinPoint*(self: PhysicsServer3D; body: RID; pointIndex: int32; pin: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_pin_point", 2658558584)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr pin], void)

proc softBodyIsPointPinned*(self: PhysicsServer3D; body: RID; pointIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_is_point_pinned", 3120086654)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex], bool)

proc softBodyApplyPointImpulse*(self: PhysicsServer3D; body: RID; pointIndex: int32; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_apply_point_impulse", 831953689)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr impulse], void)

proc softBodyApplyPointForce*(self: PhysicsServer3D; body: RID; pointIndex: int32; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_apply_point_force", 831953689)
  methodbind.ptrcall(self, [getPtr body, getPtr pointIndex, getPtr force], void)

proc softBodyApplyCentralImpulse*(self: PhysicsServer3D; body: RID; impulse: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_apply_central_impulse", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse], void)

proc softBodyApplyCentralForce*(self: PhysicsServer3D; body: RID; force: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "soft_body_apply_central_force", 3227306858)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc jointCreate*(self: PhysicsServer3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc jointClear*(self: PhysicsServer3D; joint: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr joint], void)

proc jointMakePin*(self: PhysicsServer3D; joint: RID; bodyA: RID; localA: Vector3; bodyB: RID; localB: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_make_pin", 4280171926)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localA, getPtr bodyB, getPtr localB], void)

proc pinJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_PinJointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_set_param", 810685294)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc pinJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_PinJointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_get_param", 2817972347)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc pinJointSetLocalA*(self: PhysicsServer3D; joint: RID; localA: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_set_local_a", 3227306858)
  methodbind.ptrcall(self, [getPtr joint, getPtr localA], void)

proc pinJointGetLocalA*(self: PhysicsServer3D; joint: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_get_local_a", 531438156)
  methodbind.ptrcall(self, [getPtr joint], Vector3)

proc pinJointSetLocalB*(self: PhysicsServer3D; joint: RID; localB: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_set_local_b", 3227306858)
  methodbind.ptrcall(self, [getPtr joint, getPtr localB], void)

proc pinJointGetLocalB*(self: PhysicsServer3D; joint: RID): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "pin_joint_get_local_b", 531438156)
  methodbind.ptrcall(self, [getPtr joint], Vector3)

proc jointMakeHinge*(self: PhysicsServer3D; joint: RID; bodyA: RID; hingeA: Transform3D; bodyB: RID; hingeB: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_make_hinge", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr hingeA, getPtr bodyB, getPtr hingeB], void)

proc hingeJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_HingeJointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "hinge_joint_set_param", 3165502333)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc hingeJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_HingeJointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "hinge_joint_get_param", 2129207581)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc hingeJointSetFlag*(self: PhysicsServer3D; joint: RID; flag: PhysicsServer3D_HingeJointFlag; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "hinge_joint_set_flag", 1601626188)
  methodbind.ptrcall(self, [getPtr joint, getPtr flag, getPtr enabled], void)

proc hingeJointGetFlag*(self: PhysicsServer3D; joint: RID; flag: PhysicsServer3D_HingeJointFlag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "hinge_joint_get_flag", 4165147865)
  methodbind.ptrcall(self, [getPtr joint, getPtr flag], bool)

proc jointMakeSlider*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_make_slider", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB], void)

proc sliderJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_SliderJointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "slider_joint_set_param", 2264833593)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc sliderJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_SliderJointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "slider_joint_get_param", 3498644957)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc jointMakeConeTwist*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_make_cone_twist", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB], void)

proc coneTwistJointSetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_ConeTwistJointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "cone_twist_joint_set_param", 808587618)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc coneTwistJointGetParam*(self: PhysicsServer3D; joint: RID; param: PhysicsServer3D_ConeTwistJointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "cone_twist_joint_get_param", 1134789658)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc jointGetType*(self: PhysicsServer3D; joint: RID): PhysicsServer3D_JointType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_get_type", 4290791900)
  methodbind.ptrcall(self, [getPtr joint], PhysicsServer3D_JointType)

proc jointSetSolverPriority*(self: PhysicsServer3D; joint: RID; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_set_solver_priority", 3411492887)
  methodbind.ptrcall(self, [getPtr joint, getPtr priority], void)

proc jointGetSolverPriority*(self: PhysicsServer3D; joint: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_get_solver_priority", 2198884583)
  methodbind.ptrcall(self, [getPtr joint], int32)

proc jointDisableCollisionsBetweenBodies*(self: PhysicsServer3D; joint: RID; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_disable_collisions_between_bodies", 1265174801)
  methodbind.ptrcall(self, [getPtr joint, getPtr disable], void)

proc jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer3D; joint: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_is_disabled_collisions_between_bodies", 4155700596)
  methodbind.ptrcall(self, [getPtr joint], bool)

proc jointMakeGeneric6Dof*(self: PhysicsServer3D; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "joint_make_generic_6dof", 1684107643)
  methodbind.ptrcall(self, [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB], void)

proc generic6DofJointSetParam*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_param", 2600081391)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr param, getPtr value], void)

proc generic6DofJointGetParam*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_param", 467122058)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr param], Float)

proc generic6DofJointSetFlag*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_flag", 3570926903)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr flag, getPtr enable], void)

proc generic6DofJointGetFlag*(self: PhysicsServer3D; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_flag", 4158090196)
  methodbind.ptrcall(self, [getPtr joint, getPtr axis, getPtr flag], bool)

proc freeRid*(self: PhysicsServer3D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc setActive*(self: PhysicsServer3D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getProcessInfo*(self: PhysicsServer3D; processInfo: PhysicsServer3D_ProcessInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3D, "get_process_info", 1332958745)
  methodbind.ptrcall(self, [getPtr processInfo], int32)
