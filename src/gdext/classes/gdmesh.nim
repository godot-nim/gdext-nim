{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getSurfaceCount*(self: Mesh): int32 {.base.} = (discard)
proc registerVirtual_getSurfaceCount*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_surface_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).getSurfaceCount().encode(r_ret)

method surfaceGetArrayLen*(self: Mesh; index: int32): int32 {.base.} = (discard)
proc registerVirtual_surfaceGetArrayLen*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_array_len"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetArrayLen(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetArrayIndexLen*(self: Mesh; index: int32): int32 {.base.} = (discard)
proc registerVirtual_surfaceGetArrayIndexLen*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_array_index_len"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetArrayIndexLen(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetArrays*(self: Mesh; index: int32): Array {.base.} = (discard)
proc registerVirtual_surfaceGetArrays*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_arrays"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetArrays(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetBlendShapeArrays*(self: Mesh; index: int32): TypedArray[Array] {.base.} = (discard)
proc registerVirtual_surfaceGetBlendShapeArrays*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_blend_shape_arrays"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetBlendShapeArrays(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetLods*(self: Mesh; index: int32): Dictionary {.base.} = (discard)
proc registerVirtual_surfaceGetLods*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_lods"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetLods(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetFormat*(self: Mesh; index: int32): uint32 {.base.} = (discard)
proc registerVirtual_surfaceGetFormat*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_format"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetFormat(p_args[0].decode(int32)).encode(r_ret)

method surfaceGetPrimitiveType*(self: Mesh; index: int32): uint32 {.base.} = (discard)
proc registerVirtual_surfaceGetPrimitiveType*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_primitive_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetPrimitiveType(p_args[0].decode(int32)).encode(r_ret)

method surfaceSetMaterial*(self: Mesh; index: int32; material: gdref Material): void {.base.} = (discard)
proc registerVirtual_surfaceSetMaterial*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_set_material"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceSetMaterial(p_args[0].decode(int32), p_args[1].decode(gdref Material))

method surfaceGetMaterial*(self: Mesh; index: int32): gdref Material {.base.} = (discard)
proc registerVirtual_surfaceGetMaterial*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_surface_get_material"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).surfaceGetMaterial(p_args[0].decode(int32)).encode(r_ret)

method getBlendShapeCount*(self: Mesh): int32 {.base.} = (discard)
proc registerVirtual_getBlendShapeCount*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_blend_shape_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).getBlendShapeCount().encode(r_ret)

method getBlendShapeName*(self: Mesh; index: int32): StringName {.base.} = (discard)
proc registerVirtual_getBlendShapeName*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_blend_shape_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).getBlendShapeName(p_args[0].decode(int32)).encode(r_ret)

method setBlendShapeName*(self: Mesh; index: int32; name: StringName): void {.base.} = (discard)
proc registerVirtual_setBlendShapeName*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_blend_shape_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).setBlendShapeName(p_args[0].decode(int32), p_args[1].decode(StringName))

method getAabb*(self: Mesh): AABB {.base.} = (discard)
proc registerVirtual_getAabb*[T: Mesh](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_aabb"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Mesh](p_instance).getAabb().encode(r_ret)

proc setLightmapSizeHint*(self: Mesh; size: Vector2i): void =
  expandMethodBind(className Mesh, "set_lightmap_size_hint", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getLightmapSizeHint*(self: Mesh): Vector2i =
  expandMethodBind(className Mesh, "get_lightmap_size_hint", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc getAabb*(self: Mesh): AABB =
  expandMethodBind(className Mesh, "get_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

proc getFaces*(self: Mesh): PackedVector3Array =
  expandMethodBind(className Mesh, "get_faces", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getSurfaceCount*(self: Mesh): int32 =
  expandMethodBind(className Mesh, "get_surface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc surfaceGetArrays*(self: Mesh; surfIdx: int32): Array =
  expandMethodBind(className Mesh, "surface_get_arrays", 663333327)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr surfIdx], addr ret)
  (addr ret).decode_result(Array)

proc surfaceGetBlendShapeArrays*(self: Mesh; surfIdx: int32): TypedArray[Array] =
  expandMethodBind(className Mesh, "surface_get_blend_shape_arrays", 663333327)
  var ret: encoded TypedArray[Array]
  methodbind.ptrcall(self, [getPtr surfIdx], addr ret)
  (addr ret).decode_result(TypedArray[Array])

proc surfaceSetMaterial*(self: Mesh; surfIdx: int32; material: gdref Material): void =
  expandMethodBind(className Mesh, "surface_set_material", 3671737478)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr material])

proc surfaceGetMaterial*(self: Mesh; surfIdx: int32): gdref Material =
  expandMethodBind(className Mesh, "surface_get_material", 2897466400)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [getPtr surfIdx], addr ret)
  (addr ret).decode_result(gdref Material)

proc createPlaceholder*(self: Mesh): gdref Resource =
  expandMethodBind(className Mesh, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)

proc createTrimeshShape*(self: Mesh): gdref ConcavePolygonShape3D =
  expandMethodBind(className Mesh, "create_trimesh_shape", 4160111210)
  var ret: encoded gdref ConcavePolygonShape3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref ConcavePolygonShape3D)

proc createConvexShape*(self: Mesh; clean: bool = true; simplify: bool = false): gdref ConvexPolygonShape3D =
  expandMethodBind(className Mesh, "create_convex_shape", 2529984628)
  var ret: encoded gdref ConvexPolygonShape3D
  methodbind.ptrcall(self, [getPtr clean, getPtr simplify], addr ret)
  (addr ret).decode_result(gdref ConvexPolygonShape3D)

proc createOutline*(self: Mesh; margin: Float): gdref Mesh =
  expandMethodBind(className Mesh, "create_outline", 1208642001)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [getPtr margin], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc generateTriangleMesh*(self: Mesh): gdref TriangleMesh =
  expandMethodBind(className Mesh, "generate_triangle_mesh", 3476533166)
  var ret: encoded gdref TriangleMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref TriangleMesh)

template lightmapSizeHint*(self: Mesh): untyped = self.getLightmapSizeHint()
template `lightmapSizeHint=`*(self: Mesh; value) = self.setLightmapSizeHint(value)
