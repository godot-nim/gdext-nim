{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmesh; export gdmesh

expandOnClassImported(ArrayMesh, Mesh)

proc addBlendShape*(self: ArrayMesh; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "add_blend_shape", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getBlendShapeCount*(self: ArrayMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "get_blend_shape_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBlendShapeName*(self: ArrayMesh; index: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "get_blend_shape_name", 659327637)
  methodbind.ptrcall(self, [getPtr index], StringName)

proc setBlendShapeName*(self: ArrayMesh; index: int32; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "set_blend_shape_name", 3780747571)
  methodbind.ptrcall(self, [getPtr index, getPtr name], void)

proc clearBlendShapes*(self: ArrayMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "clear_blend_shapes", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setBlendShapeMode*(self: ArrayMesh; mode: Mesh_BlendShapeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "set_blend_shape_mode", 227983991)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getBlendShapeMode*(self: ArrayMesh): Mesh_BlendShapeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "get_blend_shape_mode", 836485024)
  methodbind.ptrcall(self, [], Mesh_BlendShapeMode)

proc addSurfaceFromArrays*(self: ArrayMesh; primitive: Mesh_PrimitiveType; arrays: Array; blendShapes: TypedArray[Array] = newTypedArray[Array](); lods: Dictionary = newDictionary(); flags: set[Mesh_ArrayFormat] = {}): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "add_surface_from_arrays", 1796411378)
  methodbind.ptrcall(self, [getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr flags], void)

proc clearSurfaces*(self: ArrayMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "clear_surfaces", 3218959716)
  methodbind.ptrcall(self, [], void)

proc surfaceRemove*(self: ArrayMesh; surfIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_remove", 1286410249)
  methodbind.ptrcall(self, [getPtr surfIdx], void)

proc surfaceUpdateVertexRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_update_vertex_region", 3837166854)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr offset, getPtr data], void)

proc surfaceUpdateAttributeRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_update_attribute_region", 3837166854)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr offset, getPtr data], void)

proc surfaceUpdateSkinRegion*(self: ArrayMesh; surfIdx: int32; offset: int32; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_update_skin_region", 3837166854)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr offset, getPtr data], void)

proc surfaceGetArrayLen*(self: ArrayMesh; surfIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_get_array_len", 923996154)
  methodbind.ptrcall(self, [getPtr surfIdx], int32)

proc surfaceGetArrayIndexLen*(self: ArrayMesh; surfIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_get_array_index_len", 923996154)
  methodbind.ptrcall(self, [getPtr surfIdx], int32)

proc surfaceGetFormat*(self: ArrayMesh; surfIdx: int32): set[Mesh_ArrayFormat] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_get_format", 3718287884)
  methodbind.ptrcall(self, [getPtr surfIdx], set[Mesh_ArrayFormat])

proc surfaceGetPrimitiveType*(self: ArrayMesh; surfIdx: int32): Mesh_PrimitiveType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_get_primitive_type", 4141943888)
  methodbind.ptrcall(self, [getPtr surfIdx], Mesh_PrimitiveType)

proc surfaceFindByName*(self: ArrayMesh; name: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_find_by_name", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int32)

proc surfaceSetName*(self: ArrayMesh; surfIdx: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_set_name", 501894301)
  methodbind.ptrcall(self, [getPtr surfIdx, getPtr name], void)

proc surfaceGetName*(self: ArrayMesh; surfIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "surface_get_name", 844755477)
  methodbind.ptrcall(self, [getPtr surfIdx], String)

proc regenNormalMaps*(self: ArrayMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "regen_normal_maps", 3218959716)
  methodbind.ptrcall(self, [], void)

proc lightmapUnwrap*(self: ArrayMesh; transform: Transform3D; texelSize: Float): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "lightmap_unwrap", 1476641071)
  methodbind.ptrcall(self, [getPtr transform, getPtr texelSize], Error)

proc setCustomAabb*(self: ArrayMesh; aabb: AABB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "set_custom_aabb", 259215842)
  methodbind.ptrcall(self, [getPtr aabb], void)

proc getCustomAabb*(self: ArrayMesh): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "get_custom_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc setShadowMesh*(self: ArrayMesh; mesh: gdref ArrayMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "set_shadow_mesh", 3377897901)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getShadowMesh*(self: ArrayMesh): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ArrayMesh, "get_shadow_mesh", 3206942465)
  methodbind.ptrcall(self, [], gdref ArrayMesh)

template blendShapeMode*(self: ArrayMesh): untyped = self.getBlendShapeMode()
template `blendShapeMode=`*(self: ArrayMesh; value) = self.setBlendShapeMode(value)

template customAabb*(self: ArrayMesh): untyped = self.getCustomAabb()
template `customAabb=`*(self: ArrayMesh; value) = self.setCustomAabb(value)

template shadowMesh*(self: ArrayMesh): untyped = self.getShadowMesh()
template `shadowMesh=`*(self: ArrayMesh; value) = self.setShadowMesh(value)
