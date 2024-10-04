{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc worldBoundaryShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "world_boundary_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc separationRayShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "separation_ray_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc sphereShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "sphere_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc boxShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "box_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc capsuleShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "capsule_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc cylinderShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "cylinder_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc convexPolygonShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "convex_polygon_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc concavePolygonShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "concave_polygon_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc heightmapShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "heightmap_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc customShapeCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "custom_shape_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc shapeSetData*(self: PhysicsServer3D; shape: Rid; data: Variant): void =
  expandMethodBind(className PhysicsServer3D, "shape_set_data", 3175752987)
  var `?param` = [getPtr shape, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeSetMargin*(self: PhysicsServer3D; shape: Rid; margin: Float): void =
  expandMethodBind(className PhysicsServer3D, "shape_set_margin", 1794382983)
  var `?param` = [getPtr shape, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapeGetType*(self: PhysicsServer3D; shape: Rid): PhysicsServer3D_ShapeType =
  expandMethodBind(className PhysicsServer3D, "shape_get_type", 3418923367)
  var `?param` = [getPtr shape]
  var ret: encoded PhysicsServer3D_ShapeType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer3D_ShapeType)

proc shapeGetData*(self: PhysicsServer3D; shape: Rid): Variant =
  expandMethodBind(className PhysicsServer3D, "shape_get_data", 4171304767)
  var `?param` = [getPtr shape]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc shapeGetMargin*(self: PhysicsServer3D; shape: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "shape_get_margin", 866169185)
  var `?param` = [getPtr shape]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc spaceCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "space_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc spaceSetActive*(self: PhysicsServer3D; space: Rid; active: bool): void =
  expandMethodBind(className PhysicsServer3D, "space_set_active", 1265174801)
  var `?param` = [getPtr space, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc spaceIsActive*(self: PhysicsServer3D; space: Rid): bool =
  expandMethodBind(className PhysicsServer3D, "space_is_active", 4155700596)
  var `?param` = [getPtr space]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc spaceSetParam*(self: PhysicsServer3D; space: Rid; param: PhysicsServer3D_SpaceParameter; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "space_set_param", 2406017470)
  var `?param` = [getPtr space, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc spaceGetParam*(self: PhysicsServer3D; space: Rid; param: PhysicsServer3D_SpaceParameter): Float =
  expandMethodBind(className PhysicsServer3D, "space_get_param", 1523206731)
  var `?param` = [getPtr space, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc spaceGetDirectState*(self: PhysicsServer3D; space: Rid): PhysicsDirectSpaceState3D =
  expandMethodBind(className PhysicsServer3D, "space_get_direct_state", 2048616813)
  var `?param` = [getPtr space]
  var ret: encoded PhysicsDirectSpaceState3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsDirectSpaceState3D)

proc areaCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "area_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc areaSetSpace*(self: PhysicsServer3D; area: Rid; space: Rid): void =
  expandMethodBind(className PhysicsServer3D, "area_set_space", 395945892)
  var `?param` = [getPtr area, getPtr space]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetSpace*(self: PhysicsServer3D; area: Rid): Rid =
  expandMethodBind(className PhysicsServer3D, "area_get_space", 3814569979)
  var `?param` = [getPtr area]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc areaAddShape*(self: PhysicsServer3D; area: Rid; shape: Rid; transform: Transform3D = transform3D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer3D, "area_add_shape", 3711419014)
  var `?param` = [getPtr area, getPtr shape, getPtr transform, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShape*(self: PhysicsServer3D; area: Rid; shapeIdx: int32; shape: Rid): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape", 2310537182)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShapeTransform*(self: PhysicsServer3D; area: Rid; shapeIdx: int32; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape_transform", 675327471)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetShapeDisabled*(self: PhysicsServer3D; area: Rid; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_shape_disabled", 2658558584)
  var `?param` = [getPtr area, getPtr shapeIdx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetShapeCount*(self: PhysicsServer3D; area: Rid): int32 =
  expandMethodBind(className PhysicsServer3D, "area_get_shape_count", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc areaGetShape*(self: PhysicsServer3D; area: Rid; shapeIdx: int32): Rid =
  expandMethodBind(className PhysicsServer3D, "area_get_shape", 1066463050)
  var `?param` = [getPtr area, getPtr shapeIdx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc areaGetShapeTransform*(self: PhysicsServer3D; area: Rid; shapeIdx: int32): Transform3D =
  expandMethodBind(className PhysicsServer3D, "area_get_shape_transform", 1050775521)
  var `?param` = [getPtr area, getPtr shapeIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc areaRemoveShape*(self: PhysicsServer3D; area: Rid; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer3D, "area_remove_shape", 3411492887)
  var `?param` = [getPtr area, getPtr shapeIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaClearShapes*(self: PhysicsServer3D; area: Rid): void =
  expandMethodBind(className PhysicsServer3D, "area_clear_shapes", 2722037293)
  var `?param` = [getPtr area]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetCollisionLayer*(self: PhysicsServer3D; area: Rid; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "area_set_collision_layer", 3411492887)
  var `?param` = [getPtr area, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetCollisionLayer*(self: PhysicsServer3D; area: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "area_get_collision_layer", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetCollisionMask*(self: PhysicsServer3D; area: Rid; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "area_set_collision_mask", 3411492887)
  var `?param` = [getPtr area, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetCollisionMask*(self: PhysicsServer3D; area: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "area_get_collision_mask", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc areaSetParam*(self: PhysicsServer3D; area: Rid; param: PhysicsServer3D_AreaParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "area_set_param", 2980114638)
  var `?param` = [getPtr area, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetTransform*(self: PhysicsServer3D; area: Rid; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "area_set_transform", 3935195649)
  var `?param` = [getPtr area, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetParam*(self: PhysicsServer3D; area: Rid; param: PhysicsServer3D_AreaParameter): Variant =
  expandMethodBind(className PhysicsServer3D, "area_get_param", 890056067)
  var `?param` = [getPtr area, getPtr param]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc areaGetTransform*(self: PhysicsServer3D; area: Rid): Transform3D =
  expandMethodBind(className PhysicsServer3D, "area_get_transform", 1128465797)
  var `?param` = [getPtr area]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc areaAttachObjectInstanceId*(self: PhysicsServer3D; area: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer3D, "area_attach_object_instance_id", 3411492887)
  var `?param` = [getPtr area, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaGetObjectInstanceId*(self: PhysicsServer3D; area: Rid): uint64 =
  expandMethodBind(className PhysicsServer3D, "area_get_object_instance_id", 2198884583)
  var `?param` = [getPtr area]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc areaSetMonitorCallback*(self: PhysicsServer3D; area: Rid; callback: Callable): void =
  expandMethodBind(className PhysicsServer3D, "area_set_monitor_callback", 3379118538)
  var `?param` = [getPtr area, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetAreaMonitorCallback*(self: PhysicsServer3D; area: Rid; callback: Callable): void =
  expandMethodBind(className PhysicsServer3D, "area_set_area_monitor_callback", 3379118538)
  var `?param` = [getPtr area, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetMonitorable*(self: PhysicsServer3D; area: Rid; monitorable: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_monitorable", 1265174801)
  var `?param` = [getPtr area, getPtr monitorable]
  methodbind.ptrcall(self, addr `?param`[0])

proc areaSetRayPickable*(self: PhysicsServer3D; area: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "area_set_ray_pickable", 1265174801)
  var `?param` = [getPtr area, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "body_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc bodySetSpace*(self: PhysicsServer3D; body: Rid; space: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_set_space", 395945892)
  var `?param` = [getPtr body, getPtr space]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetSpace*(self: PhysicsServer3D; body: Rid): Rid =
  expandMethodBind(className PhysicsServer3D, "body_get_space", 3814569979)
  var `?param` = [getPtr body]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc bodySetMode*(self: PhysicsServer3D; body: Rid; mode: PhysicsServer3D_BodyMode): void =
  expandMethodBind(className PhysicsServer3D, "body_set_mode", 606803466)
  var `?param` = [getPtr body, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetMode*(self: PhysicsServer3D; body: Rid): PhysicsServer3D_BodyMode =
  expandMethodBind(className PhysicsServer3D, "body_get_mode", 2488819728)
  var `?param` = [getPtr body]
  var ret: encoded PhysicsServer3D_BodyMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer3D_BodyMode)

proc bodySetCollisionLayer*(self: PhysicsServer3D; body: Rid; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_layer", 3411492887)
  var `?param` = [getPtr body, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionLayer*(self: PhysicsServer3D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_layer", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionMask*(self: PhysicsServer3D; body: Rid; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_mask", 3411492887)
  var `?param` = [getPtr body, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionMask*(self: PhysicsServer3D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_mask", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc bodySetCollisionPriority*(self: PhysicsServer3D; body: Rid; priority: Float): void =
  expandMethodBind(className PhysicsServer3D, "body_set_collision_priority", 1794382983)
  var `?param` = [getPtr body, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetCollisionPriority*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "body_get_collision_priority", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc bodyAddShape*(self: PhysicsServer3D; body: Rid; shape: Rid; transform: Transform3D = transform3D(); disabled: bool = false): void =
  expandMethodBind(className PhysicsServer3D, "body_add_shape", 3711419014)
  var `?param` = [getPtr body, getPtr shape, getPtr transform, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShape*(self: PhysicsServer3D; body: Rid; shapeIdx: int32; shape: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape", 2310537182)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShapeTransform*(self: PhysicsServer3D; body: Rid; shapeIdx: int32; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape_transform", 675327471)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetShapeDisabled*(self: PhysicsServer3D; body: Rid; shapeIdx: int32; disabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_shape_disabled", 2658558584)
  var `?param` = [getPtr body, getPtr shapeIdx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetShapeCount*(self: PhysicsServer3D; body: Rid): int32 =
  expandMethodBind(className PhysicsServer3D, "body_get_shape_count", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc bodyGetShape*(self: PhysicsServer3D; body: Rid; shapeIdx: int32): Rid =
  expandMethodBind(className PhysicsServer3D, "body_get_shape", 1066463050)
  var `?param` = [getPtr body, getPtr shapeIdx]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc bodyGetShapeTransform*(self: PhysicsServer3D; body: Rid; shapeIdx: int32): Transform3D =
  expandMethodBind(className PhysicsServer3D, "body_get_shape_transform", 1050775521)
  var `?param` = [getPtr body, getPtr shapeIdx]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc bodyRemoveShape*(self: PhysicsServer3D; body: Rid; shapeIdx: int32): void =
  expandMethodBind(className PhysicsServer3D, "body_remove_shape", 3411492887)
  var `?param` = [getPtr body, getPtr shapeIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyClearShapes*(self: PhysicsServer3D; body: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_clear_shapes", 2722037293)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAttachObjectInstanceId*(self: PhysicsServer3D; body: Rid; id: uint64): void =
  expandMethodBind(className PhysicsServer3D, "body_attach_object_instance_id", 3411492887)
  var `?param` = [getPtr body, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetObjectInstanceId*(self: PhysicsServer3D; body: Rid): uint64 =
  expandMethodBind(className PhysicsServer3D, "body_get_object_instance_id", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc bodySetEnableContinuousCollisionDetection*(self: PhysicsServer3D; body: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_enable_continuous_collision_detection", 1265174801)
  var `?param` = [getPtr body, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyIsContinuousCollisionDetectionEnabled*(self: PhysicsServer3D; body: Rid): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_continuous_collision_detection_enabled", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodySetParam*(self: PhysicsServer3D; body: Rid; param: PhysicsServer3D_BodyParameter; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "body_set_param", 910941953)
  var `?param` = [getPtr body, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetParam*(self: PhysicsServer3D; body: Rid; param: PhysicsServer3D_BodyParameter): Variant =
  expandMethodBind(className PhysicsServer3D, "body_get_param", 3385027841)
  var `?param` = [getPtr body, getPtr param]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc bodyResetMassProperties*(self: PhysicsServer3D; body: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_reset_mass_properties", 2722037293)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetState*(self: PhysicsServer3D; body: Rid; state: PhysicsServer3D_BodyState; value: Variant): void =
  expandMethodBind(className PhysicsServer3D, "body_set_state", 599977762)
  var `?param` = [getPtr body, getPtr state, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetState*(self: PhysicsServer3D; body: Rid; state: PhysicsServer3D_BodyState): Variant =
  expandMethodBind(className PhysicsServer3D, "body_get_state", 1850449534)
  var `?param` = [getPtr body, getPtr state]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc bodyApplyCentralImpulse*(self: PhysicsServer3D; body: Rid; impulse: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_central_impulse", 3227306858)
  var `?param` = [getPtr body, getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyImpulse*(self: PhysicsServer3D; body: Rid; impulse: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_impulse", 390416203)
  var `?param` = [getPtr body, getPtr impulse, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyTorqueImpulse*(self: PhysicsServer3D; body: Rid; impulse: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_torque_impulse", 3227306858)
  var `?param` = [getPtr body, getPtr impulse]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyCentralForce*(self: PhysicsServer3D; body: Rid; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_central_force", 3227306858)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyForce*(self: PhysicsServer3D; body: Rid; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_force", 390416203)
  var `?param` = [getPtr body, getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyApplyTorque*(self: PhysicsServer3D; body: Rid; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_apply_torque", 3227306858)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantCentralForce*(self: PhysicsServer3D; body: Rid; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_central_force", 3227306858)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantForce*(self: PhysicsServer3D; body: Rid; force: Vector3; position: Vector3 = vector3(0, 0, 0)): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_force", 390416203)
  var `?param` = [getPtr body, getPtr force, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyAddConstantTorque*(self: PhysicsServer3D; body: Rid; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_add_constant_torque", 3227306858)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetConstantForce*(self: PhysicsServer3D; body: Rid; force: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_constant_force", 3227306858)
  var `?param` = [getPtr body, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetConstantForce*(self: PhysicsServer3D; body: Rid): Vector3 =
  expandMethodBind(className PhysicsServer3D, "body_get_constant_force", 531438156)
  var `?param` = [getPtr body]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc bodySetConstantTorque*(self: PhysicsServer3D; body: Rid; torque: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_constant_torque", 3227306858)
  var `?param` = [getPtr body, getPtr torque]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetConstantTorque*(self: PhysicsServer3D; body: Rid): Vector3 =
  expandMethodBind(className PhysicsServer3D, "body_get_constant_torque", 531438156)
  var `?param` = [getPtr body]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc bodySetAxisVelocity*(self: PhysicsServer3D; body: Rid; axisVelocity: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "body_set_axis_velocity", 3227306858)
  var `?param` = [getPtr body, getPtr axisVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetAxisLock*(self: PhysicsServer3D; body: Rid; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_axis_lock", 2020836892)
  var `?param` = [getPtr body, getPtr axis, getPtr lock]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyIsAxisLocked*(self: PhysicsServer3D; body: Rid; axis: PhysicsServer3D_BodyAxis): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_axis_locked", 587853580)
  var `?param` = [getPtr body, getPtr axis]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodyAddCollisionException*(self: PhysicsServer3D; body: Rid; exceptedBody: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_add_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr exceptedBody]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyRemoveCollisionException*(self: PhysicsServer3D; body: Rid; exceptedBody: Rid): void =
  expandMethodBind(className PhysicsServer3D, "body_remove_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr exceptedBody]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetMaxContactsReported*(self: PhysicsServer3D; body: Rid; amount: int32): void =
  expandMethodBind(className PhysicsServer3D, "body_set_max_contacts_reported", 3411492887)
  var `?param` = [getPtr body, getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyGetMaxContactsReported*(self: PhysicsServer3D; body: Rid): int32 =
  expandMethodBind(className PhysicsServer3D, "body_get_max_contacts_reported", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc bodySetOmitForceIntegration*(self: PhysicsServer3D; body: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_omit_force_integration", 1265174801)
  var `?param` = [getPtr body, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyIsOmittingForceIntegration*(self: PhysicsServer3D; body: Rid): bool =
  expandMethodBind(className PhysicsServer3D, "body_is_omitting_force_integration", 4155700596)
  var `?param` = [getPtr body]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodySetStateSyncCallback*(self: PhysicsServer3D; body: Rid; callable: Callable): void =
  expandMethodBind(className PhysicsServer3D, "body_set_state_sync_callback", 3379118538)
  var `?param` = [getPtr body, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetForceIntegrationCallback*(self: PhysicsServer3D; body: Rid; callable: Callable; userdata: Variant = default(Variant)): void =
  expandMethodBind(className PhysicsServer3D, "body_set_force_integration_callback", 3059434249)
  var `?param` = [getPtr body, getPtr callable, getPtr userdata]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodySetRayPickable*(self: PhysicsServer3D; body: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "body_set_ray_pickable", 1265174801)
  var `?param` = [getPtr body, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc bodyTestMotion*(self: PhysicsServer3D; body: Rid; parameters: gdref PhysicsTestMotionParameters3D; retval: gdref PhysicsTestMotionResult3D = default gdref PhysicsTestMotionResult3D): bool =
  expandMethodBind(className PhysicsServer3D, "body_test_motion", 1944921792)
  var `?param` = [getPtr body, getPtr parameters, getPtr retval]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc bodyGetDirectState*(self: PhysicsServer3D; body: Rid): PhysicsDirectBodyState3D =
  expandMethodBind(className PhysicsServer3D, "body_get_direct_state", 3029727957)
  var `?param` = [getPtr body]
  var ret: encoded PhysicsDirectBodyState3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsDirectBodyState3D)

proc softBodyCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "soft_body_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc softBodyUpdateRenderingServer*(self: PhysicsServer3D; body: Rid; renderingServerHandler: PhysicsServer3DRenderingServerHandler): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_update_rendering_server", 2218179753)
  var `?param` = [getPtr body, getPtr renderingServerHandler]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodySetSpace*(self: PhysicsServer3D; body: Rid; space: Rid): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_space", 395945892)
  var `?param` = [getPtr body, getPtr space]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetSpace*(self: PhysicsServer3D; body: Rid): Rid =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_space", 3814569979)
  var `?param` = [getPtr body]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc softBodySetMesh*(self: PhysicsServer3D; body: Rid; mesh: Rid): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_mesh", 395945892)
  var `?param` = [getPtr body, getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetBounds*(self: PhysicsServer3D; body: Rid): Aabb =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_bounds", 974181306)
  var `?param` = [getPtr body]
  var ret: encoded Aabb
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Aabb)

proc softBodySetCollisionLayer*(self: PhysicsServer3D; body: Rid; layer: uint32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_collision_layer", 3411492887)
  var `?param` = [getPtr body, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetCollisionLayer*(self: PhysicsServer3D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_collision_layer", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc softBodySetCollisionMask*(self: PhysicsServer3D; body: Rid; mask: uint32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_collision_mask", 3411492887)
  var `?param` = [getPtr body, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetCollisionMask*(self: PhysicsServer3D; body: Rid): uint32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_collision_mask", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc softBodyAddCollisionException*(self: PhysicsServer3D; body: Rid; bodyB: Rid): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_add_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr bodyB]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyRemoveCollisionException*(self: PhysicsServer3D; body: Rid; bodyB: Rid): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_remove_collision_exception", 395945892)
  var `?param` = [getPtr body, getPtr bodyB]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodySetState*(self: PhysicsServer3D; body: Rid; state: PhysicsServer3D_BodyState; variant: Variant): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_state", 599977762)
  var `?param` = [getPtr body, getPtr state, getPtr variant]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetState*(self: PhysicsServer3D; body: Rid; state: PhysicsServer3D_BodyState): Variant =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_state", 1850449534)
  var `?param` = [getPtr body, getPtr state]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc softBodySetTransform*(self: PhysicsServer3D; body: Rid; transform: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_transform", 3935195649)
  var `?param` = [getPtr body, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodySetRayPickable*(self: PhysicsServer3D; body: Rid; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_ray_pickable", 1265174801)
  var `?param` = [getPtr body, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodySetSimulationPrecision*(self: PhysicsServer3D; body: Rid; simulationPrecision: int32): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_simulation_precision", 3411492887)
  var `?param` = [getPtr body, getPtr simulationPrecision]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetSimulationPrecision*(self: PhysicsServer3D; body: Rid): int32 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_simulation_precision", 2198884583)
  var `?param` = [getPtr body]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc softBodySetTotalMass*(self: PhysicsServer3D; body: Rid; totalMass: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_total_mass", 1794382983)
  var `?param` = [getPtr body, getPtr totalMass]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetTotalMass*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_total_mass", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetLinearStiffness*(self: PhysicsServer3D; body: Rid; stiffness: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_linear_stiffness", 1794382983)
  var `?param` = [getPtr body, getPtr stiffness]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetLinearStiffness*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_linear_stiffness", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetPressureCoefficient*(self: PhysicsServer3D; body: Rid; pressureCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_pressure_coefficient", 1794382983)
  var `?param` = [getPtr body, getPtr pressureCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetPressureCoefficient*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_pressure_coefficient", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetDampingCoefficient*(self: PhysicsServer3D; body: Rid; dampingCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_damping_coefficient", 1794382983)
  var `?param` = [getPtr body, getPtr dampingCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetDampingCoefficient*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_damping_coefficient", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc softBodySetDragCoefficient*(self: PhysicsServer3D; body: Rid; dragCoefficient: Float): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_set_drag_coefficient", 1794382983)
  var `?param` = [getPtr body, getPtr dragCoefficient]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetDragCoefficient*(self: PhysicsServer3D; body: Rid): Float =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_drag_coefficient", 866169185)
  var `?param` = [getPtr body]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc softBodyMovePoint*(self: PhysicsServer3D; body: Rid; pointIndex: int32; globalPosition: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_move_point", 831953689)
  var `?param` = [getPtr body, getPtr pointIndex, getPtr globalPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyGetPointGlobalPosition*(self: PhysicsServer3D; body: Rid; pointIndex: int32): Vector3 =
  expandMethodBind(className PhysicsServer3D, "soft_body_get_point_global_position", 3440143363)
  var `?param` = [getPtr body, getPtr pointIndex]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc softBodyRemoveAllPinnedPoints*(self: PhysicsServer3D; body: Rid): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_remove_all_pinned_points", 2722037293)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyPinPoint*(self: PhysicsServer3D; body: Rid; pointIndex: int32; pin: bool): void =
  expandMethodBind(className PhysicsServer3D, "soft_body_pin_point", 2658558584)
  var `?param` = [getPtr body, getPtr pointIndex, getPtr pin]
  methodbind.ptrcall(self, addr `?param`[0])

proc softBodyIsPointPinned*(self: PhysicsServer3D; body: Rid; pointIndex: int32): bool =
  expandMethodBind(className PhysicsServer3D, "soft_body_is_point_pinned", 3120086654)
  var `?param` = [getPtr body, getPtr pointIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc jointCreate*(self: PhysicsServer3D): Rid =
  expandMethodBind(className PhysicsServer3D, "joint_create", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc jointClear*(self: PhysicsServer3D; joint: Rid): void =
  expandMethodBind(className PhysicsServer3D, "joint_clear", 2722037293)
  var `?param` = [getPtr joint]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointMakePin*(self: PhysicsServer3D; joint: Rid; bodyA: Rid; localA: Vector3; bodyB: Rid; localB: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_pin", 4280171926)
  var `?param` = [getPtr joint, getPtr bodyA, getPtr localA, getPtr bodyB, getPtr localB]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointSetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_PinJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_param", 810685294)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointGetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_PinJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_param", 2817972347)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc pinJointSetLocalA*(self: PhysicsServer3D; joint: Rid; localA: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_local_a", 3227306858)
  var `?param` = [getPtr joint, getPtr localA]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointGetLocalA*(self: PhysicsServer3D; joint: Rid): Vector3 =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_local_a", 531438156)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc pinJointSetLocalB*(self: PhysicsServer3D; joint: Rid; localB: Vector3): void =
  expandMethodBind(className PhysicsServer3D, "pin_joint_set_local_b", 3227306858)
  var `?param` = [getPtr joint, getPtr localB]
  methodbind.ptrcall(self, addr `?param`[0])

proc pinJointGetLocalB*(self: PhysicsServer3D; joint: Rid): Vector3 =
  expandMethodBind(className PhysicsServer3D, "pin_joint_get_local_b", 531438156)
  var `?param` = [getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc jointMakeHinge*(self: PhysicsServer3D; joint: Rid; bodyA: Rid; hingeA: Transform3D; bodyB: Rid; hingeB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_hinge", 1684107643)
  var `?param` = [getPtr joint, getPtr bodyA, getPtr hingeA, getPtr bodyB, getPtr hingeB]
  methodbind.ptrcall(self, addr `?param`[0])

proc hingeJointSetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_HingeJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_set_param", 3165502333)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc hingeJointGetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_HingeJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_get_param", 2129207581)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc hingeJointSetFlag*(self: PhysicsServer3D; joint: Rid; flag: PhysicsServer3D_HingeJointFlag; enabled: bool): void =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_set_flag", 1601626188)
  var `?param` = [getPtr joint, getPtr flag, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc hingeJointGetFlag*(self: PhysicsServer3D; joint: Rid; flag: PhysicsServer3D_HingeJointFlag): bool =
  expandMethodBind(className PhysicsServer3D, "hinge_joint_get_flag", 4165147865)
  var `?param` = [getPtr joint, getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc jointMakeSlider*(self: PhysicsServer3D; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_slider", 1684107643)
  var `?param` = [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB]
  methodbind.ptrcall(self, addr `?param`[0])

proc sliderJointSetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_SliderJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "slider_joint_set_param", 2264833593)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc sliderJointGetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_SliderJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "slider_joint_get_param", 3498644957)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc jointMakeConeTwist*(self: PhysicsServer3D; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_cone_twist", 1684107643)
  var `?param` = [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB]
  methodbind.ptrcall(self, addr `?param`[0])

proc coneTwistJointSetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_ConeTwistJointParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "cone_twist_joint_set_param", 808587618)
  var `?param` = [getPtr joint, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc coneTwistJointGetParam*(self: PhysicsServer3D; joint: Rid; param: PhysicsServer3D_ConeTwistJointParam): Float =
  expandMethodBind(className PhysicsServer3D, "cone_twist_joint_get_param", 1134789658)
  var `?param` = [getPtr joint, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc jointGetType*(self: PhysicsServer3D; joint: Rid): PhysicsServer3D_JointType =
  expandMethodBind(className PhysicsServer3D, "joint_get_type", 4290791900)
  var `?param` = [getPtr joint]
  var ret: encoded PhysicsServer3D_JointType
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PhysicsServer3D_JointType)

proc jointSetSolverPriority*(self: PhysicsServer3D; joint: Rid; priority: int32): void =
  expandMethodBind(className PhysicsServer3D, "joint_set_solver_priority", 3411492887)
  var `?param` = [getPtr joint, getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointGetSolverPriority*(self: PhysicsServer3D; joint: Rid): int32 =
  expandMethodBind(className PhysicsServer3D, "joint_get_solver_priority", 2198884583)
  var `?param` = [getPtr joint]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc jointDisableCollisionsBetweenBodies*(self: PhysicsServer3D; joint: Rid; disable: bool): void =
  expandMethodBind(className PhysicsServer3D, "joint_disable_collisions_between_bodies", 1265174801)
  var `?param` = [getPtr joint, getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer3D; joint: Rid): bool =
  expandMethodBind(className PhysicsServer3D, "joint_is_disabled_collisions_between_bodies", 4155700596)
  var `?param` = [getPtr joint]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc jointMakeGeneric6Dof*(self: PhysicsServer3D; joint: Rid; bodyA: Rid; localRefA: Transform3D; bodyB: Rid; localRefB: Transform3D): void =
  expandMethodBind(className PhysicsServer3D, "joint_make_generic_6dof", 1684107643)
  var `?param` = [getPtr joint, getPtr bodyA, getPtr localRefA, getPtr bodyB, getPtr localRefB]
  methodbind.ptrcall(self, addr `?param`[0])

proc generic6DofJointSetParam*(self: PhysicsServer3D; joint: Rid; axis: Vector3_Axis; param: PhysicsServer3D_G6DofJointAxisParam; value: Float): void =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_param", 2600081391)
  var `?param` = [getPtr joint, getPtr axis, getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc generic6DofJointGetParam*(self: PhysicsServer3D; joint: Rid; axis: Vector3_Axis; param: PhysicsServer3D_G6DofJointAxisParam): Float =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_param", 467122058)
  var `?param` = [getPtr joint, getPtr axis, getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc generic6DofJointSetFlag*(self: PhysicsServer3D; joint: Rid; axis: Vector3_Axis; flag: PhysicsServer3D_G6DofJointAxisFlag; enable: bool): void =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_set_flag", 3570926903)
  var `?param` = [getPtr joint, getPtr axis, getPtr flag, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc generic6DofJointGetFlag*(self: PhysicsServer3D; joint: Rid; axis: Vector3_Axis; flag: PhysicsServer3D_G6DofJointAxisFlag): bool =
  expandMethodBind(className PhysicsServer3D, "generic_6dof_joint_get_flag", 4158090196)
  var `?param` = [getPtr joint, getPtr axis, getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc freeRid*(self: PhysicsServer3D; rid: Rid): void =
  expandMethodBind(className PhysicsServer3D, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc setActive*(self: PhysicsServer3D; active: bool): void =
  expandMethodBind(className PhysicsServer3D, "set_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessInfo*(self: PhysicsServer3D; processInfo: PhysicsServer3D_ProcessInfo): int32 =
  expandMethodBind(className PhysicsServer3D, "get_process_info", 1332958745)
  var `?param` = [getPtr processInfo]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

const PhysicsServer3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsServer3D]): Table[string, string] = PhysicsServer3D_vmap