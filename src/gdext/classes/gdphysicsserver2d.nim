{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsServer2D, Object)

proc worldBoundaryShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "world_boundary_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc separationRayShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "separation_ray_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc segmentShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "segment_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc circleShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "circle_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc rectangleShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "rectangle_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc capsuleShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "capsule_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc convexPolygonShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "convex_polygon_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc concavePolygonShapeCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "concave_polygon_shape_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc shapeSetData*(self: PhysicsServer2D; shape: RID; data: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "shape_set_data", 3175752987)
  methodbind.ptrcall(self, [getPtr shape, getPtr data], void)

proc shapeGetType*(self: PhysicsServer2D; shape: RID): PhysicsServer2D_ShapeType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "shape_get_type", 1240598777)
  methodbind.ptrcall(self, [getPtr shape], PhysicsServer2D_ShapeType)

proc shapeGetData*(self: PhysicsServer2D; shape: RID): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "shape_get_data", 4171304767)
  methodbind.ptrcall(self, [getPtr shape], Variant)

proc spaceCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc spaceSetActive*(self: PhysicsServer2D; space: RID; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_set_active", 1265174801)
  methodbind.ptrcall(self, [getPtr space, getPtr active], void)

proc spaceIsActive*(self: PhysicsServer2D; space: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_is_active", 4155700596)
  methodbind.ptrcall(self, [getPtr space], bool)

proc spaceSetParam*(self: PhysicsServer2D; space: RID; param: PhysicsServer2D_SpaceParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_set_param", 949194586)
  methodbind.ptrcall(self, [getPtr space, getPtr param, getPtr value], void)

proc spaceGetParam*(self: PhysicsServer2D; space: RID; param: PhysicsServer2D_SpaceParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_get_param", 874111783)
  methodbind.ptrcall(self, [getPtr space, getPtr param], Float)

proc spaceGetDirectState*(self: PhysicsServer2D; space: RID): PhysicsDirectSpaceState2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "space_get_direct_state", 3160173886)
  methodbind.ptrcall(self, [getPtr space], PhysicsDirectSpaceState2D)

proc areaCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc areaSetSpace*(self: PhysicsServer2D; area: RID; space: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr area, getPtr space], void)

proc areaGetSpace*(self: PhysicsServer2D; area: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_space", 3814569979)
  methodbind.ptrcall(self, [getPtr area], RID)

proc areaAddShape*(self: PhysicsServer2D; area: RID; shape: RID; transform: Transform2D = transform2D(); disabled: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_add_shape", 339056240)
  methodbind.ptrcall(self, [getPtr area, getPtr shape, getPtr transform, getPtr disabled], void)

proc areaSetShape*(self: PhysicsServer2D; area: RID; shapeIdx: int32; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr shape], void)

proc areaSetShapeTransform*(self: PhysicsServer2D; area: RID; shapeIdx: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_shape_transform", 736082694)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr transform], void)

proc areaSetShapeDisabled*(self: PhysicsServer2D; area: RID; shapeIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx, getPtr disabled], void)

proc areaGetShapeCount*(self: PhysicsServer2D; area: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_shape_count", 2198884583)
  methodbind.ptrcall(self, [getPtr area], int32)

proc areaGetShape*(self: PhysicsServer2D; area: RID; shapeIdx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_shape", 1066463050)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], RID)

proc areaGetShapeTransform*(self: PhysicsServer2D; area: RID; shapeIdx: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_shape_transform", 1324854622)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], Transform2D)

proc areaRemoveShape*(self: PhysicsServer2D; area: RID; shapeIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr shapeIdx], void)

proc areaClearShapes*(self: PhysicsServer2D; area: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr area], void)

proc areaSetCollisionLayer*(self: PhysicsServer2D; area: RID; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr layer], void)

proc areaGetCollisionLayer*(self: PhysicsServer2D; area: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_collision_layer", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint32)

proc areaSetCollisionMask*(self: PhysicsServer2D; area: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr mask], void)

proc areaGetCollisionMask*(self: PhysicsServer2D; area: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_collision_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint32)

proc areaSetParam*(self: PhysicsServer2D; area: RID; param: PhysicsServer2D_AreaParameter; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_param", 1257146028)
  methodbind.ptrcall(self, [getPtr area, getPtr param, getPtr value], void)

proc areaSetTransform*(self: PhysicsServer2D; area: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr area, getPtr transform], void)

proc areaGetParam*(self: PhysicsServer2D; area: RID; param: PhysicsServer2D_AreaParameter): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_param", 3047435120)
  methodbind.ptrcall(self, [getPtr area, getPtr param], Variant)

proc areaGetTransform*(self: PhysicsServer2D; area: RID): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_transform", 213527486)
  methodbind.ptrcall(self, [getPtr area], Transform2D)

proc areaAttachObjectInstanceId*(self: PhysicsServer2D; area: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr id], void)

proc areaGetObjectInstanceId*(self: PhysicsServer2D; area: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_object_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint64)

proc areaAttachCanvasInstanceId*(self: PhysicsServer2D; area: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_attach_canvas_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr area, getPtr id], void)

proc areaGetCanvasInstanceId*(self: PhysicsServer2D; area: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_get_canvas_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr area], uint64)

proc areaSetMonitorCallback*(self: PhysicsServer2D; area: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback], void)

proc areaSetAreaMonitorCallback*(self: PhysicsServer2D; area: RID; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_area_monitor_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr area, getPtr callback], void)

proc areaSetMonitorable*(self: PhysicsServer2D; area: RID; monitorable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "area_set_monitorable", 1265174801)
  methodbind.ptrcall(self, [getPtr area, getPtr monitorable], void)

proc bodyCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc bodySetSpace*(self: PhysicsServer2D; body: RID; space: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_space", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr space], void)

proc bodyGetSpace*(self: PhysicsServer2D; body: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_space", 3814569979)
  methodbind.ptrcall(self, [getPtr body], RID)

proc bodySetMode*(self: PhysicsServer2D; body: RID; mode: PhysicsServer2D_BodyMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_mode", 1658067650)
  methodbind.ptrcall(self, [getPtr body, getPtr mode], void)

proc bodyGetMode*(self: PhysicsServer2D; body: RID): PhysicsServer2D_BodyMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_mode", 3261702585)
  methodbind.ptrcall(self, [getPtr body], PhysicsServer2D_BodyMode)

proc bodyAddShape*(self: PhysicsServer2D; body: RID; shape: RID; transform: Transform2D = transform2D(); disabled: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_add_shape", 339056240)
  methodbind.ptrcall(self, [getPtr body, getPtr shape, getPtr transform, getPtr disabled], void)

proc bodySetShape*(self: PhysicsServer2D; body: RID; shapeIdx: int32; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_shape", 2310537182)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr shape], void)

proc bodySetShapeTransform*(self: PhysicsServer2D; body: RID; shapeIdx: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_shape_transform", 736082694)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr transform], void)

proc bodyGetShapeCount*(self: PhysicsServer2D; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_shape_count", 2198884583)
  methodbind.ptrcall(self, [getPtr body], int32)

proc bodyGetShape*(self: PhysicsServer2D; body: RID; shapeIdx: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_shape", 1066463050)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], RID)

proc bodyGetShapeTransform*(self: PhysicsServer2D; body: RID; shapeIdx: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_shape_transform", 1324854622)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], Transform2D)

proc bodyRemoveShape*(self: PhysicsServer2D; body: RID; shapeIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_remove_shape", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx], void)

proc bodyClearShapes*(self: PhysicsServer2D; body: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_clear_shapes", 2722037293)
  methodbind.ptrcall(self, [getPtr body], void)

proc bodySetShapeDisabled*(self: PhysicsServer2D; body: RID; shapeIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_shape_disabled", 2658558584)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr disabled], void)

proc bodySetShapeAsOneWayCollision*(self: PhysicsServer2D; body: RID; shapeIdx: int32; enable: bool; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_shape_as_one_way_collision", 2556489974)
  methodbind.ptrcall(self, [getPtr body, getPtr shapeIdx, getPtr enable, getPtr margin], void)

proc bodyAttachObjectInstanceId*(self: PhysicsServer2D; body: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_attach_object_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr id], void)

proc bodyGetObjectInstanceId*(self: PhysicsServer2D; body: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_object_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint64)

proc bodyAttachCanvasInstanceId*(self: PhysicsServer2D; body: RID; id: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_attach_canvas_instance_id", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr id], void)

proc bodyGetCanvasInstanceId*(self: PhysicsServer2D; body: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_canvas_instance_id", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint64)

proc bodySetContinuousCollisionDetectionMode*(self: PhysicsServer2D; body: RID; mode: PhysicsServer2D_CCDMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_continuous_collision_detection_mode", 1882257015)
  methodbind.ptrcall(self, [getPtr body, getPtr mode], void)

proc bodyGetContinuousCollisionDetectionMode*(self: PhysicsServer2D; body: RID): PhysicsServer2D_CCDMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_continuous_collision_detection_mode", 2661282217)
  methodbind.ptrcall(self, [getPtr body], PhysicsServer2D_CCDMode)

proc bodySetCollisionLayer*(self: PhysicsServer2D; body: RID; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_collision_layer", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr layer], void)

proc bodyGetCollisionLayer*(self: PhysicsServer2D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_collision_layer", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc bodySetCollisionMask*(self: PhysicsServer2D; body: RID; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_collision_mask", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr mask], void)

proc bodyGetCollisionMask*(self: PhysicsServer2D; body: RID): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_collision_mask", 2198884583)
  methodbind.ptrcall(self, [getPtr body], uint32)

proc bodySetCollisionPriority*(self: PhysicsServer2D; body: RID; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_collision_priority", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr priority], void)

proc bodyGetCollisionPriority*(self: PhysicsServer2D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_collision_priority", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc bodySetParam*(self: PhysicsServer2D; body: RID; param: PhysicsServer2D_BodyParameter; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_param", 2715630609)
  methodbind.ptrcall(self, [getPtr body, getPtr param, getPtr value], void)

proc bodyGetParam*(self: PhysicsServer2D; body: RID; param: PhysicsServer2D_BodyParameter): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_param", 3208033526)
  methodbind.ptrcall(self, [getPtr body, getPtr param], Variant)

proc bodyResetMassProperties*(self: PhysicsServer2D; body: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_reset_mass_properties", 2722037293)
  methodbind.ptrcall(self, [getPtr body], void)

proc bodySetState*(self: PhysicsServer2D; body: RID; state: PhysicsServer2D_BodyState; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_state", 1706355209)
  methodbind.ptrcall(self, [getPtr body, getPtr state, getPtr value], void)

proc bodyGetState*(self: PhysicsServer2D; body: RID; state: PhysicsServer2D_BodyState): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_state", 4036367961)
  methodbind.ptrcall(self, [getPtr body, getPtr state], Variant)

proc bodyApplyCentralImpulse*(self: PhysicsServer2D; body: RID; impulse: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_central_impulse", 3201125042)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse], void)

proc bodyApplyTorqueImpulse*(self: PhysicsServer2D; body: RID; impulse: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_torque_impulse", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse], void)

proc bodyApplyImpulse*(self: PhysicsServer2D; body: RID; impulse: Vector2; position: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_impulse", 205485391)
  methodbind.ptrcall(self, [getPtr body, getPtr impulse, getPtr position], void)

proc bodyApplyCentralForce*(self: PhysicsServer2D; body: RID; force: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_central_force", 3201125042)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyApplyForce*(self: PhysicsServer2D; body: RID; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_force", 205485391)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position], void)

proc bodyApplyTorque*(self: PhysicsServer2D; body: RID; torque: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_apply_torque", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodyAddConstantCentralForce*(self: PhysicsServer2D; body: RID; force: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_add_constant_central_force", 3201125042)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyAddConstantForce*(self: PhysicsServer2D; body: RID; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_add_constant_force", 205485391)
  methodbind.ptrcall(self, [getPtr body, getPtr force, getPtr position], void)

proc bodyAddConstantTorque*(self: PhysicsServer2D; body: RID; torque: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_add_constant_torque", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodySetConstantForce*(self: PhysicsServer2D; body: RID; force: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_constant_force", 3201125042)
  methodbind.ptrcall(self, [getPtr body, getPtr force], void)

proc bodyGetConstantForce*(self: PhysicsServer2D; body: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_constant_force", 2440833711)
  methodbind.ptrcall(self, [getPtr body], Vector2)

proc bodySetConstantTorque*(self: PhysicsServer2D; body: RID; torque: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_constant_torque", 1794382983)
  methodbind.ptrcall(self, [getPtr body, getPtr torque], void)

proc bodyGetConstantTorque*(self: PhysicsServer2D; body: RID): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_constant_torque", 866169185)
  methodbind.ptrcall(self, [getPtr body], Float)

proc bodySetAxisVelocity*(self: PhysicsServer2D; body: RID; axisVelocity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_axis_velocity", 3201125042)
  methodbind.ptrcall(self, [getPtr body, getPtr axisVelocity], void)

proc bodyAddCollisionException*(self: PhysicsServer2D; body: RID; exceptedBody: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_add_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody], void)

proc bodyRemoveCollisionException*(self: PhysicsServer2D; body: RID; exceptedBody: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_remove_collision_exception", 395945892)
  methodbind.ptrcall(self, [getPtr body, getPtr exceptedBody], void)

proc bodySetMaxContactsReported*(self: PhysicsServer2D; body: RID; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_max_contacts_reported", 3411492887)
  methodbind.ptrcall(self, [getPtr body, getPtr amount], void)

proc bodyGetMaxContactsReported*(self: PhysicsServer2D; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_max_contacts_reported", 2198884583)
  methodbind.ptrcall(self, [getPtr body], int32)

proc bodySetOmitForceIntegration*(self: PhysicsServer2D; body: RID; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_omit_force_integration", 1265174801)
  methodbind.ptrcall(self, [getPtr body, getPtr enable], void)

proc bodyIsOmittingForceIntegration*(self: PhysicsServer2D; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_is_omitting_force_integration", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)

proc bodySetStateSyncCallback*(self: PhysicsServer2D; body: RID; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_state_sync_callback", 3379118538)
  methodbind.ptrcall(self, [getPtr body, getPtr callable], void)

proc bodySetForceIntegrationCallback*(self: PhysicsServer2D; body: RID; callable: Callable; userdata: Variant = default(Variant)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_set_force_integration_callback", 3059434249)
  methodbind.ptrcall(self, [getPtr body, getPtr callable, getPtr userdata], void)

proc bodyTestMotion*(self: PhysicsServer2D; body: RID; parameters: gdref PhysicsTestMotionParameters2D; retval: gdref PhysicsTestMotionResult2D = default gdref PhysicsTestMotionResult2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_test_motion", 1699844009)
  methodbind.ptrcall(self, [getPtr body, getPtr parameters, getPtr retval], bool)

proc bodyGetDirectState*(self: PhysicsServer2D; body: RID): PhysicsDirectBodyState2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "body_get_direct_state", 1191931871)
  methodbind.ptrcall(self, [getPtr body], PhysicsDirectBodyState2D)

proc jointCreate*(self: PhysicsServer2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_create", 529393457)
  methodbind.ptrcall(self, [], RID)

proc jointClear*(self: PhysicsServer2D; joint: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr joint], void)

proc jointSetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_JointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_set_param", 3972556514)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc jointGetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_JointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_get_param", 4016448949)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc jointDisableCollisionsBetweenBodies*(self: PhysicsServer2D; joint: RID; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_disable_collisions_between_bodies", 1265174801)
  methodbind.ptrcall(self, [getPtr joint, getPtr disable], void)

proc jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer2D; joint: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_is_disabled_collisions_between_bodies", 4155700596)
  methodbind.ptrcall(self, [getPtr joint], bool)

proc jointMakePin*(self: PhysicsServer2D; joint: RID; anchor: Vector2; bodyA: RID; bodyB: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_make_pin", 1612646186)
  methodbind.ptrcall(self, [getPtr joint, getPtr anchor, getPtr bodyA, getPtr bodyB], void)

proc jointMakeGroove*(self: PhysicsServer2D; joint: RID; groove1A: Vector2; groove2A: Vector2; anchorB: Vector2; bodyA: RID = RID(); bodyB: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_make_groove", 481430435)
  methodbind.ptrcall(self, [getPtr joint, getPtr groove1A, getPtr groove2A, getPtr anchorB, getPtr bodyA, getPtr bodyB], void)

proc jointMakeDampedSpring*(self: PhysicsServer2D; joint: RID; anchorA: Vector2; anchorB: Vector2; bodyA: RID; bodyB: RID = RID()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_make_damped_spring", 1994657646)
  methodbind.ptrcall(self, [getPtr joint, getPtr anchorA, getPtr anchorB, getPtr bodyA, getPtr bodyB], void)

proc pinJointSetFlag*(self: PhysicsServer2D; joint: RID; flag: PhysicsServer2D_PinJointFlag; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "pin_joint_set_flag", 3520002352)
  methodbind.ptrcall(self, [getPtr joint, getPtr flag, getPtr enabled], void)

proc pinJointGetFlag*(self: PhysicsServer2D; joint: RID; flag: PhysicsServer2D_PinJointFlag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "pin_joint_get_flag", 2647867364)
  methodbind.ptrcall(self, [getPtr joint, getPtr flag], bool)

proc pinJointSetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_PinJointParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "pin_joint_set_param", 550574241)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc pinJointGetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_PinJointParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "pin_joint_get_param", 348281383)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc dampedSpringJointSetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_DampedSpringParam; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "damped_spring_joint_set_param", 220564071)
  methodbind.ptrcall(self, [getPtr joint, getPtr param, getPtr value], void)

proc dampedSpringJointGetParam*(self: PhysicsServer2D; joint: RID; param: PhysicsServer2D_DampedSpringParam): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "damped_spring_joint_get_param", 2075871277)
  methodbind.ptrcall(self, [getPtr joint, getPtr param], Float)

proc jointGetType*(self: PhysicsServer2D; joint: RID): PhysicsServer2D_JointType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "joint_get_type", 4262502231)
  methodbind.ptrcall(self, [getPtr joint], PhysicsServer2D_JointType)

proc freeRid*(self: PhysicsServer2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc setActive*(self: PhysicsServer2D; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getProcessInfo*(self: PhysicsServer2D; processInfo: PhysicsServer2D_ProcessInfo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer2D, "get_process_info", 576496006)
  methodbind.ptrcall(self, [getPtr processInfo], int32)
