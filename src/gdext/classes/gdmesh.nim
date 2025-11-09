{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Mesh, Resource)

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
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "set_lightmap_size_hint", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getLightmapSizeHint*(self: Mesh): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "get_lightmap_size_hint", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getAabb*(self: Mesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "get_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc getFaces*(self: Mesh): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "get_faces", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getSurfaceCount*(self: Mesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "get_surface_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc surfaceGetArrays*(self: Mesh; surfIdx: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "surface_get_arrays", 663333327)
  methodbind.ptrcall(self, [getPtr surfIdx], Array)

proc surfaceGetBlendShapeArrays*(self: Mesh; surfIdx: int32): TypedArray[Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "surface_get_blend_shape_arrays", 663333327)
  methodbind.ptrcall(self, [getPtr surfIdx], TypedArray[Array])

proc surfaceSetMaterial*(self: Mesh; surfIdx: int32; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "surface_set_material", 3671737478)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr material], void)

proc surfaceGetMaterial*(self: Mesh; surfIdx: int32): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "surface_get_material", 2897466400)
  methodbind.ptrcall(self, [getPtr surfIdx], gdref Material)

proc createPlaceholder*(self: Mesh): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)

proc createTrimeshShape*(self: Mesh): gdref ConcavePolygonShape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "create_trimesh_shape", 4160111210)
  methodbind.ptrcall(self, [], gdref ConcavePolygonShape3D)

proc createConvexShape*(self: Mesh; clean: bool = true; simplify: bool = false): gdref ConvexPolygonShape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "create_convex_shape", 2529984628)
  methodbind.ptrcall(self, [getPtr clean, getPtr simplify], gdref ConvexPolygonShape3D)

proc createOutline*(self: Mesh; margin: Float): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "create_outline", 1208642001)
  methodbind.ptrcall(self, [getPtr margin], gdref Mesh)

proc generateTriangleMesh*(self: Mesh): gdref TriangleMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Mesh, "generate_triangle_mesh", 3476533166)
  methodbind.ptrcall(self, [], gdref TriangleMesh)

template lightmapSizeHint*(self: Mesh): untyped = self.getLightmapSizeHint()
template `lightmapSizeHint=`*(self: Mesh; value) = self.setLightmapSizeHint(value)
