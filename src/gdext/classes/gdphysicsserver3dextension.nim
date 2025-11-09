{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdphysicsserver3d; export gdphysicsserver3d

expandOnClassImported(PhysicsServer3DExtension, PhysicsServer3D)

method worldBoundaryShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_worldBoundaryShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_world_boundary_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).worldBoundaryShapeCreate().encode(r_ret)

method separationRayShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_separationRayShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_separation_ray_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).separationRayShapeCreate().encode(r_ret)

method sphereShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_sphereShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_sphere_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).sphereShapeCreate().encode(r_ret)

method boxShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_boxShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_box_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).boxShapeCreate().encode(r_ret)

method capsuleShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_capsuleShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_capsule_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).capsuleShapeCreate().encode(r_ret)

method cylinderShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_cylinderShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cylinder_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).cylinderShapeCreate().encode(r_ret)

method convexPolygonShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_convexPolygonShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_convex_polygon_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).convexPolygonShapeCreate().encode(r_ret)

method concavePolygonShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_concavePolygonShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_concave_polygon_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).concavePolygonShapeCreate().encode(r_ret)

method heightmapShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_heightmapShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_heightmap_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).heightmapShapeCreate().encode(r_ret)

method customShapeCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_customShapeCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_custom_shape_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).customShapeCreate().encode(r_ret)

method shapeSetData*(self: PhysicsServer3DExtension; shape: RID; data: Variant): void {.base.} = (discard)
proc registerVirtual_shapeSetData*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_set_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetData(p_args[0].decode(RID), p_args[1].decode(Variant))

method shapeSetCustomSolverBias*(self: PhysicsServer3DExtension; shape: RID; bias: Float): void {.base.} = (discard)
proc registerVirtual_shapeSetCustomSolverBias*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_set_custom_solver_bias"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetCustomSolverBias(p_args[0].decode(RID), p_args[1].decode(Float))

method shapeSetMargin*(self: PhysicsServer3DExtension; shape: RID; margin: Float): void {.base.} = (discard)
proc registerVirtual_shapeSetMargin*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_set_margin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeSetMargin(p_args[0].decode(RID), p_args[1].decode(Float))

method shapeGetMargin*(self: PhysicsServer3DExtension; shape: RID): Float {.base.} = (discard)
proc registerVirtual_shapeGetMargin*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_margin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetMargin(p_args[0].decode(RID)).encode(r_ret)

method shapeGetType*(self: PhysicsServer3DExtension; shape: RID): PhysicsServer3D_ShapeType {.base.} = (discard)
proc registerVirtual_shapeGetType*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetType(p_args[0].decode(RID)).encode(r_ret)

method shapeGetData*(self: PhysicsServer3DExtension; shape: RID): Variant {.base.} = (discard)
proc registerVirtual_shapeGetData*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetData(p_args[0].decode(RID)).encode(r_ret)

method shapeGetCustomSolverBias*(self: PhysicsServer3DExtension; shape: RID): Float {.base.} = (discard)
proc registerVirtual_shapeGetCustomSolverBias*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shape_get_custom_solver_bias"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).shapeGetCustomSolverBias(p_args[0].decode(RID)).encode(r_ret)

method spaceCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_spaceCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceCreate().encode(r_ret)

method spaceSetActive*(self: PhysicsServer3DExtension; space: RID; active: bool): void {.base.} = (discard)
proc registerVirtual_spaceSetActive*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetActive(p_args[0].decode(RID), p_args[1].decode(bool))

method spaceIsActive*(self: PhysicsServer3DExtension; space: RID): bool {.base.} = (discard)
proc registerVirtual_spaceIsActive*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_is_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceIsActive(p_args[0].decode(RID)).encode(r_ret)

method spaceSetParam*(self: PhysicsServer3DExtension; space: RID; param: PhysicsServer3D_SpaceParameter; value: Float): void {.base.} = (discard)
proc registerVirtual_spaceSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_SpaceParameter), p_args[2].decode(Float))

method spaceGetParam*(self: PhysicsServer3DExtension; space: RID; param: PhysicsServer3D_SpaceParameter): Float {.base.} = (discard)
proc registerVirtual_spaceGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_SpaceParameter)).encode(r_ret)

method spaceGetDirectState*(self: PhysicsServer3DExtension; space: RID): PhysicsDirectSpaceState3D {.base.} = (discard)
proc registerVirtual_spaceGetDirectState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_direct_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetDirectState(p_args[0].decode(RID)).encode(r_ret)

method spaceSetDebugContacts*(self: PhysicsServer3DExtension; space: RID; maxContacts: int32): void {.base.} = (discard)
proc registerVirtual_spaceSetDebugContacts*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_set_debug_contacts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceSetDebugContacts(p_args[0].decode(RID), p_args[1].decode(int32))

method spaceGetContacts*(self: PhysicsServer3DExtension; space: RID): PackedVector3Array {.base.} = (discard)
proc registerVirtual_spaceGetContacts*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_contacts"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetContacts(p_args[0].decode(RID)).encode(r_ret)

method spaceGetContactCount*(self: PhysicsServer3DExtension; space: RID): int32 {.base.} = (discard)
proc registerVirtual_spaceGetContactCount*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_space_get_contact_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).spaceGetContactCount(p_args[0].decode(RID)).encode(r_ret)

method areaCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_areaCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaCreate().encode(r_ret)

method areaSetSpace*(self: PhysicsServer3DExtension; area: RID; space: RID): void {.base.} = (discard)
proc registerVirtual_areaSetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetSpace(p_args[0].decode(RID), p_args[1].decode(RID))

method areaGetSpace*(self: PhysicsServer3DExtension; area: RID): RID {.base.} = (discard)
proc registerVirtual_areaGetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetSpace(p_args[0].decode(RID)).encode(r_ret)

method areaAddShape*(self: PhysicsServer3DExtension; area: RID; shape: RID; transform: Transform3D; disabled: bool): void {.base.} = (discard)
proc registerVirtual_areaAddShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_add_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaAddShape(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(bool))

method areaSetShape*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32; shape: RID): void {.base.} = (discard)
proc registerVirtual_areaSetShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShape(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(RID))

method areaSetShapeTransform*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_areaSetShapeTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Transform3D))

method areaSetShapeDisabled*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc registerVirtual_areaSetShapeDisabled*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_shape_disabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetShapeDisabled(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool))

method areaGetShapeCount*(self: PhysicsServer3DExtension; area: RID): int32 {.base.} = (discard)
proc registerVirtual_areaGetShapeCount*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShapeCount(p_args[0].decode(RID)).encode(r_ret)

method areaGetShape*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32): RID {.base.} = (discard)
proc registerVirtual_areaGetShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShape(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method areaGetShapeTransform*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32): Transform3D {.base.} = (discard)
proc registerVirtual_areaGetShapeTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method areaRemoveShape*(self: PhysicsServer3DExtension; area: RID; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_areaRemoveShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_remove_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaRemoveShape(p_args[0].decode(RID), p_args[1].decode(int32))

method areaClearShapes*(self: PhysicsServer3DExtension; area: RID): void {.base.} = (discard)
proc registerVirtual_areaClearShapes*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_clear_shapes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaClearShapes(p_args[0].decode(RID))

method areaAttachObjectInstanceId*(self: PhysicsServer3DExtension; area: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_areaAttachObjectInstanceId*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_attach_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaAttachObjectInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method areaGetObjectInstanceId*(self: PhysicsServer3DExtension; area: RID): uint64 {.base.} = (discard)
proc registerVirtual_areaGetObjectInstanceId*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetObjectInstanceId(p_args[0].decode(RID)).encode(r_ret)

method areaSetParam*(self: PhysicsServer3DExtension; area: RID; param: PhysicsServer3D_AreaParameter; value: Variant): void {.base.} = (discard)
proc registerVirtual_areaSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_AreaParameter), p_args[2].decode(Variant))

method areaSetTransform*(self: PhysicsServer3DExtension; area: RID; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_areaSetTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetTransform(p_args[0].decode(RID), p_args[1].decode(Transform3D))

method areaGetParam*(self: PhysicsServer3DExtension; area: RID; param: PhysicsServer3D_AreaParameter): Variant {.base.} = (discard)
proc registerVirtual_areaGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_AreaParameter)).encode(r_ret)

method areaGetTransform*(self: PhysicsServer3DExtension; area: RID): Transform3D {.base.} = (discard)
proc registerVirtual_areaGetTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetTransform(p_args[0].decode(RID)).encode(r_ret)

method areaSetCollisionLayer*(self: PhysicsServer3DExtension; area: RID; layer: uint32): void {.base.} = (discard)
proc registerVirtual_areaSetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetCollisionLayer(p_args[0].decode(RID), p_args[1].decode(uint32))

method areaGetCollisionLayer*(self: PhysicsServer3DExtension; area: RID): uint32 {.base.} = (discard)
proc registerVirtual_areaGetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetCollisionLayer(p_args[0].decode(RID)).encode(r_ret)

method areaSetCollisionMask*(self: PhysicsServer3DExtension; area: RID; mask: uint32): void {.base.} = (discard)
proc registerVirtual_areaSetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetCollisionMask(p_args[0].decode(RID), p_args[1].decode(uint32))

method areaGetCollisionMask*(self: PhysicsServer3DExtension; area: RID): uint32 {.base.} = (discard)
proc registerVirtual_areaGetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_get_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaGetCollisionMask(p_args[0].decode(RID)).encode(r_ret)

method areaSetMonitorable*(self: PhysicsServer3DExtension; area: RID; monitorable: bool): void {.base.} = (discard)
proc registerVirtual_areaSetMonitorable*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_monitorable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetMonitorable(p_args[0].decode(RID), p_args[1].decode(bool))

method areaSetRayPickable*(self: PhysicsServer3DExtension; area: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_areaSetRayPickable*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_ray_pickable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetRayPickable(p_args[0].decode(RID), p_args[1].decode(bool))

method areaSetMonitorCallback*(self: PhysicsServer3DExtension; area: RID; callback: Callable): void {.base.} = (discard)
proc registerVirtual_areaSetMonitorCallback*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_monitor_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetMonitorCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method areaSetAreaMonitorCallback*(self: PhysicsServer3DExtension; area: RID; callback: Callable): void {.base.} = (discard)
proc registerVirtual_areaSetAreaMonitorCallback*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_area_set_area_monitor_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).areaSetAreaMonitorCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method bodyCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_bodyCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyCreate().encode(r_ret)

method bodySetSpace*(self: PhysicsServer3DExtension; body: RID; space: RID): void {.base.} = (discard)
proc registerVirtual_bodySetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetSpace(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyGetSpace*(self: PhysicsServer3DExtension; body: RID): RID {.base.} = (discard)
proc registerVirtual_bodyGetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetSpace(p_args[0].decode(RID)).encode(r_ret)

method bodySetMode*(self: PhysicsServer3DExtension; body: RID; mode: PhysicsServer3D_BodyMode): void {.base.} = (discard)
proc registerVirtual_bodySetMode*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetMode(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyMode))

method bodyGetMode*(self: PhysicsServer3DExtension; body: RID): PhysicsServer3D_BodyMode {.base.} = (discard)
proc registerVirtual_bodyGetMode*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetMode(p_args[0].decode(RID)).encode(r_ret)

method bodyAddShape*(self: PhysicsServer3DExtension; body: RID; shape: RID; transform: Transform3D; disabled: bool): void {.base.} = (discard)
proc registerVirtual_bodyAddShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddShape(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(bool))

method bodySetShape*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32; shape: RID): void {.base.} = (discard)
proc registerVirtual_bodySetShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShape(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(RID))

method bodySetShapeTransform*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_bodySetShapeTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Transform3D))

method bodySetShapeDisabled*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32; disabled: bool): void {.base.} = (discard)
proc registerVirtual_bodySetShapeDisabled*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_shape_disabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetShapeDisabled(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool))

method bodyGetShapeCount*(self: PhysicsServer3DExtension; body: RID): int32 {.base.} = (discard)
proc registerVirtual_bodyGetShapeCount*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShapeCount(p_args[0].decode(RID)).encode(r_ret)

method bodyGetShape*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32): RID {.base.} = (discard)
proc registerVirtual_bodyGetShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShape(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method bodyGetShapeTransform*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32): Transform3D {.base.} = (discard)
proc registerVirtual_bodyGetShapeTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_shape_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetShapeTransform(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method bodyRemoveShape*(self: PhysicsServer3DExtension; body: RID; shapeIdx: int32): void {.base.} = (discard)
proc registerVirtual_bodyRemoveShape*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_remove_shape"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyRemoveShape(p_args[0].decode(RID), p_args[1].decode(int32))

method bodyClearShapes*(self: PhysicsServer3DExtension; body: RID): void {.base.} = (discard)
proc registerVirtual_bodyClearShapes*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_clear_shapes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyClearShapes(p_args[0].decode(RID))

method bodyAttachObjectInstanceId*(self: PhysicsServer3DExtension; body: RID; id: uint64): void {.base.} = (discard)
proc registerVirtual_bodyAttachObjectInstanceId*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_attach_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAttachObjectInstanceId(p_args[0].decode(RID), p_args[1].decode(uint64))

method bodyGetObjectInstanceId*(self: PhysicsServer3DExtension; body: RID): uint64 {.base.} = (discard)
proc registerVirtual_bodyGetObjectInstanceId*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_object_instance_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetObjectInstanceId(p_args[0].decode(RID)).encode(r_ret)

method bodySetEnableContinuousCollisionDetection*(self: PhysicsServer3DExtension; body: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_bodySetEnableContinuousCollisionDetection*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_enable_continuous_collision_detection"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetEnableContinuousCollisionDetection(p_args[0].decode(RID), p_args[1].decode(bool))

method bodyIsContinuousCollisionDetectionEnabled*(self: PhysicsServer3DExtension; body: RID): bool {.base.} = (discard)
proc registerVirtual_bodyIsContinuousCollisionDetectionEnabled*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_is_continuous_collision_detection_enabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsContinuousCollisionDetectionEnabled(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionLayer*(self: PhysicsServer3DExtension; body: RID; layer: uint32): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionLayer(p_args[0].decode(RID), p_args[1].decode(uint32))

method bodyGetCollisionLayer*(self: PhysicsServer3DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_bodyGetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionLayer(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionMask*(self: PhysicsServer3DExtension; body: RID; mask: uint32): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionMask(p_args[0].decode(RID), p_args[1].decode(uint32))

method bodyGetCollisionMask*(self: PhysicsServer3DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_bodyGetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionMask(p_args[0].decode(RID)).encode(r_ret)

method bodySetCollisionPriority*(self: PhysicsServer3DExtension; body: RID; priority: Float): void {.base.} = (discard)
proc registerVirtual_bodySetCollisionPriority*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_collision_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetCollisionPriority(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyGetCollisionPriority*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_bodyGetCollisionPriority*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionPriority(p_args[0].decode(RID)).encode(r_ret)

method bodySetUserFlags*(self: PhysicsServer3DExtension; body: RID; flags: uint32): void {.base.} = (discard)
proc registerVirtual_bodySetUserFlags*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_user_flags"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetUserFlags(p_args[0].decode(RID), p_args[1].decode(uint32))

method bodyGetUserFlags*(self: PhysicsServer3DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_bodyGetUserFlags*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_user_flags"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetUserFlags(p_args[0].decode(RID)).encode(r_ret)

method bodySetParam*(self: PhysicsServer3DExtension; body: RID; param: PhysicsServer3D_BodyParameter; value: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyParameter), p_args[2].decode(Variant))

method bodyGetParam*(self: PhysicsServer3DExtension; body: RID; param: PhysicsServer3D_BodyParameter): Variant {.base.} = (discard)
proc registerVirtual_bodyGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyParameter)).encode(r_ret)

method bodyResetMassProperties*(self: PhysicsServer3DExtension; body: RID): void {.base.} = (discard)
proc registerVirtual_bodyResetMassProperties*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_reset_mass_properties"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyResetMassProperties(p_args[0].decode(RID))

method bodySetState*(self: PhysicsServer3DExtension; body: RID; state: PhysicsServer3D_BodyState; value: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyState), p_args[2].decode(Variant))

method bodyGetState*(self: PhysicsServer3DExtension; body: RID; state: PhysicsServer3D_BodyState): Variant {.base.} = (discard)
proc registerVirtual_bodyGetState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyState)).encode(r_ret)

method bodyApplyCentralImpulse*(self: PhysicsServer3DExtension; body: RID; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyCentralImpulse*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_central_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyCentralImpulse(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyApplyImpulse*(self: PhysicsServer3DExtension; body: RID; impulse: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyImpulse*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyImpulse(p_args[0].decode(RID), p_args[1].decode(Vector3), p_args[2].decode(Vector3))

method bodyApplyTorqueImpulse*(self: PhysicsServer3DExtension; body: RID; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyTorqueImpulse*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_torque_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyTorqueImpulse(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyApplyCentralForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyCentralForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyCentralForce(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyApplyForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyForce(p_args[0].decode(RID), p_args[1].decode(Vector3), p_args[2].decode(Vector3))

method bodyApplyTorque*(self: PhysicsServer3DExtension; body: RID; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyApplyTorque*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_apply_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyApplyTorque(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyAddConstantCentralForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantCentralForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantCentralForce(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyAddConstantForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3; position: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantForce(p_args[0].decode(RID), p_args[1].decode(Vector3), p_args[2].decode(Vector3))

method bodyAddConstantTorque*(self: PhysicsServer3DExtension; body: RID; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_bodyAddConstantTorque*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddConstantTorque(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodySetConstantForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3): void {.base.} = (discard)
proc registerVirtual_bodySetConstantForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetConstantForce(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyGetConstantForce*(self: PhysicsServer3DExtension; body: RID): Vector3 {.base.} = (discard)
proc registerVirtual_bodyGetConstantForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_constant_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetConstantForce(p_args[0].decode(RID)).encode(r_ret)

method bodySetConstantTorque*(self: PhysicsServer3DExtension; body: RID; torque: Vector3): void {.base.} = (discard)
proc registerVirtual_bodySetConstantTorque*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetConstantTorque(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodyGetConstantTorque*(self: PhysicsServer3DExtension; body: RID): Vector3 {.base.} = (discard)
proc registerVirtual_bodyGetConstantTorque*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_constant_torque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetConstantTorque(p_args[0].decode(RID)).encode(r_ret)

method bodySetAxisVelocity*(self: PhysicsServer3DExtension; body: RID; axisVelocity: Vector3): void {.base.} = (discard)
proc registerVirtual_bodySetAxisVelocity*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_axis_velocity"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetAxisVelocity(p_args[0].decode(RID), p_args[1].decode(Vector3))

method bodySetAxisLock*(self: PhysicsServer3DExtension; body: RID; axis: PhysicsServer3D_BodyAxis; lock: bool): void {.base.} = (discard)
proc registerVirtual_bodySetAxisLock*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_axis_lock"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetAxisLock(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyAxis), p_args[2].decode(bool))

method bodyIsAxisLocked*(self: PhysicsServer3DExtension; body: RID; axis: PhysicsServer3D_BodyAxis): bool {.base.} = (discard)
proc registerVirtual_bodyIsAxisLocked*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_is_axis_locked"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsAxisLocked(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyAxis)).encode(r_ret)

method bodyAddCollisionException*(self: PhysicsServer3DExtension; body: RID; exceptedBody: RID): void {.base.} = (discard)
proc registerVirtual_bodyAddCollisionException*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_add_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyAddCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyRemoveCollisionException*(self: PhysicsServer3DExtension; body: RID; exceptedBody: RID): void {.base.} = (discard)
proc registerVirtual_bodyRemoveCollisionException*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_remove_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyRemoveCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method bodyGetCollisionExceptions*(self: PhysicsServer3DExtension; body: RID): TypedArray[RID] {.base.} = (discard)
proc registerVirtual_bodyGetCollisionExceptions*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_collision_exceptions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetCollisionExceptions(p_args[0].decode(RID)).encode(r_ret)

method bodySetMaxContactsReported*(self: PhysicsServer3DExtension; body: RID; amount: int32): void {.base.} = (discard)
proc registerVirtual_bodySetMaxContactsReported*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_max_contacts_reported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetMaxContactsReported(p_args[0].decode(RID), p_args[1].decode(int32))

method bodyGetMaxContactsReported*(self: PhysicsServer3DExtension; body: RID): int32 {.base.} = (discard)
proc registerVirtual_bodyGetMaxContactsReported*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_max_contacts_reported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetMaxContactsReported(p_args[0].decode(RID)).encode(r_ret)

method bodySetContactsReportedDepthThreshold*(self: PhysicsServer3DExtension; body: RID; threshold: Float): void {.base.} = (discard)
proc registerVirtual_bodySetContactsReportedDepthThreshold*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_contacts_reported_depth_threshold"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetContactsReportedDepthThreshold(p_args[0].decode(RID), p_args[1].decode(Float))

method bodyGetContactsReportedDepthThreshold*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_bodyGetContactsReportedDepthThreshold*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_contacts_reported_depth_threshold"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetContactsReportedDepthThreshold(p_args[0].decode(RID)).encode(r_ret)

method bodySetOmitForceIntegration*(self: PhysicsServer3DExtension; body: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_bodySetOmitForceIntegration*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_omit_force_integration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetOmitForceIntegration(p_args[0].decode(RID), p_args[1].decode(bool))

method bodyIsOmittingForceIntegration*(self: PhysicsServer3DExtension; body: RID): bool {.base.} = (discard)
proc registerVirtual_bodyIsOmittingForceIntegration*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_is_omitting_force_integration"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyIsOmittingForceIntegration(p_args[0].decode(RID)).encode(r_ret)

method bodySetStateSyncCallback*(self: PhysicsServer3DExtension; body: RID; callable: Callable): void {.base.} = (discard)
proc registerVirtual_bodySetStateSyncCallback*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_state_sync_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetStateSyncCallback(p_args[0].decode(RID), p_args[1].decode(Callable))

method bodySetForceIntegrationCallback*(self: PhysicsServer3DExtension; body: RID; callable: Callable; userdata: Variant): void {.base.} = (discard)
proc registerVirtual_bodySetForceIntegrationCallback*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_force_integration_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetForceIntegrationCallback(p_args[0].decode(RID), p_args[1].decode(Callable), p_args[2].decode(Variant))

method bodySetRayPickable*(self: PhysicsServer3DExtension; body: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_bodySetRayPickable*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_set_ray_pickable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodySetRayPickable(p_args[0].decode(RID), p_args[1].decode(bool))

method bodyTestMotion*(self: PhysicsServer3DExtension; body: RID; `from`: Transform3D; motion: Vector3; margin: Float; maxCollisions: int32; collideSeparationRay: bool; recoveryAsCollision: bool; retval: ptr PhysicsServer3DExtensionMotionResult): bool {.base.} = (discard)
proc registerVirtual_bodyTestMotion*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_test_motion"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyTestMotion(p_args[0].decode(RID), p_args[1].decode(Transform3D), p_args[2].decode(Vector3), p_args[3].decode(Float), p_args[4].decode(int32), p_args[5].decode(bool), p_args[6].decode(bool), p_args[7].decode(ptr PhysicsServer3DExtensionMotionResult)).encode(r_ret)

method bodyGetDirectState*(self: PhysicsServer3DExtension; body: RID): PhysicsDirectBodyState3D {.base.} = (discard)
proc registerVirtual_bodyGetDirectState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_body_get_direct_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).bodyGetDirectState(p_args[0].decode(RID)).encode(r_ret)

method softBodyCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_softBodyCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyCreate().encode(r_ret)

method softBodyUpdateRenderingServer*(self: PhysicsServer3DExtension; body: RID; renderingServerHandler: PhysicsServer3DRenderingServerHandler): void {.base.} = (discard)
proc registerVirtual_softBodyUpdateRenderingServer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_update_rendering_server"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyUpdateRenderingServer(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3DRenderingServerHandler))

method softBodySetSpace*(self: PhysicsServer3DExtension; body: RID; space: RID): void {.base.} = (discard)
proc registerVirtual_softBodySetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetSpace(p_args[0].decode(RID), p_args[1].decode(RID))

method softBodyGetSpace*(self: PhysicsServer3DExtension; body: RID): RID {.base.} = (discard)
proc registerVirtual_softBodyGetSpace*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_space"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetSpace(p_args[0].decode(RID)).encode(r_ret)

method softBodySetRayPickable*(self: PhysicsServer3DExtension; body: RID; enable: bool): void {.base.} = (discard)
proc registerVirtual_softBodySetRayPickable*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_ray_pickable"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetRayPickable(p_args[0].decode(RID), p_args[1].decode(bool))

method softBodySetCollisionLayer*(self: PhysicsServer3DExtension; body: RID; layer: uint32): void {.base.} = (discard)
proc registerVirtual_softBodySetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetCollisionLayer(p_args[0].decode(RID), p_args[1].decode(uint32))

method softBodyGetCollisionLayer*(self: PhysicsServer3DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_softBodyGetCollisionLayer*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_collision_layer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionLayer(p_args[0].decode(RID)).encode(r_ret)

method softBodySetCollisionMask*(self: PhysicsServer3DExtension; body: RID; mask: uint32): void {.base.} = (discard)
proc registerVirtual_softBodySetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetCollisionMask(p_args[0].decode(RID), p_args[1].decode(uint32))

method softBodyGetCollisionMask*(self: PhysicsServer3DExtension; body: RID): uint32 {.base.} = (discard)
proc registerVirtual_softBodyGetCollisionMask*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_collision_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionMask(p_args[0].decode(RID)).encode(r_ret)

method softBodyAddCollisionException*(self: PhysicsServer3DExtension; body: RID; bodyB: RID): void {.base.} = (discard)
proc registerVirtual_softBodyAddCollisionException*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_add_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyAddCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method softBodyRemoveCollisionException*(self: PhysicsServer3DExtension; body: RID; bodyB: RID): void {.base.} = (discard)
proc registerVirtual_softBodyRemoveCollisionException*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_remove_collision_exception"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyRemoveCollisionException(p_args[0].decode(RID), p_args[1].decode(RID))

method softBodyGetCollisionExceptions*(self: PhysicsServer3DExtension; body: RID): TypedArray[RID] {.base.} = (discard)
proc registerVirtual_softBodyGetCollisionExceptions*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_collision_exceptions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetCollisionExceptions(p_args[0].decode(RID)).encode(r_ret)

method softBodySetState*(self: PhysicsServer3DExtension; body: RID; state: PhysicsServer3D_BodyState; variant: Variant): void {.base.} = (discard)
proc registerVirtual_softBodySetState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyState), p_args[2].decode(Variant))

method softBodyGetState*(self: PhysicsServer3DExtension; body: RID; state: PhysicsServer3D_BodyState): Variant {.base.} = (discard)
proc registerVirtual_softBodyGetState*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetState(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_BodyState)).encode(r_ret)

method softBodySetTransform*(self: PhysicsServer3DExtension; body: RID; transform: Transform3D): void {.base.} = (discard)
proc registerVirtual_softBodySetTransform*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetTransform(p_args[0].decode(RID), p_args[1].decode(Transform3D))

method softBodySetSimulationPrecision*(self: PhysicsServer3DExtension; body: RID; simulationPrecision: int32): void {.base.} = (discard)
proc registerVirtual_softBodySetSimulationPrecision*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_simulation_precision"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetSimulationPrecision(p_args[0].decode(RID), p_args[1].decode(int32))

method softBodyGetSimulationPrecision*(self: PhysicsServer3DExtension; body: RID): int32 {.base.} = (discard)
proc registerVirtual_softBodyGetSimulationPrecision*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_simulation_precision"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetSimulationPrecision(p_args[0].decode(RID)).encode(r_ret)

method softBodySetTotalMass*(self: PhysicsServer3DExtension; body: RID; totalMass: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetTotalMass*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_total_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetTotalMass(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetTotalMass*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetTotalMass*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_total_mass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetTotalMass(p_args[0].decode(RID)).encode(r_ret)

method softBodySetLinearStiffness*(self: PhysicsServer3DExtension; body: RID; linearStiffness: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetLinearStiffness*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_linear_stiffness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetLinearStiffness(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetLinearStiffness*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetLinearStiffness*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_linear_stiffness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetLinearStiffness(p_args[0].decode(RID)).encode(r_ret)

method softBodySetShrinkingFactor*(self: PhysicsServer3DExtension; body: RID; shrinkingFactor: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetShrinkingFactor*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_shrinking_factor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetShrinkingFactor(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetShrinkingFactor*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetShrinkingFactor*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_shrinking_factor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetShrinkingFactor(p_args[0].decode(RID)).encode(r_ret)

method softBodySetPressureCoefficient*(self: PhysicsServer3DExtension; body: RID; pressureCoefficient: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetPressureCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_pressure_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetPressureCoefficient(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetPressureCoefficient*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetPressureCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_pressure_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetPressureCoefficient(p_args[0].decode(RID)).encode(r_ret)

method softBodySetDampingCoefficient*(self: PhysicsServer3DExtension; body: RID; dampingCoefficient: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetDampingCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_damping_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetDampingCoefficient(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetDampingCoefficient*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetDampingCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_damping_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetDampingCoefficient(p_args[0].decode(RID)).encode(r_ret)

method softBodySetDragCoefficient*(self: PhysicsServer3DExtension; body: RID; dragCoefficient: Float): void {.base.} = (discard)
proc registerVirtual_softBodySetDragCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_drag_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetDragCoefficient(p_args[0].decode(RID), p_args[1].decode(Float))

method softBodyGetDragCoefficient*(self: PhysicsServer3DExtension; body: RID): Float {.base.} = (discard)
proc registerVirtual_softBodyGetDragCoefficient*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_drag_coefficient"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetDragCoefficient(p_args[0].decode(RID)).encode(r_ret)

method softBodySetMesh*(self: PhysicsServer3DExtension; body: RID; mesh: RID): void {.base.} = (discard)
proc registerVirtual_softBodySetMesh*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_set_mesh"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodySetMesh(p_args[0].decode(RID), p_args[1].decode(RID))

method softBodyGetBounds*(self: PhysicsServer3DExtension; body: RID): AABB {.base.} = (discard)
proc registerVirtual_softBodyGetBounds*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_bounds"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetBounds(p_args[0].decode(RID)).encode(r_ret)

method softBodyMovePoint*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32; globalPosition: Vector3): void {.base.} = (discard)
proc registerVirtual_softBodyMovePoint*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_move_point"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyMovePoint(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Vector3))

method softBodyGetPointGlobalPosition*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32): Vector3 {.base.} = (discard)
proc registerVirtual_softBodyGetPointGlobalPosition*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_get_point_global_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyGetPointGlobalPosition(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method softBodyRemoveAllPinnedPoints*(self: PhysicsServer3DExtension; body: RID): void {.base.} = (discard)
proc registerVirtual_softBodyRemoveAllPinnedPoints*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_remove_all_pinned_points"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyRemoveAllPinnedPoints(p_args[0].decode(RID))

method softBodyPinPoint*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32; pin: bool): void {.base.} = (discard)
proc registerVirtual_softBodyPinPoint*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_pin_point"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyPinPoint(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(bool))

method softBodyIsPointPinned*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32): bool {.base.} = (discard)
proc registerVirtual_softBodyIsPointPinned*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_is_point_pinned"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyIsPointPinned(p_args[0].decode(RID), p_args[1].decode(int32)).encode(r_ret)

method softBodyApplyPointImpulse*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_softBodyApplyPointImpulse*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_apply_point_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyApplyPointImpulse(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Vector3))

method softBodyApplyPointForce*(self: PhysicsServer3DExtension; body: RID; pointIndex: int32; force: Vector3): void {.base.} = (discard)
proc registerVirtual_softBodyApplyPointForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_apply_point_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyApplyPointForce(p_args[0].decode(RID), p_args[1].decode(int32), p_args[2].decode(Vector3))

method softBodyApplyCentralImpulse*(self: PhysicsServer3DExtension; body: RID; impulse: Vector3): void {.base.} = (discard)
proc registerVirtual_softBodyApplyCentralImpulse*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_apply_central_impulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyApplyCentralImpulse(p_args[0].decode(RID), p_args[1].decode(Vector3))

method softBodyApplyCentralForce*(self: PhysicsServer3DExtension; body: RID; force: Vector3): void {.base.} = (discard)
proc registerVirtual_softBodyApplyCentralForce*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_soft_body_apply_central_force"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).softBodyApplyCentralForce(p_args[0].decode(RID), p_args[1].decode(Vector3))

method jointCreate*(self: PhysicsServer3DExtension): RID {.base.} = (discard)
proc registerVirtual_jointCreate*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_create"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointCreate().encode(r_ret)

method jointClear*(self: PhysicsServer3DExtension; joint: RID): void {.base.} = (discard)
proc registerVirtual_jointClear*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_clear"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointClear(p_args[0].decode(RID))

method jointMakePin*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; localA: Vector3; bodyB: RID; localB: Vector3): void {.base.} = (discard)
proc registerVirtual_jointMakePin*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_pin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakePin(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Vector3), p_args[3].decode(RID), p_args[4].decode(Vector3))

method pinJointSetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_PinJointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_pinJointSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_PinJointParam), p_args[2].decode(Float))

method pinJointGetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_PinJointParam): Float {.base.} = (discard)
proc registerVirtual_pinJointGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_PinJointParam)).encode(r_ret)

method pinJointSetLocalA*(self: PhysicsServer3DExtension; joint: RID; localA: Vector3): void {.base.} = (discard)
proc registerVirtual_pinJointSetLocalA*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_set_local_a"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetLocalA(p_args[0].decode(RID), p_args[1].decode(Vector3))

method pinJointGetLocalA*(self: PhysicsServer3DExtension; joint: RID): Vector3 {.base.} = (discard)
proc registerVirtual_pinJointGetLocalA*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_get_local_a"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetLocalA(p_args[0].decode(RID)).encode(r_ret)

method pinJointSetLocalB*(self: PhysicsServer3DExtension; joint: RID; localB: Vector3): void {.base.} = (discard)
proc registerVirtual_pinJointSetLocalB*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_set_local_b"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointSetLocalB(p_args[0].decode(RID), p_args[1].decode(Vector3))

method pinJointGetLocalB*(self: PhysicsServer3DExtension; joint: RID): Vector3 {.base.} = (discard)
proc registerVirtual_pinJointGetLocalB*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pin_joint_get_local_b"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).pinJointGetLocalB(p_args[0].decode(RID)).encode(r_ret)

method jointMakeHinge*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; hingeA: Transform3D; bodyB: RID; hingeB: Transform3D): void {.base.} = (discard)
proc registerVirtual_jointMakeHinge*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_hinge"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeHinge(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(RID), p_args[4].decode(Transform3D))

method jointMakeHingeSimple*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; pivotA: Vector3; axisA: Vector3; bodyB: RID; pivotB: Vector3; axisB: Vector3): void {.base.} = (discard)
proc registerVirtual_jointMakeHingeSimple*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_hinge_simple"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeHingeSimple(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Vector3), p_args[3].decode(Vector3), p_args[4].decode(RID), p_args[5].decode(Vector3), p_args[6].decode(Vector3))

method hingeJointSetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_HingeJointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_hingeJointSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_hinge_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_HingeJointParam), p_args[2].decode(Float))

method hingeJointGetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_HingeJointParam): Float {.base.} = (discard)
proc registerVirtual_hingeJointGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_hinge_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_HingeJointParam)).encode(r_ret)

method hingeJointSetFlag*(self: PhysicsServer3DExtension; joint: RID; flag: PhysicsServer3D_HingeJointFlag; enabled: bool): void {.base.} = (discard)
proc registerVirtual_hingeJointSetFlag*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_hinge_joint_set_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointSetFlag(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_HingeJointFlag), p_args[2].decode(bool))

method hingeJointGetFlag*(self: PhysicsServer3DExtension; joint: RID; flag: PhysicsServer3D_HingeJointFlag): bool {.base.} = (discard)
proc registerVirtual_hingeJointGetFlag*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_hinge_joint_get_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).hingeJointGetFlag(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_HingeJointFlag)).encode(r_ret)

method jointMakeSlider*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void {.base.} = (discard)
proc registerVirtual_jointMakeSlider*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_slider"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeSlider(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(RID), p_args[4].decode(Transform3D))

method sliderJointSetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_SliderJointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_sliderJointSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_slider_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).sliderJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_SliderJointParam), p_args[2].decode(Float))

method sliderJointGetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_SliderJointParam): Float {.base.} = (discard)
proc registerVirtual_sliderJointGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_slider_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).sliderJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_SliderJointParam)).encode(r_ret)

method jointMakeConeTwist*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void {.base.} = (discard)
proc registerVirtual_jointMakeConeTwist*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_cone_twist"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeConeTwist(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(RID), p_args[4].decode(Transform3D))

method coneTwistJointSetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_ConeTwistJointParam; value: Float): void {.base.} = (discard)
proc registerVirtual_coneTwistJointSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cone_twist_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).coneTwistJointSetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_ConeTwistJointParam), p_args[2].decode(Float))

method coneTwistJointGetParam*(self: PhysicsServer3DExtension; joint: RID; param: PhysicsServer3D_ConeTwistJointParam): Float {.base.} = (discard)
proc registerVirtual_coneTwistJointGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cone_twist_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).coneTwistJointGetParam(p_args[0].decode(RID), p_args[1].decode(PhysicsServer3D_ConeTwistJointParam)).encode(r_ret)

method jointMakeGeneric6Dof*(self: PhysicsServer3DExtension; joint: RID; bodyA: RID; localRefA: Transform3D; bodyB: RID; localRefB: Transform3D): void {.base.} = (discard)
proc registerVirtual_jointMakeGeneric6Dof*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_make_generic_6dof"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointMakeGeneric6Dof(p_args[0].decode(RID), p_args[1].decode(RID), p_args[2].decode(Transform3D), p_args[3].decode(RID), p_args[4].decode(Transform3D))

method generic6DofJointSetParam*(self: PhysicsServer3DExtension; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam; value: Float): void {.base.} = (discard)
proc registerVirtual_generic6DofJointSetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generic_6dof_joint_set_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointSetParam(p_args[0].decode(RID), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DOFJointAxisParam), p_args[3].decode(Float))

method generic6DofJointGetParam*(self: PhysicsServer3DExtension; joint: RID; axis: Vector3_Axis; param: PhysicsServer3D_G6DOFJointAxisParam): Float {.base.} = (discard)
proc registerVirtual_generic6DofJointGetParam*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generic_6dof_joint_get_param"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointGetParam(p_args[0].decode(RID), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DOFJointAxisParam)).encode(r_ret)

method generic6DofJointSetFlag*(self: PhysicsServer3DExtension; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag; enable: bool): void {.base.} = (discard)
proc registerVirtual_generic6DofJointSetFlag*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generic_6dof_joint_set_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointSetFlag(p_args[0].decode(RID), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DOFJointAxisFlag), p_args[3].decode(bool))

method generic6DofJointGetFlag*(self: PhysicsServer3DExtension; joint: RID; axis: Vector3_Axis; flag: PhysicsServer3D_G6DOFJointAxisFlag): bool {.base.} = (discard)
proc registerVirtual_generic6DofJointGetFlag*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generic_6dof_joint_get_flag"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).generic6DofJointGetFlag(p_args[0].decode(RID), p_args[1].decode(Vector3_Axis), p_args[2].decode(PhysicsServer3D_G6DOFJointAxisFlag)).encode(r_ret)

method jointGetType*(self: PhysicsServer3DExtension; joint: RID): PhysicsServer3D_JointType {.base.} = (discard)
proc registerVirtual_jointGetType*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_get_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointGetType(p_args[0].decode(RID)).encode(r_ret)

method jointSetSolverPriority*(self: PhysicsServer3DExtension; joint: RID; priority: int32): void {.base.} = (discard)
proc registerVirtual_jointSetSolverPriority*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_set_solver_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointSetSolverPriority(p_args[0].decode(RID), p_args[1].decode(int32))

method jointGetSolverPriority*(self: PhysicsServer3DExtension; joint: RID): int32 {.base.} = (discard)
proc registerVirtual_jointGetSolverPriority*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_get_solver_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointGetSolverPriority(p_args[0].decode(RID)).encode(r_ret)

method jointDisableCollisionsBetweenBodies*(self: PhysicsServer3DExtension; joint: RID; disable: bool): void {.base.} = (discard)
proc registerVirtual_jointDisableCollisionsBetweenBodies*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_disable_collisions_between_bodies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointDisableCollisionsBetweenBodies(p_args[0].decode(RID), p_args[1].decode(bool))

method jointIsDisabledCollisionsBetweenBodies*(self: PhysicsServer3DExtension; joint: RID): bool {.base.} = (discard)
proc registerVirtual_jointIsDisabledCollisionsBetweenBodies*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_joint_is_disabled_collisions_between_bodies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).jointIsDisabledCollisionsBetweenBodies(p_args[0].decode(RID)).encode(r_ret)

method freeRid*(self: PhysicsServer3DExtension; rid: RID): void {.base.} = (discard)
proc registerVirtual_freeRid*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_free_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).freeRid(p_args[0].decode(RID))

method setActive*(self: PhysicsServer3DExtension; active: bool): void {.base.} = (discard)
proc registerVirtual_setActive*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).setActive(p_args[0].decode(bool))

method init*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc registerVirtual_init*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_init"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).init()

method step*(self: PhysicsServer3DExtension; step: Float): void {.base.} = (discard)
proc registerVirtual_step*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_step"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).step(p_args[0].decode(Float))

method sync*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc registerVirtual_sync*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_sync"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).sync()

method flushQueries*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc registerVirtual_flushQueries*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_flush_queries"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).flushQueries()

method endSync*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc registerVirtual_endSync*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_end_sync"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).endSync()

method finish*(self: PhysicsServer3DExtension): void {.base.} = (discard)
proc registerVirtual_finish*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_finish"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).finish()

method isFlushingQueries*(self: PhysicsServer3DExtension): bool {.base.} = (discard)
proc registerVirtual_isFlushingQueries*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_flushing_queries"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).isFlushingQueries().encode(r_ret)

method getProcessInfo*(self: PhysicsServer3DExtension; processInfo: PhysicsServer3D_ProcessInfo): int32 {.base.} = (discard)
proc registerVirtual_getProcessInfo*[T: PhysicsServer3DExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_process_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PhysicsServer3DExtension](p_instance).getProcessInfo(p_args[0].decode(PhysicsServer3D_ProcessInfo)).encode(r_ret)

proc bodyTestMotionIsExcludingBody*(self: PhysicsServer3DExtension; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DExtension, "body_test_motion_is_excluding_body", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)

proc bodyTestMotionIsExcludingObject*(self: PhysicsServer3DExtension; `object`: uint64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsServer3DExtension, "body_test_motion_is_excluding_object", 1116898809)
  methodbind.ptrcall(self, [getPtr `object`], bool)
