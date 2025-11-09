{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(ImporterMesh, Resource)

proc addBlendShape*(self: ImporterMesh; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "add_blend_shape", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getBlendShapeCount*(self: ImporterMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_blend_shape_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBlendShapeName*(self: ImporterMesh; blendShapeIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_blend_shape_name", 844755477)
  methodbind.ptrcall(self, [getPtr blendShapeIdx], String)

proc setBlendShapeMode*(self: ImporterMesh; mode: Mesh_BlendShapeMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "set_blend_shape_mode", 227983991)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getBlendShapeMode*(self: ImporterMesh): Mesh_BlendShapeMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_blend_shape_mode", 836485024)
  methodbind.ptrcall(self, [], Mesh_BlendShapeMode)

proc addSurface*(self: ImporterMesh; primitive: Mesh_PrimitiveType; arrays: Array; blendShapes: TypedArray[Array] = newTypedArray[Array](); lods: Dictionary = newDictionary(); material: gdref Material = default gdref Material; name: String = newGdString(); flags: uint64 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "add_surface", 1740448849)
  methodbind.ptrcall(self, [getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr material, getPtr name, getPtr flags], void)

proc getSurfaceCount*(self: ImporterMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSurfacePrimitiveType*(self: ImporterMesh; surfaceIdx: int32): Mesh_PrimitiveType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_primitive_type", 3552571330)
  methodbind.ptrcall(self, [getPtr surfaceIdx], Mesh_PrimitiveType)

proc getSurfaceName*(self: ImporterMesh; surfaceIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_name", 844755477)
  methodbind.ptrcall(self, [getPtr surfaceIdx], String)

proc getSurfaceArrays*(self: ImporterMesh; surfaceIdx: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_arrays", 663333327)
  methodbind.ptrcall(self, [getPtr surfaceIdx], Array)

proc getSurfaceBlendShapeArrays*(self: ImporterMesh; surfaceIdx: int32; blendShapeIdx: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_blend_shape_arrays", 2345056839)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr blendShapeIdx], Array)

proc getSurfaceLodCount*(self: ImporterMesh; surfaceIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_lod_count", 923996154)
  methodbind.ptrcall(self, [getPtr surfaceIdx], int32)

proc getSurfaceLodSize*(self: ImporterMesh; surfaceIdx: int32; lodIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_lod_size", 3085491603)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr lodIdx], Float)

proc getSurfaceLodIndices*(self: ImporterMesh; surfaceIdx: int32; lodIdx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_lod_indices", 1265128013)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr lodIdx], PackedInt32Array)

proc getSurfaceMaterial*(self: ImporterMesh; surfaceIdx: int32): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_material", 2897466400)
  methodbind.ptrcall(self, [getPtr surfaceIdx], gdref Material)

proc getSurfaceFormat*(self: ImporterMesh; surfaceIdx: int32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_surface_format", 923996154)
  methodbind.ptrcall(self, [getPtr surfaceIdx], uint64)

proc setSurfaceName*(self: ImporterMesh; surfaceIdx: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "set_surface_name", 501894301)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr name], void)

proc setSurfaceMaterial*(self: ImporterMesh; surfaceIdx: int32; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "set_surface_material", 3671737478)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr material], void)

proc generateLods*(self: ImporterMesh; normalMergeAngle: Float; normalSplitAngle: Float; boneTransformArray: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "generate_lods", 2491878677)
  methodbind.ptrcall(self, [getPtr normalMergeAngle, getPtr normalSplitAngle, getPtr boneTransformArray], void)

proc getMesh*(self: ImporterMesh; baseMesh: gdref ArrayMesh = default gdref ArrayMesh): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_mesh", 1457573577)
  methodbind.ptrcall(self, [getPtr baseMesh], gdref ArrayMesh)

proc clear*(self: ImporterMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setLightmapSizeHint*(self: ImporterMesh; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "set_lightmap_size_hint", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getLightmapSizeHint*(self: ImporterMesh): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ImporterMesh, "get_lightmap_size_hint", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)
