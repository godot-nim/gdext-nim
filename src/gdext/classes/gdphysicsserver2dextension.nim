{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsserver2d; export gdphysicsserver2d

expandOnClassImported(PhysicsServer2DExtension, PhysicsServer2D)

method worldBoundaryShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_worldBoundaryShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_world_boundary_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).worldBoundaryShapeCreate().encode(r_ret)

method separationRayShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_separationRayShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_separation_ray_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).separationRayShapeCreate().encode(r_ret)

method segmentShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_segmentShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_segment_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).segmentShapeCreate().encode(r_ret)

method circleShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_circleShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_circle_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).circleShapeCreate().encode(r_ret)

method rectangleShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_rectangleShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_rectangle_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).rectangleShapeCreate().encode(r_ret)

method capsuleShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_capsuleShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_capsule_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).capsuleShapeCreate().encode(r_ret)

method convexPolygonShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_convexPolygonShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_convex_polygon_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).convexPolygonShapeCreate().encode(r_ret)

method concavePolygonShapeCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_concavePolygonShapeCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_concave_polygon_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).concavePolygonShapeCreate().encode(r_ret)

method shapeSetData*(self: PhysicsServer2DExtension; shape: RID; data: Variant): void {.base.} = (discard)
proc registerVirtual_shapeSetData*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_set_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeSetData(p_args[0].decode(RID), p_args[1].decode(Variant))

method shapeSetCustomSolverBias*(self: PhysicsServer2DExtension; shape: RID; bias: Float): void {.base.} = (discard)
proc registerVirtual_shapeSetCustomSolverBias*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_set_custom_solver_bias"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeSetCustomSolverBias(p_args[0].decode(RID), p_args[1].decode(Float))

method shapeGetType*(self: PhysicsServer2DExtension; shape: RID): PhysicsServer2D_ShapeType {.base.} = (discard)
proc registerVirtual_shapeGetType*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetType(p_args[0].decode(RID)).encode(r_ret)

method shapeGetData*(self: PhysicsServer2DExtension; shape: RID): Variant {.base.} = (discard)
proc registerVirtual_shapeGetData*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetData(p_args[0].decode(RID)).encode(r_ret)

method shapeGetCustomSolverBias*(self: PhysicsServer2DExtension; shape: RID): Float {.base.} = (discard)
proc registerVirtual_shapeGetCustomSolverBias*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_custom_solver_bias"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeGetCustomSolverBias(p_args[0].decode(RID)).encode(r_ret)

method shapeCollide*(self: PhysicsServer2DExtension; shapeA: RID; xformA: Transform2D; motionA: Vector2; shapeB: RID; xformB: Transform2D; motionB: Vector2; retvals: pointer; retvalMax: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc registerVirtual_shapeCollide*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_collide"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).shapeCollide(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(RID), p_args[4].decode(Transform2D), p_args[5].decode(Vector2), p_args[6].decode(pointer), p_args[7].decode(int32), p_args[8].decode(ptr int32)).encode(r_ret)

method spaceCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_spaceCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceCreate().encode(r_ret)

method spaceSetActive*(self: PhysicsServer2DExtension; space: RID; active: bool): void {.base.} = (discard)
proc registerVirtual_spaceSetActive*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetActive(p_args[0].decode(RID), p_args[1].decode(bool))

method spaceIsActive*(self: PhysicsServer2DExtension; space: RID): bool {.base.} = (discard)
proc registerVirtual_spaceIsActive*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_is_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceIsActive(p_args[0].decode(RID)).encode(r_ret)

method spaceSetParam*(self: PhysicsServer2DExtension; space: RID; param: PhysicsServer2D_SpaceParameter; value: Float): void {.base.} = (discard)
proc registerVirtual_spaceSetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_SpaceParameter), p_args[2].decode(Float))

method spaceGetParam*(self: PhysicsServer2DExtension; space: RID; param: PhysicsServer2D_SpaceParameter): Float {.base.} = (discard)
proc registerVirtual_spaceGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_SpaceParameter)).encode(r_ret)

method spaceGetDirectState*(self: PhysicsServer2DExtension; space: RID): PhysicsDirectSpaceState2D {.base.} = (discard)
proc registerVirtual_spaceGetDirectState*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_direct_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetDirectState(p_args[0].decode(RID)).encode(r_ret)

method spaceSetDebugContacts*(self: PhysicsServer2DExtension; space: RID; maxContacts: int32): void {.base.} = (discard)
proc registerVirtual_spaceSetDebugContacts*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_debug_contacts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceSetDebugContacts(p_args[0].decode(RID), p_args[1].decode(int32))

method spaceGetContacts*(self: PhysicsServer2DExtension; space: RID): PackedVector2Array {.base.} = (discard)
proc registerVirtual_spaceGetContacts*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_contacts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetContacts(p_args[0].decode(RID)).encode(r_ret)

method spaceGetContactCount*(self: PhysicsServer2DExtension; space: RID): int32 {.base.} = (discard)
proc registerVirtual_spaceGetContactCount*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_contact_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).spaceGetContactCount(p_args[0].decode(RID)).encode(r_ret)

method areaCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_areaCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaCreate().encode(r_ret)

method areaSetSpace*(self: PhysicsServer2DExtension; area: RID; space: RID): void {.base.} = (discard)
proc registerVirtual_areaSetSpace*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetSpace(p_args[0].decode(RID), p_args[1].decode(RID))

method areaGetSpace*(self: PhysicsServer2DExtension; area: RID): RID {.base.} = (discard)
proc registerVirtual_areaGetSpace*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetSpace(p_args[0].decode(RID)).encode(r_ret)

method areaAddShape*(self: PhysicsServer2DExtension; area: RID; shape: RID; transform: Transform2D; disabled: bool): void {.base.} = (discard)
proc registerVirtual_areaAddShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_add_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaAddShape(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform2D), p_args[3].decode(bool))

method areaSetShape*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32; shape: RID): void {.base.} = (discard)
proc registerVirtual_areaSetShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShape(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(RID))

method areaSetShapeTransform*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32; transform: Transform2D): void {.base.} = (discard)
proc registerVirtual_areaSetShapeTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Transform2D))

method areaSetShapeDisabled*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc registerVirtual_areaSetShapeDisabled*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape_disabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetShapeDisabled(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool))

method areaGetShapeCount*(self: PhysicsServer2DExtension; area: RID): int32 {.base.} = (discard)
proc registerVirtual_areaGetShapeCount*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShapeCount(p_args[0].decode(RID)).encode(r_ret)

method areaGetShape*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32): RID {.base.} = (discard)
proc registerVirtual_areaGetShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShape(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method areaGetShapeTransform*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32): Transform2D {.base.} = (discard)
proc registerVirtual_areaGetShapeTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method areaRemoveShape*(self: PhysicsServer2DExtension; area: RID; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_areaRemoveShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_remove_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaRemoveShape(p_args[0].decode(RID), p_args[1].decode(int32))

method areaClearShapes*(self: PhysicsServer2DExtension; area: RID): void {.base.} = (discard)
proc registerVirtual_areaClearShapes*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_clear_shapes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaClearShapes(p_args[0].decode(RID))

method areaAttachObjectInstanceId*(self: PhysicsServer2DExtension; area: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_areaAttachObjectInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_attach_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaAttachObjectInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method areaGetObjectInstanceId*(self: PhysicsServer2DExtension; area: RID): uint64 {.base.} = (discard)
proc registerVirtual_areaGetObjectInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetObjectInstanceId(p_args[0].decode(RID)).encode(r_ret)

method areaAttachCanvasInstanceId*(self: PhysicsServer2DExtension; area: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_areaAttachCanvasInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_attach_canvas_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaAttachCanvasInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method areaGetCanvasInstanceId*(self: PhysicsServer2DExtension; area: RID): uint64 {.base.} = (discard)
proc registerVirtual_areaGetCanvasInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_canvas_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCanvasInstanceId(p_args[0].decode(RID)).encode(r_ret)

method areaSetParam*(self: PhysicsServer2DExtension; area: RID; param: PhysicsServer2D_AreaParameter; value: Variant): void {.base.} = (discard)
proc registerVirtual_areaSetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_AreaParameter), p_args[2].decode(Variant))

method areaSetTransform*(self: PhysicsServer2DExtension; area: RID; transform: Transform2D): void {.base.} = (discard)
proc registerVirtual_areaSetTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetTransform(p_args[0].decode(RID), p_args[1].decode(Transform2D))

method areaGetParam*(self: PhysicsServer2DExtension; area: RID; param: PhysicsServer2D_AreaParameter): Variant {.base.} = (discard)
proc registerVirtual_areaGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_AreaParameter)).encode(r_ret)

method areaGetTransform*(self: PhysicsServer2DExtension; area: RID): Transform2D {.base.} = (discard)
proc registerVirtual_areaGetTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetTransform(p_args[0].decode(RID)).encode(r_ret)

method areaSetCollisionLayer*(self: PhysicsServer2DExtension; area: RID; layer: uint32): void {.base.} = (discard)
proc registerVirtual_areaSetCollisionLayer*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetCollisionLayer(p_args[0].decode(RID), p_args[1].decode(uint32))

method areaGetCollisionLayer*(self: PhysicsServer2DExtension; area: RID): uint32 {.base.} = (discard)
proc registerVirtual_areaGetCollisionLayer*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCollisionLayer(p_args[0].decode(RID)).encode(r_ret)

method areaSetCollisionMask*(self: PhysicsServer2DExtension; area: RID; mask: uint32): void {.base.} = (discard)
proc registerVirtual_areaSetCollisionMask*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetCollisionMask(p_args[0].decode(RID), p_args[1].decode(uint32))

method areaGetCollisionMask*(self: PhysicsServer2DExtension; area: RID): uint32 {.base.} = (discard)
proc registerVirtual_areaGetCollisionMask*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaGetCollisionMask(p_args[0].decode(RID)).encode(r_ret)

method areaSetMonitorable*(self: PhysicsServer2DExtension; area: RID; monitorable: bool): void {.base.} = (discard)
proc registerVirtual_areaSetMonitorable*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_monitorable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetMonitorable(p_args[0].decode(RID), p_args[1].decode(bool))

method areaSetPickable*(self: PhysicsServer2DExtension; area: RID; pickable: bool): void {.base.} = (discard)
proc registerVirtual_areaSetPickable*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_pickable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetPickable(p_args[0].decode(RID), p_args[1].decode(bool))

method areaSetMonitorCallback*(self: PhysicsServer2DExtension; area: RID; callback: Callable): void {.base.} = (discard)
proc registerVirtual_areaSetMonitorCallback*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_monitor_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetMonitorCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method areaSetAreaMonitorCallback*(self: PhysicsServer2DExtension; area: RID; callback: Callable): void {.base.} = (discard)
proc registerVirtual_areaSetAreaMonitorCallback*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_area_monitor_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).areaSetAreaMonitorCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method bodyCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_bodyCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyCreate().encode(r_ret)

method bodySetSpace*(self: PhysicsServer2DExtension; body: RID; space: RID): void {.base.} = (discard)
proc registerVirtual_bodySetSpace*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetSpace(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyGetSpace*(self: PhysicsServer2DExtension; body: RID): RID {.base.} = (discard)
proc registerVirtual_bodyGetSpace*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetSpace(p_args[0].decode(RID)).encode(r_ret)

method bodySetMode*(self: PhysicsServer2DExtension; body: RID; mode: PhysicsServer2D_BodyMode): void {.base.} = (discard)
proc registerVirtual_bodySetMode*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetMode(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_BodyMode))

method bodyGetMode*(self: PhysicsServer2DExtension; body: RID): PhysicsServer2D_BodyMode {.base.} = (discard)
proc registerVirtual_bodyGetMode*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetMode(p_args[0].decode(RID)).encode(r_ret)

method bodyAddShape*(self: PhysicsServer2DExtension; body: RID; shape: RID; transform: Transform2D; disabled: bool): void {.base.} = (discard)
proc registerVirtual_bodyAddShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddShape(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform2D), p_args[3].decode(bool))

method bodySetShape*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32; shape: RID): void {.base.} = (discard)
proc registerVirtual_bodySetShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShape(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(RID))

method bodySetShapeTransform*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32; transform: Transform2D): void {.base.} = (discard)
proc registerVirtual_bodySetShapeTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Transform2D))

method bodyGetShapeCount*(self: PhysicsServer2DExtension; body: RID): int32 {.base.} = (discard)
proc registerVirtual_bodyGetShapeCount*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShapeCount(p_args[0].decode(RID)).encode(r_ret)

method bodyGetShape*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32): RID {.base.} = (discard)
proc registerVirtual_bodyGetShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShape(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method bodyGetShapeTransform*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32): Transform2D {.base.} = (discard)
proc registerVirtual_bodyGetShapeTransform*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method bodySetShapeDisabled*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc registerVirtual_bodySetShapeDisabled*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape_disabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeDisabled(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool))

method bodySetShapeAsOneWayCollision*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32; enable: bool; margin: Float): void {.base.} = (discard)
proc registerVirtual_bodySetShapeAsOneWayCollision*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape_as_one_way_collision"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetShapeAsOneWayCollision(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool), p_args[3].decode(Float))

method bodyRemoveShape*(self: PhysicsServer2DExtension; body: RID; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_bodyRemoveShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_remove_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyRemoveShape(p_args[0].decode(RID), p_args[1].decode(int32))

method bodyClearShapes*(self: PhysicsServer2DExtension; body: RID): void {.base.} = (discard)
proc registerVirtual_bodyClearShapes*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_clear_shapes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyClearShapes(p_args[0].decode(RID))

method bodyAttachObjectInstanceId*(self: PhysicsServer2DExtension; body: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_bodyAttachObjectInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_attach_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAttachObjectInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method bodyGetObjectInstanceId*(self: PhysicsServer2DExtension; body: RID): uint64 {.base.} = (discard)
proc registerVirtual_bodyGetObjectInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetObjectInstanceId(p_args[0].decode(RID)).encode(r_ret)

method bodyAttachCanvasInstanceId*(self: PhysicsServer2DExtension; body: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_bodyAttachCanvasInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_attach_canvas_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAttachCanvasInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method bodyGetCanvasInstanceId*(self: PhysicsServer2DExtension; body: RID): uint64 {.base.} = (discard)
proc registerVirtual_bodyGetCanvasInstanceId*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_canvas_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCanvasInstanceId(p_args[0].decode(RID)).encode(r_ret)

method bodySetContinuousCollisionDetectionMode*(self: PhysicsServer2DExtension; body: RID; mode: PhysicsServer2D_CCDMode): void {.base.} = (discard)
proc registerVirtual_bodySetContinuousCollisionDetectionMode*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_continuous_collision_detection_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetContinuousCollisionDetectionMode(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_CCDMode))

method bodyGetContinuousCollisionDetectionMode*(self: PhysicsServer2DExtension; body: RID): PhysicsServer2D_CCDMode {.base.} = (discard)
proc registerVirtual_bodyGetContinuousCollisionDetectionMode*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_continuous_collision_detection_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetContinuousCollisionDetectionMode(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionLayer*(self: PhysicsServer2DExtension; body: RID; layer: uint32): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionLayer*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionLayer(p_args[0].decode(RID), p_args[1].decode(uint32))

method bodyGetCollisionLayer*(self: PhysicsServer2DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_bodyGetCollisionLayer*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionLayer(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionMask*(self: PhysicsServer2DExtension; body: RID; mask: uint32): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionMask*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionMask(p_args[0].decode(RID), p_args[1].decode(uint32))

method bodyGetCollisionMask*(self: PhysicsServer2DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_bodyGetCollisionMask*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionMask(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionPriority*(self: PhysicsServer2DExtension; body: RID; priority: Float): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionPriority*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetCollisionPriority(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyGetCollisionPriority*(self: PhysicsServer2DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_bodyGetCollisionPriority*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionPriority(p_args[0].decode(RID)).encode(r_ret)

method bodySetParam*(self: PhysicsServer2DExtension; body: RID; param: PhysicsServer2D_BodyParameter; value: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_BodyParameter), p_args[2].decode(Variant))

method bodyGetParam*(self: PhysicsServer2DExtension; body: RID; param: PhysicsServer2D_BodyParameter): Variant {.base.} = (discard)
proc registerVirtual_bodyGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_BodyParameter)).encode(r_ret)

method bodyResetMassProperties*(self: PhysicsServer2DExtension; body: RID): void {.base.} = (discard)
proc registerVirtual_bodyResetMassProperties*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_reset_mass_properties"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyResetMassProperties(p_args[0].decode(RID))

method bodySetState*(self: PhysicsServer2DExtension; body: RID; state: PhysicsServer2D_BodyState; value: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetState*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_BodyState), p_args[2].decode(Variant))

method bodyGetState*(self: PhysicsServer2DExtension; body: RID; state: PhysicsServer2D_BodyState): Variant {.base.} = (discard)
proc registerVirtual_bodyGetState*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_BodyState)).encode(r_ret)

method bodyApplyCentralImpulse*(self: PhysicsServer2DExtension; body: RID; impulse: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyApplyCentralImpulse*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_central_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyCentralImpulse(p_args[0].decode(RID), p_args[1].decode(Vector2))

method bodyApplyTorqueImpulse*(self: PhysicsServer2DExtension; body: RID; impulse: Float): void {.base.} = (discard)
proc registerVirtual_bodyApplyTorqueImpulse*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_torque_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyTorqueImpulse(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyApplyImpulse*(self: PhysicsServer2DExtension; body: RID; impulse: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyApplyImpulse*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyImpulse(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Vector2))

method bodyApplyCentralForce*(self: PhysicsServer2DExtension; body: RID; force: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyApplyCentralForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyCentralForce(p_args[0].decode(RID), p_args[1].decode(Vector2))

method bodyApplyForce*(self: PhysicsServer2DExtension; body: RID; force: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyApplyForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyForce(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Vector2))

method bodyApplyTorque*(self: PhysicsServer2DExtension; body: RID; torque: Float): void {.base.} = (discard)
proc registerVirtual_bodyApplyTorque*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyApplyTorque(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyAddConstantCentralForce*(self: PhysicsServer2DExtension; body: RID; force: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantCentralForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantCentralForce(p_args[0].decode(RID), p_args[1].decode(Vector2))

method bodyAddConstantForce*(self: PhysicsServer2DExtension; body: RID; force: Vector2; position: Vector2): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantForce(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Vector2))

method bodyAddConstantTorque*(self: PhysicsServer2DExtension; body: RID; torque: Float): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantTorque*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddConstantTorque(p_args[0].decode(RID), p_args[1].decode(Float))

method bodySetConstantForce*(self: PhysicsServer2DExtension; body: RID; force: Vector2): void {.base.} = (discard)
proc registerVirtual_bodySetConstantForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetConstantForce(p_args[0].decode(RID), p_args[1].decode(Vector2))

method bodyGetConstantForce*(self: PhysicsServer2DExtension; body: RID): Vector2 {.base.} = (discard)
proc registerVirtual_bodyGetConstantForce*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetConstantForce(p_args[0].decode(RID)).encode(r_ret)

method bodySetConstantTorque*(self: PhysicsServer2DExtension; body: RID; torque: Float): void {.base.} = (discard)
proc registerVirtual_bodySetConstantTorque*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetConstantTorque(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyGetConstantTorque*(self: PhysicsServer2DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_bodyGetConstantTorque*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetConstantTorque(p_args[0].decode(RID)).encode(r_ret)

method bodySetAxisVelocity*(self: PhysicsServer2DExtension; body: RID; axisVelocity: Vector2): void {.base.} = (discard)
proc registerVirtual_bodySetAxisVelocity*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_axis_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetAxisVelocity(p_args[0].decode(RID), p_args[1].decode(Vector2))

method bodyAddCollisionException*(self: PhysicsServer2DExtension; body: RID; exceptedBody: RID): void {.base.} = (discard)
proc registerVirtual_bodyAddCollisionException*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyAddCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyRemoveCollisionException*(self: PhysicsServer2DExtension; body: RID; exceptedBody: RID): void {.base.} = (discard)
proc registerVirtual_bodyRemoveCollisionException*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_remove_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyRemoveCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyGetCollisionExceptions*(self: PhysicsServer2DExtension; body: RID): Array[RID] {.base.} = (discard)
proc registerVirtual_bodyGetCollisionExceptions*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_exceptions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetCollisionExceptions(p_args[0].decode(RID)).encode(r_ret)

method bodySetMaxContactsReported*(self: PhysicsServer2DExtension; body: RID; amount: int32): void {.base.} = (discard)
proc registerVirtual_bodySetMaxContactsReported*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_max_contacts_reported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetMaxContactsReported(p_args[0].decode(RID), p_args[1].decode(int32))

method bodyGetMaxContactsReported*(self: PhysicsServer2DExtension; body: RID): int32 {.base.} = (discard)
proc registerVirtual_bodyGetMaxContactsReported*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_max_contacts_reported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetMaxContactsReported(p_args[0].decode(RID)).encode(r_ret)

method bodySetContactsReportedDepthThreshold*(self: PhysicsServer2DExtension; body: RID; threshold: Float): void {.base.} = (discard)
proc registerVirtual_bodySetContactsReportedDepthThreshold*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_contacts_reported_depth_threshold"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetContactsReportedDepthThreshold(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyGetContactsReportedDepthThreshold*(self: PhysicsServer2DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_bodyGetContactsReportedDepthThreshold*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_contacts_reported_depth_threshold"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetContactsReportedDepthThreshold(p_args[0].decode(RID)).encode(r_ret)

method bodySetOmitForceIntegration*(self: PhysicsServer2DExtension; body: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_bodySetOmitForceIntegration*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_omit_force_integration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetOmitForceIntegration(p_args[0].decode(RID), p_args[1].decode(bool))

method bodyIsOmittingForceIntegration*(self: PhysicsServer2DExtension; body: RID): bool {.base.} = (discard)
proc registerVirtual_bodyIsOmittingForceIntegration*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_is_omitting_force_integration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyIsOmittingForceIntegration(p_args[0].decode(RID)).encode(r_ret)

method bodySetStateSyncCallback*(self: PhysicsServer2DExtension; body: RID; callable: Callable): void {.base.} = (discard)
proc registerVirtual_bodySetStateSyncCallback*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_state_sync_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetStateSyncCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method bodySetForceIntegrationCallback*(self: PhysicsServer2DExtension; body: RID; callable: Callable; userdata: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetForceIntegrationCallback*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_force_integration_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetForceIntegrationCallback(p_args[0].decode(RID), p_args[1].decode(Callable), p_args[2].decode(Variant))

method bodyCollideShape*(self: PhysicsServer2DExtension; body: RID; bodyShape: int32; shape: RID; shapeXform: Transform2D; motion: Vector2; retvals: pointer; retvalMax: int32; retvalCount: ptr int32): bool {.base.} = (discard)
proc registerVirtual_bodyCollideShape*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_collide_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyCollideShape(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(RID), p_args[3].decode(Transform2D), p_args[4].decode(Vector2), p_args[5].decode(pointer), p_args[6].decode(int32), p_args[7].decode(ptr int32)).encode(r_ret)

method bodySetPickable*(self: PhysicsServer2DExtension; body: RID; pickable: bool): void {.base.} = (discard)
proc registerVirtual_bodySetPickable*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_pickable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodySetPickable(p_args[0].decode(RID), p_args[1].decode(bool))

method bodyGetDirectState*(self: PhysicsServer2DExtension; body: RID): PhysicsDirectBodyState2D {.base.} = (discard)
proc registerVirtual_bodyGetDirectState*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_direct_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyGetDirectState(p_args[0].decode(RID)).encode(r_ret)

method bodyTestMotion*(self: PhysicsServer2DExtension; body: RID; `from`: Transform2D; motion: Vector2; margin: Float; collideSeparationRay: bool; recoveryAsCollision: bool; retval: ptr PhysicsServer2DExtensionMotionResult): bool {.base.} = (discard)
proc registerVirtual_bodyTestMotion*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_test_motion"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).bodyTestMotion(p_args[0].decode(RID), p_args[1].decode(Transform2D), p_args[2].decode(Vector2), p_args[3].decode(Float), p_args[4].decode(bool), p_args[5].decode(bool), p_args[6].decode(ptr PhysicsServer2DExtensionMotionResult)).encode(r_ret)

method jointCreate*(self: PhysicsServer2DExtension): RID {.base.} = (discard)
proc registerVirtual_jointCreate*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointCreate().encode(r_ret)

method jointClear*(self: PhysicsServer2DExtension; joint: RID): void {.base.} = (discard)
proc registerVirtual_jointClear*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_clear"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointClear(p_args[0].decode(RID))

method jointSetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_JointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_jointSetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_JointParam), p_args[2].decode(Float))

method jointGetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_JointParam): Float {.base.} = (discard)
proc registerVirtual_jointGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_JointParam)).encode(r_ret)

method jointDisableCollisionsBetweenBodies*(self: PhysicsServer2DExtension; joint: RID; disable: bool): void {.base.} = (discard)
proc registerVirtual_jointDisableCollisionsBetweenBodies*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_disable_collisions_between_bodies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointDisableCollisionsBetweenBodies(p_args[0].decode(RID), p_args[1].decode(bool))

method jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer2DExtension; joint: RID): bool {.base.} = (discard)
proc registerVirtual_jointIsDisabledCollisionsBetweenBodies*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_is_disabled_collisions_between_bodies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointIsDisabledCollisionsBetweenBodies(p_args[0].decode(RID)).encode(r_ret)

method jointMakePin*(self: PhysicsServer2DExtension; joint: RID; anchor: Vector2; bodyA: RID; bodyB: RID): void {.base.} = (discard)
proc registerVirtual_jointMakePin*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_pin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointMakePin(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(RID), p_args[3].decode(RID))

method jointMakeGroove*(self: PhysicsServer2DExtension; joint: RID; aGroove1: Vector2; aGroove2: Vector2; bAnchor: Vector2; bodyA: RID; bodyB: RID): void {.base.} = (discard)
proc registerVirtual_jointMakeGroove*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_groove"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointMakeGroove(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Vector2), p_args[3].decode(Vector2), p_args[4].decode(RID), p_args[5].decode(RID))

method jointMakeDampedSpring*(self: PhysicsServer2DExtension; joint: RID; anchorA: Vector2; anchorB: Vector2; bodyA: RID; bodyB: RID): void {.base.} = (discard)
proc registerVirtual_jointMakeDampedSpring*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_damped_spring"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointMakeDampedSpring(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Vector2), p_args[3].decode(RID), p_args[4].decode(RID))

method pinJointSetFlag*(self: PhysicsServer2DExtension; joint: RID; flag: PhysicsServer2D_PinJointFlag; enabled: bool): void {.base.} = (discard)
proc registerVirtual_pinJointSetFlag*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_set_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).pinJointSetFlag(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_PinJointFlag), p_args[2].decode(bool))

method pinJointGetFlag*(self: PhysicsServer2DExtension; joint: RID; flag: PhysicsServer2D_PinJointFlag): bool {.base.} = (discard)
proc registerVirtual_pinJointGetFlag*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_get_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).pinJointGetFlag(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_PinJointFlag)).encode(r_ret)

method pinJointSetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_PinJointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_pinJointSetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).pinJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_PinJointParam), p_args[2].decode(Float))

method pinJointGetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_PinJointParam): Float {.base.} = (discard)
proc registerVirtual_pinJointGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).pinJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_PinJointParam)).encode(r_ret)

method dampedSpringJointSetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_DampedSpringParam; value: Float): void {.base.} = (discard)
proc registerVirtual_dampedSpringJointSetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_damped_spring_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).dampedSpringJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_DampedSpringParam), p_args[2].decode(Float))

method dampedSpringJointGetParam*(self: PhysicsServer2DExtension; joint: RID; param: PhysicsServer2D_DampedSpringParam): Float {.base.} = (discard)
proc registerVirtual_dampedSpringJointGetParam*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_damped_spring_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).dampedSpringJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer2D_DampedSpringParam)).encode(r_ret)

method jointGetType*(self: PhysicsServer2DExtension; joint: RID): PhysicsServer2D_JointType {.base.} = (discard)
proc registerVirtual_jointGetType*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_get_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).jointGetType(p_args[0].decode(RID)).encode(r_ret)

method freeRid*(self: PhysicsServer2DExtension; rid: RID): void {.base.} = (discard)
proc registerVirtual_freeRid*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_free_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).freeRid(p_args[0].decode(RID))

method setActive*(self: PhysicsServer2DExtension; active: bool): void {.base.} = (discard)
proc registerVirtual_setActive*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).setActive(p_args[0].decode(bool))

method init*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc registerVirtual_init*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_init"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).init()

method step*(self: PhysicsServer2DExtension; step: Float): void {.base.} = (discard)
proc registerVirtual_step*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_step"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).step(p_args[0].decode(Float))

method sync*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc registerVirtual_sync*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_sync"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).sync()

method flushQueries*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc registerVirtual_flushQueries*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_flush_queries"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).flushQueries()

method endSync*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc registerVirtual_endSync*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_end_sync"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).endSync()

method finish*(self: PhysicsServer2DExtension): void {.base.} = (discard)
proc registerVirtual_finish*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_finish"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).finish()

method isFlushingQueries*(self: PhysicsServer2DExtension): bool {.base.} = (discard)
proc registerVirtual_isFlushingQueries*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_flushing_queries"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).isFlushingQueries().encode(r_ret)

method getProcessInfo*(self: PhysicsServer2DExtension; processInfo: PhysicsServer2D_ProcessInfo): int32 {.base.} = (discard)
proc registerVirtual_getProcessInfo*[T: PhysicsServer2DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_process_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer2DExtension](p_instance).getProcessInfo(p_args[0].decode(PhysicsServer2D_ProcessInfo)).encode(r_ret)

proc bodyTestMotionIsExcludingBody*(self: PhysicsServer2DExtension; body: RID): bool =
  expandMethodBind(className PhysicsServer2DExtension, "body_test_motion_is_excluding_body", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(bool)

proc bodyTestMotionIsExcludingObject*(self: PhysicsServer2DExtension; `object`: uint64): bool =
  expandMethodBind(className PhysicsServer2DExtension, "body_test_motion_is_excluding_object", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `object`], addr ret)
  (addr ret).decode_result(bool)
