{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getSurfaceCount*(self: Mesh): int32 {.base.} = (discard)
proc getSurfaceCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).getSurfaceCount().encode(r_ret)
template getSurfaceCount_bind*(_: typedesc[Mesh]): ClassCallVirtual = getSurfaceCount

method surfaceGetArrayLen*(self: Mesh; index: int32): int32 {.base.} = (discard)
proc surfaceGetArrayLen(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetArrayLen(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetArrayLen_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetArrayLen

method surfaceGetArrayIndexLen*(self: Mesh; index: int32): int32 {.base.} = (discard)
proc surfaceGetArrayIndexLen(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetArrayIndexLen(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetArrayIndexLen_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetArrayIndexLen

method surfaceGetArrays*(self: Mesh; index: int32): Array {.base.} = (discard)
proc surfaceGetArrays(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetArrays(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetArrays_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetArrays

method surfaceGetBlendShapeArrays*(self: Mesh; index: int32): TypedArray[Array] {.base.} = (discard)
proc surfaceGetBlendShapeArrays(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetBlendShapeArrays(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetBlendShapeArrays_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetBlendShapeArrays

method surfaceGetLods*(self: Mesh; index: int32): Dictionary {.base.} = (discard)
proc surfaceGetLods(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetLods(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetLods_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetLods

method surfaceGetFormat*(self: Mesh; index: int32): uint32 {.base.} = (discard)
proc surfaceGetFormat(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetFormat(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetFormat_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetFormat

method surfaceGetPrimitiveType*(self: Mesh; index: int32): uint32 {.base.} = (discard)
proc surfaceGetPrimitiveType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetPrimitiveType(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetPrimitiveType_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetPrimitiveType

method surfaceSetMaterial*(self: Mesh; index: int32; material: gdref Material): void {.base.} = (discard)
proc surfaceSetMaterial(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceSetMaterial(p_args[0].decode(int32), p_args[1].decode(gdref Material))
template surfaceSetMaterial_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceSetMaterial

method surfaceGetMaterial*(self: Mesh; index: int32): gdref Material {.base.} = (discard)
proc surfaceGetMaterial(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).surfaceGetMaterial(p_args[0].decode(int32)).encode(r_ret)
template surfaceGetMaterial_bind*(_: typedesc[Mesh]): ClassCallVirtual = surfaceGetMaterial

method getBlendShapeCount*(self: Mesh): int32 {.base.} = (discard)
proc getBlendShapeCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).getBlendShapeCount().encode(r_ret)
template getBlendShapeCount_bind*(_: typedesc[Mesh]): ClassCallVirtual = getBlendShapeCount

method getBlendShapeName*(self: Mesh; index: int32): StringName {.base.} = (discard)
proc getBlendShapeName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).getBlendShapeName(p_args[0].decode(int32)).encode(r_ret)
template getBlendShapeName_bind*(_: typedesc[Mesh]): ClassCallVirtual = getBlendShapeName

method setBlendShapeName*(self: Mesh; index: int32; name: StringName): void {.base.} = (discard)
proc setBlendShapeName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).setBlendShapeName(p_args[0].decode(int32), p_args[1].decode(StringName))
template setBlendShapeName_bind*(_: typedesc[Mesh]): ClassCallVirtual = setBlendShapeName

method getAabb*(self: Mesh): Aabb {.base.} = (discard)
proc getAabb(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Mesh](p_instance).getAabb().encode(r_ret)
template getAabb_bind*(_: typedesc[Mesh]): ClassCallVirtual = getAabb

proc setLightmapSizeHint*(self: Mesh; size: Vector2i): void =
  expandMethodBind(className Mesh, "set_lightmap_size_hint", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightmapSizeHint*(self: Mesh): Vector2i =
  expandMethodBind(className Mesh, "get_lightmap_size_hint", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getAabb*(self: Mesh): Aabb =
  expandMethodBind(className Mesh, "get_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc getFaces*(self: Mesh): PackedVector3Array =
  expandMethodBind(className Mesh, "get_faces", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getSurfaceCount*(self: Mesh): int32 =
  expandMethodBind(className Mesh, "get_surface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc surfaceGetArrays*(self: Mesh; surfIdx: int32): Array =
  expandMethodBind(className Mesh, "surface_get_arrays", 663333327)
  var `?param` = [getPtr surfIdx]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc surfaceGetBlendShapeArrays*(self: Mesh; surfIdx: int32): TypedArray[Array] =
  expandMethodBind(className Mesh, "surface_get_blend_shape_arrays", 663333327)
  var `?param` = [getPtr surfIdx]
  var ret: encoded TypedArray[Array]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Array])

proc surfaceSetMaterial*(self: Mesh; surfIdx: int32; material: gdref Material): void =
  expandMethodBind(className Mesh, "surface_set_material", 3671737478)
  var `?param` = [getPtr surfIdx, getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc surfaceGetMaterial*(self: Mesh; surfIdx: int32): gdref Material =
  expandMethodBind(className Mesh, "surface_get_material", 2897466400)
  var `?param` = [getPtr surfIdx]
  var ret: encoded gdref Material
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Material)

proc createPlaceholder*(self: Mesh): gdref Resource =
  expandMethodBind(className Mesh, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

proc createTrimeshShape*(self: Mesh): gdref ConcavePolygonShape3D =
  expandMethodBind(className Mesh, "create_trimesh_shape", 4160111210)
  var ret: encoded gdref ConcavePolygonShape3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ConcavePolygonShape3D)

proc createConvexShape*(self: Mesh; clean: bool = true; simplify: bool = false): gdref ConvexPolygonShape3D =
  expandMethodBind(className Mesh, "create_convex_shape", 2529984628)
  var `?param` = [getPtr clean, getPtr simplify]
  var ret: encoded gdref ConvexPolygonShape3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref ConvexPolygonShape3D)

proc createOutline*(self: Mesh; margin: Float): gdref Mesh =
  expandMethodBind(className Mesh, "create_outline", 1208642001)
  var `?param` = [getPtr margin]
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc generateTriangleMesh*(self: Mesh): gdref TriangleMesh =
  expandMethodBind(className Mesh, "generate_triangle_mesh", 3476533166)
  var ret: encoded gdref TriangleMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref TriangleMesh)

template lightmapSizeHint*(self: Mesh): untyped = self.getLightmapSizeHint()
template `lightmapSizeHint=`*(self: Mesh; value) = self.setLightmapSizeHint(value)

const Mesh_vmap =
  Resource.vmap.concat toTable {
    "getsurfacecount" : "_get_surface_count",
    "surfacegetarraylen" : "_surface_get_array_len",
    "surfacegetarrayindexlen" : "_surface_get_array_index_len",
    "surfacegetarrays" : "_surface_get_arrays",
    "surfacegetblendshapearrays" : "_surface_get_blend_shape_arrays",
    "surfacegetlods" : "_surface_get_lods",
    "surfacegetformat" : "_surface_get_format",
    "surfacegetprimitivetype" : "_surface_get_primitive_type",
    "surfacesetmaterial" : "_surface_set_material",
    "surfacegetmaterial" : "_surface_get_material",
    "getblendshapecount" : "_get_blend_shape_count",
    "getblendshapename" : "_get_blend_shape_name",
    "setblendshapename" : "_set_blend_shape_name",
    "getaabb" : "_get_aabb",
    }
template vmap*(_: typedesc[Mesh]): Table[string, string] = Mesh_vmap