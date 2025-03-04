{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addBlendShape*(self: ImporterMesh; name: String): void =
  expandMethodBind(className ImporterMesh, "add_blend_shape", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getBlendShapeCount*(self: ImporterMesh): int32 =
  expandMethodBind(className ImporterMesh, "get_blend_shape_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getBlendShapeName*(self: ImporterMesh; blendShapeIdx: int32): String =
  expandMethodBind(className ImporterMesh, "get_blend_shape_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr blendShapeIdx], addr ret)
  (addr ret).decode_result(String)

proc setBlendShapeMode*(self: ImporterMesh; mode: Mesh_BlendShapeMode): void =
  expandMethodBind(className ImporterMesh, "set_blend_shape_mode", 227983991)
  methodbind.ptrcall(self, [getPtr mode])

proc getBlendShapeMode*(self: ImporterMesh): Mesh_BlendShapeMode =
  expandMethodBind(className ImporterMesh, "get_blend_shape_mode", 836485024)
  var ret: encoded Mesh_BlendShapeMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Mesh_BlendShapeMode)

proc addSurface*(self: ImporterMesh; primitive: Mesh_PrimitiveType; arrays: Array; blendShapes: TypedArray[Array] = TypedArray[Array](gdarray()); lods: Dictionary = dictionary(); material: gdref Material = default gdref Material; name: String = gdstring""; flags: uint64 = 0): void =
  expandMethodBind(className ImporterMesh, "add_surface", 1740448849)
  methodbind.ptrcall(self, [getPtr primitive, getPtr arrays, getPtr blendShapes, getPtr lods, getPtr material, getPtr name, getPtr flags])

proc getSurfaceCount*(self: ImporterMesh): int32 =
  expandMethodBind(className ImporterMesh, "get_surface_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSurfacePrimitiveType*(self: ImporterMesh; surfaceIdx: int32): Mesh_PrimitiveType =
  expandMethodBind(className ImporterMesh, "get_surface_primitive_type", 3552571330)
  var ret: encoded Mesh_PrimitiveType
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(Mesh_PrimitiveType)

proc getSurfaceName*(self: ImporterMesh; surfaceIdx: int32): String =
  expandMethodBind(className ImporterMesh, "get_surface_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(String)

proc getSurfaceArrays*(self: ImporterMesh; surfaceIdx: int32): Array =
  expandMethodBind(className ImporterMesh, "get_surface_arrays", 663333327)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(Array)

proc getSurfaceBlendShapeArrays*(self: ImporterMesh; surfaceIdx: int32; blendShapeIdx: int32): Array =
  expandMethodBind(className ImporterMesh, "get_surface_blend_shape_arrays", 2345056839)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr blendShapeIdx], addr ret)
  (addr ret).decode_result(Array)

proc getSurfaceLodCount*(self: ImporterMesh; surfaceIdx: int32): int32 =
  expandMethodBind(className ImporterMesh, "get_surface_lod_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(int32)

proc getSurfaceLodSize*(self: ImporterMesh; surfaceIdx: int32; lodIdx: int32): Float =
  expandMethodBind(className ImporterMesh, "get_surface_lod_size", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr lodIdx], addr ret)
  (addr ret).decode_result(Float)

proc getSurfaceLodIndices*(self: ImporterMesh; surfaceIdx: int32; lodIdx: int32): PackedInt32Array =
  expandMethodBind(className ImporterMesh, "get_surface_lod_indices", 1265128013)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr lodIdx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getSurfaceMaterial*(self: ImporterMesh; surfaceIdx: int32): gdref Material =
  expandMethodBind(className ImporterMesh, "get_surface_material", 2897466400)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(gdref Material)

proc getSurfaceFormat*(self: ImporterMesh; surfaceIdx: int32): uint64 =
  expandMethodBind(className ImporterMesh, "get_surface_format", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr surfaceIdx], addr ret)
  (addr ret).decode_result(uint64)

proc setSurfaceName*(self: ImporterMesh; surfaceIdx: int32; name: String): void =
  expandMethodBind(className ImporterMesh, "set_surface_name", 501894301)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr name])

proc setSurfaceMaterial*(self: ImporterMesh; surfaceIdx: int32; material: gdref Material): void =
  expandMethodBind(className ImporterMesh, "set_surface_material", 3671737478)
  methodbind.ptrcall(self, [getPtr surfaceIdx, getPtr material])

proc generateLods*(self: ImporterMesh; normalMergeAngle: Float; normalSplitAngle: Float; boneTransformArray: Array): void =
  expandMethodBind(className ImporterMesh, "generate_lods", 2491878677)
  methodbind.ptrcall(self, [getPtr normalMergeAngle, getPtr normalSplitAngle, getPtr boneTransformArray])

proc getMesh*(self: ImporterMesh; baseMesh: gdref ArrayMesh = default gdref ArrayMesh): gdref ArrayMesh =
  expandMethodBind(className ImporterMesh, "get_mesh", 1457573577)
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, [getPtr baseMesh], addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

proc clear*(self: ImporterMesh): void =
  expandMethodBind(className ImporterMesh, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc setLightmapSizeHint*(self: ImporterMesh; size: Vector2i): void =
  expandMethodBind(className ImporterMesh, "set_lightmap_size_hint", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getLightmapSizeHint*(self: ImporterMesh): Vector2i =
  expandMethodBind(className ImporterMesh, "get_lightmap_size_hint", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

const ImporterMesh_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ImporterMesh]): Table[string, string] = ImporterMesh_vmap