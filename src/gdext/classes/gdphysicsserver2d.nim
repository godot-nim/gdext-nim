{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc worldBoundaryShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "world_boundary_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc separationRayShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "separation_ray_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc segmentShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "segment_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc circleShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "circle_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc rectangleShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "rectangle_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc capsuleShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "capsule_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc convexPolygonShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "convex_polygon_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc concavePolygonShapeCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "concave_polygon_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc shapeSetData*(self: PhysicsServer2D; shape: Rid; data: Variant): void =
  expandMethodBind(className PhysicsServer2D, "shape_set_data", 3175752987)
  var `?param` = [getPtr shape, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeGetType*(self: PhysicsServer2D; shape: Rid): PhysicsServer2D_ShapeType =
  expandMethodBind(className PhysicsServer2D, "shape_get_type", 1240598777)
  var `?param` = [getPtr shape]
  var ret: encoded PhysicsServer2D_ShapeType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer2D_ShapeType)

proc shapeGetData*(self: PhysicsServer2D; shape: Rid): Variant =
  expandMethodBind(className PhysicsServer2D, "shape_get_data", 4171304767)
  var `?param` = [getPtr shape]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc spaceCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "space_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc spaceSetActive*(self: PhysicsServer2D; space: Rid; active: bool): void =
  expandMethodBind(className PhysicsServer2D, "space_set_active", 1265174801)
  var `?param` = [getPtr space, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc spaceIsActive*(self: PhysicsServer2D; space: Rid): bool =
  expandMethodBind(className PhysicsServer2D, "space_is_active", 4155700596)
  var `?param` = [getPtr space]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc spaceSetParam*(self: PhysicsServer2D; space: Rid; param: PhysicsServer2D_SpaceParameter; value: Float): void =
  expandMethodBind(className PhysicsServer2D, "space_set_param", 949194586)
  var `?param` = [getPtr space, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc spaceGetParam*(self: PhysicsServer2D; space: Rid; param: PhysicsServer2D_SpaceParameter): Float =
  expandMethodBind(className PhysicsServer2D, "space_get_param", 874111783)
  var `?param` = [getPtr space, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc spaceGetDirectState*(self: PhysicsServer2D; space: Rid): PhysicsDirectSpaceState2D =
  expandMethodBind(className PhysicsServer2D, "space_get_direct_state", 3160173886)
  var `?param` = [getPtr space]
  var ret: encoded PhysicsDirectSpaceState2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState2D)

proc areaCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "area_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc areaSetSpace*(self: PhysicsServer2D; area: Rid; space: Rid): void =
  expandMethodBind(className PhysicsServer2D, "area_set_space", 395945892)
  var `?param` = [getPtr area, getPtr space]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetSpace*(self: PhysicsServer2D; area: Rid): Rid =
  expandMethodBind(className PhysicsServer2D, "area_get_space", 3814569979)
  var `?param` = [getPtr area]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc areaAddShape*(self: PhysicsServer2D; area: Rid; shape: Rid; transform: Transform2D = transform2D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer2D, "area_add_shape", 339056240)
  var `?param` = [getPtr area, getPtr shape, getPtr transform, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShape*(self: PhysicsServer2D; area: Rid; shapeIdx: int32; shape: Rid): void =
  expandMethodBind(className PhysicsServer2D, "area_set_shape", 2310537182)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShapeTransform*(self: PhysicsServer2D; area: Rid; shapeIdx: int32; transform: Transform2D): void =
  expandMethodBind(className PhysicsServer2D, "area_set_shape_transform", 736082694)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShapeDisabled*(self: PhysicsServer2D; area: Rid; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer2D, "area_set_shape_disabled", 2658558584)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetShapeCount*(self: PhysicsServer2D; area: Rid): int32 =
  expandMethodBind(className PhysicsServer2D, "area_get_shape_count", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc areaGetShape*(self: PhysicsServer2D; area: Rid; shapeIdx: int32): Rid =
  expandMethodBind(className PhysicsServer2D, "area_get_shape", 1066463050)
  var `?param` = [getPtr area, getPtr shapeIdx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc areaGetShapeTransform*(self: PhysicsServer2D; area: Rid; shapeIdx: int32): Transform2D =
  expandMethodBind(className PhysicsServer2D, "area_get_shape_transform", 1324854622)
  var `?param` = [getPtr area, getPtr shapeIdx]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc areaRemoveShape*(self: PhysicsServer2D; area: Rid; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer2D, "area_remove_shape", 3411492887)
  var `?param` = [getPtr area, getPtr shapeIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaClearShapes*(self: PhysicsServer2D; area: Rid): void =
  expandMethodBind(className PhysicsServer2D, "area_clear_shapes", 2722037293)
  var `?param` = [getPtr area]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetCollisionLayer*(self: PhysicsServer2D; area: Rid; layer: uint32): void =
  expandMethodBind(className PhysicsServer2D, "area_set_collision_layer", 3411492887)
  var `?param` = [getPtr area, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetCollisionLayer*(self: PhysicsServer2D; area: Rid): uint32 =
  expandMethodBind(className PhysicsServer2D, "area_get_collision_layer", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetCollisionMask*(self: PhysicsServer2D; area: Rid; mask: uint32): void =
  expandMethodBind(className PhysicsServer2D, "area_set_collision_mask", 3411492887)
  var `?param` = [getPtr area, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetCollisionMask*(self: PhysicsServer2D; area: Rid): uint32 =
  expandMethodBind(className PhysicsServer2D, "area_get_collision_mask", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetParam*(self: PhysicsServer2D; area: Rid; param: PhysicsServer2D_AreaParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer2D, "area_set_param", 1257146028)
  var `?param` = [getPtr area, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetTransform*(self: PhysicsServer2D; area: Rid; transform: Transform2D): void =
  expandMethodBind(className PhysicsServer2D, "area_set_transform", 1246044741)
  var `?param` = [getPtr area, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetParam*(self: PhysicsServer2D; area: Rid; param: PhysicsServer2D_AreaParameter): Variant =
  expandMethodBind(className PhysicsServer2D, "area_get_param", 3047435120)
  var `?param` = [getPtr area, getPtr param]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc areaGetTransform*(self: PhysicsServer2D; area: Rid): Transform2D =
  expandMethodBind(className PhysicsServer2D, "area_get_transform", 213527486)
  var `?param` = [getPtr area]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc areaAttachObjectInstanceId*(self: PhysicsServer2D; area: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer2D, "area_attach_object_instance_id", 3411492887)
  var `?param` = [getPtr area, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetObjectInstanceId*(self: PhysicsServer2D; area: Rid): uint64 =
  expandMethodBind(className PhysicsServer2D, "area_get_object_instance_id", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc areaAttachCanvasInstanceId*(self: PhysicsServer2D; area: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer2D, "area_attach_canvas_instance_id", 3411492887)
  var `?param` = [getPtr area, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetCanvasInstanceId*(self: PhysicsServer2D; area: Rid): uint64 =
  expandMethodBind(className PhysicsServer2D, "area_get_canvas_instance_id", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc areaSetMonitorCallback*(self: PhysicsServer2D; area: Rid; callback: Callable): void =
  expandMethodBind(className PhysicsServer2D, "area_set_monitor_callback", 3379118538)
  var `?param` = [getPtr area, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetAreaMonitorCallback*(self: PhysicsServer2D; area: Rid; callback: Callable): void =
  expandMethodBind(className PhysicsServer2D, "area_set_area_monitor_callback", 3379118538)
  var `?param` = [getPtr area, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetMonitorable*(self: PhysicsServer2D; area: Rid; monitorable: bool): void =
  expandMethodBind(className PhysicsServer2D, "area_set_monitorable", 1265174801)
  var `?param` = [getPtr area, getPtr monitorable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "body_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc bodySetSpace*(self: PhysicsServer2D; body: Rid; space: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_set_space", 395945892)
  var `?param` = [getPtr body, getPtr space]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetSpace*(self: PhysicsServer2D; body: Rid): Rid =
  expandMethodBind(className PhysicsServer2D, "body_get_space", 3814569979)
  var `?param` = [getPtr body]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc bodySetMode*(self: PhysicsServer2D; body: Rid; mode: PhysicsServer2D_BodyMode): void =
  expandMethodBind(className PhysicsServer2D, "body_set_mode", 1658067650)
  var `?param` = [getPtr body, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetMode*(self: PhysicsServer2D; body: Rid): PhysicsServer2D_BodyMode =
  expandMethodBind(className PhysicsServer2D, "body_get_mode", 3261702585)
  var `?param` = [getPtr body]
  var ret: encoded PhysicsServer2D_BodyMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer2D_BodyMode)

proc bodyAddShape*(self: PhysicsServer2D; body: Rid; shape: Rid; transform: Transform2D = transform2D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer2D, "body_add_shape", 339056240)
  var `?param` = [getPtr body, getPtr shape, getPtr transform, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShape*(self: PhysicsServer2D; body: Rid; shapeIdx: int32; shape: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_set_shape", 2310537182)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShapeTransform*(self: PhysicsServer2D; body: Rid; shapeIdx: int32; transform: Transform2D): void =
  expandMethodBind(className PhysicsServer2D, "body_set_shape_transform", 736082694)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetShapeCount*(self: PhysicsServer2D; body: Rid): int32 =
  expandMethodBind(className PhysicsServer2D, "body_get_shape_count", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc bodyGetShape*(self: PhysicsServer2D; body: Rid; shapeIdx: int32): Rid =
  expandMethodBind(className PhysicsServer2D, "body_get_shape", 1066463050)
  var `?param` = [getPtr body, getPtr shapeIdx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc bodyGetShapeTransform*(self: PhysicsServer2D; body: Rid; shapeIdx: int32): Transform2D =
  expandMethodBind(className PhysicsServer2D, "body_get_shape_transform", 1324854622)
  var `?param` = [getPtr body, getPtr shapeIdx]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc bodyRemoveShape*(self: PhysicsServer2D; body: Rid; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer2D, "body_remove_shape", 3411492887)
  var `?param` = [getPtr body, getPtr shapeIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyClearShapes*(self: PhysicsServer2D; body: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_clear_shapes", 2722037293)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShapeDisabled*(self: PhysicsServer2D; body: Rid; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer2D, "body_set_shape_disabled", 2658558584)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShapeAsOneWayCollision*(self: PhysicsServer2D; body: Rid; shapeIdx: int32; enable: bool; margin: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_set_shape_as_one_way_collision", 2556489974)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr enable, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAttachObjectInstanceId*(self: PhysicsServer2D; body: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer2D, "body_attach_object_instance_id", 3411492887)
  var `?param` = [getPtr body, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetObjectInstanceId*(self: PhysicsServer2D; body: Rid): uint64 =
  expandMethodBind(className PhysicsServer2D, "body_get_object_instance_id", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc bodyAttachCanvasInstanceId*(self: PhysicsServer2D; body: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer2D, "body_attach_canvas_instance_id", 3411492887)
  var `?param` = [getPtr body, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCanvasInstanceId*(self: PhysicsServer2D; body: Rid): uint64 =
  expandMethodBind(className PhysicsServer2D, "body_get_canvas_instance_id", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc bodySetContinuousCollisionDetectionMode*(self: PhysicsServer2D; body: Rid; mode: PhysicsServer2D_CcdMode): void =
  expandMethodBind(className PhysicsServer2D, "body_set_continuous_collision_detection_mode", 1882257015)
  var `?param` = [getPtr body, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetContinuousCollisionDetectionMode*(self: PhysicsServer2D; body: Rid): PhysicsServer2D_CcdMode =
  expandMethodBind(className PhysicsServer2D, "body_get_continuous_collision_detection_mode", 2661282217)
  var `?param` = [getPtr body]
  var ret: encoded PhysicsServer2D_CcdMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer2D_CcdMode)

proc bodySetCollisionLayer*(self: PhysicsServer2D; body: Rid; layer: uint32): void =
  expandMethodBind(className PhysicsServer2D, "body_set_collision_layer", 3411492887)
  var `?param` = [getPtr body, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionLayer*(self: PhysicsServer2D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer2D, "body_get_collision_layer", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionMask*(self: PhysicsServer2D; body: Rid; mask: uint32): void =
  expandMethodBind(className PhysicsServer2D, "body_set_collision_mask", 3411492887)
  var `?param` = [getPtr body, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionMask*(self: PhysicsServer2D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer2D, "body_get_collision_mask", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionPriority*(self: PhysicsServer2D; body: Rid; priority: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_set_collision_priority", 1794382983)
  var `?param` = [getPtr body, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionPriority*(self: PhysicsServer2D; body: Rid): Float =
  expandMethodBind(className PhysicsServer2D, "body_get_collision_priority", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc bodySetParam*(self: PhysicsServer2D; body: Rid; param: PhysicsServer2D_BodyParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer2D, "body_set_param", 2715630609)
  var `?param` = [getPtr body, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetParam*(self: PhysicsServer2D; body: Rid; param: PhysicsServer2D_BodyParameter): Variant =
  expandMethodBind(className PhysicsServer2D, "body_get_param", 3208033526)
  var `?param` = [getPtr body, getPtr param]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc bodyResetMassProperties*(self: PhysicsServer2D; body: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_reset_mass_properties", 2722037293)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetState*(self: PhysicsServer2D; body: Rid; state: PhysicsServer2D_BodyState; value: Variant): void =
  expandMethodBind(className PhysicsServer2D, "body_set_state", 1706355209)
  var `?param` = [getPtr body, getPtr state, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetState*(self: PhysicsServer2D; body: Rid; state: PhysicsServer2D_BodyState): Variant =
  expandMethodBind(className PhysicsServer2D, "body_get_state", 4036367961)
  var `?param` = [getPtr body, getPtr state]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc bodyApplyCentralImpulse*(self: PhysicsServer2D; body: Rid; impulse: Vector2): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_central_impulse", 3201125042)
  var `?param` = [getPtr body, getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyTorqueImpulse*(self: PhysicsServer2D; body: Rid; impulse: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_torque_impulse", 1794382983)
  var `?param` = [getPtr body, getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyImpulse*(self: PhysicsServer2D; body: Rid; impulse: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_impulse", 205485391)
  var `?param` = [getPtr body, getPtr impulse, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyCentralForce*(self: PhysicsServer2D; body: Rid; force: Vector2): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_central_force", 3201125042)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyForce*(self: PhysicsServer2D; body: Rid; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_force", 205485391)
  var `?param` = [getPtr body, getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyTorque*(self: PhysicsServer2D; body: Rid; torque: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_apply_torque", 1794382983)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantCentralForce*(self: PhysicsServer2D; body: Rid; force: Vector2): void =
  expandMethodBind(className PhysicsServer2D, "body_add_constant_central_force", 3201125042)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantForce*(self: PhysicsServer2D; body: Rid; force: Vector2; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className PhysicsServer2D, "body_add_constant_force", 205485391)
  var `?param` = [getPtr body, getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantTorque*(self: PhysicsServer2D; body: Rid; torque: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_add_constant_torque", 1794382983)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetConstantForce*(self: PhysicsServer2D; body: Rid; force: Vector2): void =
  expandMethodBind(className PhysicsServer2D, "body_set_constant_force", 3201125042)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetConstantForce*(self: PhysicsServer2D; body: Rid): Vector2 =
  expandMethodBind(className PhysicsServer2D, "body_get_constant_force", 2440833711)
  var `?param` = [getPtr body]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc bodySetConstantTorque*(self: PhysicsServer2D; body: Rid; torque: Float): void =
  expandMethodBind(className PhysicsServer2D, "body_set_constant_torque", 1794382983)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetConstantTorque*(self: PhysicsServer2D; body: Rid): Float =
  expandMethodBind(className PhysicsServer2D, "body_get_constant_torque", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc bodySetAxisVelocity*(self: PhysicsServer2D; body: Rid; axisVelocity: Vector2): void =
  expandMethodBind(className PhysicsServer2D, "body_set_axis_velocity", 3201125042)
  var `?param` = [getPtr body, getPtr axisVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddCollisionException*(self: PhysicsServer2D; body: Rid; exceptedBody: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_add_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr exceptedBody]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyRemoveCollisionException*(self: PhysicsServer2D; body: Rid; exceptedBody: Rid): void =
  expandMethodBind(className PhysicsServer2D, "body_remove_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr exceptedBody]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetMaxContactsReported*(self: PhysicsServer2D; body: Rid; amount: int32): void =
  expandMethodBind(className PhysicsServer2D, "body_set_max_contacts_reported", 3411492887)
  var `?param` = [getPtr body, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetMaxContactsReported*(self: PhysicsServer2D; body: Rid): int32 =
  expandMethodBind(className PhysicsServer2D, "body_get_max_contacts_reported", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc bodySetOmitForceIntegration*(self: PhysicsServer2D; body: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer2D, "body_set_omit_force_integration", 1265174801)
  var `?param` = [getPtr body, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyIsOmittingForceIntegration*(self: PhysicsServer2D; body: Rid): bool =
  expandMethodBind(className PhysicsServer2D, "body_is_omitting_force_integration", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodySetStateSyncCallback*(self: PhysicsServer2D; body: Rid; callable: Callable): void =
  expandMethodBind(className PhysicsServer2D, "body_set_state_sync_callback", 3379118538)
  var `?param` = [getPtr body, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetForceIntegrationCallback*(self: PhysicsServer2D; body: Rid; callable: Callable; userdata: Variant = default(Variant)): void =
  expandMethodBind(className PhysicsServer2D, "body_set_force_integration_callback", 3059434249)
  var `?param` = [getPtr body, getPtr callable, getPtr userdata]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyTestMotion*(self: PhysicsServer2D; body: Rid; parameters: gdref PhysicsTestMotionParameters2D; retval: gdref PhysicsTestMotionResult2D = default gdref PhysicsTestMotionResult2D): bool =
  expandMethodBind(className PhysicsServer2D, "body_test_motion", 1699844009)
  var `?param` = [getPtr body, getPtr parameters, getPtr retval]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodyGetDirectState*(self: PhysicsServer2D; body: Rid): PhysicsDirectBodyState2D =
  expandMethodBind(className PhysicsServer2D, "body_get_direct_state", 1191931871)
  var `?param` = [getPtr body]
  var ret: encoded PhysicsDirectBodyState2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsDirectBodyState2D)

proc jointCreate*(self: PhysicsServer2D): Rid =
  expandMethodBind(className PhysicsServer2D, "joint_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc jointClear*(self: PhysicsServer2D; joint: Rid): void =
  expandMethodBind(className PhysicsServer2D, "joint_clear", 2722037293)
  var `?param` = [getPtr joint]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointSetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_JointParam; value: Float): void =
  expandMethodBind(className PhysicsServer2D, "joint_set_param", 3972556514)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointGetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_JointParam): Float =
  expandMethodBind(className PhysicsServer2D, "joint_get_param", 4016448949)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc jointDisableCollisionsBetweenBodies*(self: PhysicsServer2D; joint: Rid; disable: bool): void =
  expandMethodBind(className PhysicsServer2D, "joint_disable_collisions_between_bodies", 1265174801)
  var `?param` = [getPtr joint, getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer2D; joint: Rid): bool =
  expandMethodBind(className PhysicsServer2D, "joint_is_disabled_collisions_between_bodies", 4155700596)
  var `?param` = [getPtr joint]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc jointMakePin*(self: PhysicsServer2D; joint: Rid; anchor: Vector2; bodyA: Rid; bodyB: Rid = RID()): void =
  expandMethodBind(className PhysicsServer2D, "joint_make_pin", 1612646186)
  var `?param` = [getPtr joint, getPtr anchor, getPtr bodyA, getPtr bodyB]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointMakeGroove*(self: PhysicsServer2D; joint: Rid; groove1A: Vector2; groove2A: Vector2; anchorB: Vector2; bodyA: Rid = RID(); bodyB: Rid = RID()): void =
  expandMethodBind(className PhysicsServer2D, "joint_make_groove", 481430435)
  var `?param` = [getPtr joint, getPtr groove1A, getPtr groove2A, getPtr anchorB, getPtr bodyA, getPtr bodyB]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointMakeDampedSpring*(self: PhysicsServer2D; joint: Rid; anchorA: Vector2; anchorB: Vector2; bodyA: Rid; bodyB: Rid = RID()): void =
  expandMethodBind(className PhysicsServer2D, "joint_make_damped_spring", 1994657646)
  var `?param` = [getPtr joint, getPtr anchorA, getPtr anchorB, getPtr bodyA, getPtr bodyB]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointSetFlag*(self: PhysicsServer2D; joint: Rid; flag: PhysicsServer2D_PinJointFlag; enabled: bool): void =
  expandMethodBind(className PhysicsServer2D, "pin_joint_set_flag", 3520002352)
  var `?param` = [getPtr joint, getPtr flag, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointGetFlag*(self: PhysicsServer2D; joint: Rid; flag: PhysicsServer2D_PinJointFlag): bool =
  expandMethodBind(className PhysicsServer2D, "pin_joint_get_flag", 2647867364)
  var `?param` = [getPtr joint, getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc pinJointSetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_PinJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer2D, "pin_joint_set_param", 550574241)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointGetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_PinJointParam): Float =
  expandMethodBind(className PhysicsServer2D, "pin_joint_get_param", 348281383)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc dampedSpringJointSetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_DampedSpringParam; value: Float): void =
  expandMethodBind(className PhysicsServer2D, "damped_spring_joint_set_param", 220564071)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc dampedSpringJointGetParam*(self: PhysicsServer2D; joint: Rid; param: PhysicsServer2D_DampedSpringParam): Float =
  expandMethodBind(className PhysicsServer2D, "damped_spring_joint_get_param", 2075871277)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc jointGetType*(self: PhysicsServer2D; joint: Rid): PhysicsServer2D_JointType =
  expandMethodBind(className PhysicsServer2D, "joint_get_type", 4262502231)
  var `?param` = [getPtr joint]
  var ret: encoded PhysicsServer2D_JointType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer2D_JointType)

proc freeRid*(self: PhysicsServer2D; rid: Rid): void =
  expandMethodBind(className PhysicsServer2D, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc setActive*(self: PhysicsServer2D; active: bool): void =
  expandMethodBind(className PhysicsServer2D, "set_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessInfo*(self: PhysicsServer2D; processInfo: PhysicsServer2D_ProcessInfo): int32 =
  expandMethodBind(className PhysicsServer2D, "get_process_info", 576496006)
  var `?param` = [getPtr processInfo]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

const PhysicsServer2D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsServer2D]): Table[string, string] = PhysicsServer2D_vmap