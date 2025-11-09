{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(SurfaceTool, RefCounted)

proc setSkinWeightCount*(self: SurfaceTool; count: SurfaceTool_SkinWeightCount): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_skin_weight_count", 618679515)
  methodbind.ptrcall(self, [getPtr count], void)

proc getSkinWeightCount*(self: SurfaceTool): SurfaceTool_SkinWeightCount =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "get_skin_weight_count", 1072401130)
  methodbind.ptrcall(self, [], SurfaceTool_SkinWeightCount)

proc setCustomFormat*(self: SurfaceTool; channelIndex: int32; format: SurfaceTool_CustomFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_custom_format", 4087759856)
  methodbind.ptrcall(self, [getPtr channelIndex, getPtr format], void)

proc getCustomFormat*(self: SurfaceTool; channelIndex: int32): SurfaceTool_CustomFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "get_custom_format", 839863283)
  methodbind.ptrcall(self, [getPtr channelIndex], SurfaceTool_CustomFormat)

proc begin*(self: SurfaceTool; primitive: Mesh_PrimitiveType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "begin", 2230304113)
  methodbind.ptrcall(self, [getPtr primitive], void)

proc addVertex*(self: SurfaceTool; vertex: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "add_vertex", 3460891852)
  methodbind.ptrcall(self, [getPtr vertex], void)

proc setColor*(self: SurfaceTool; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc setNormal*(self: SurfaceTool; normal: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_normal", 3460891852)
  methodbind.ptrcall(self, [getPtr normal], void)

proc setTangent*(self: SurfaceTool; tangent: Plane): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_tangent", 3505987427)
  methodbind.ptrcall(self, [getPtr tangent], void)

proc setUv*(self: SurfaceTool; uv: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_uv", 743155724)
  methodbind.ptrcall(self, [getPtr uv], void)

proc setUv2*(self: SurfaceTool; uv2: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_uv2", 743155724)
  methodbind.ptrcall(self, [getPtr uv2], void)

proc setBones*(self: SurfaceTool; bones: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_bones", 3614634198)
  methodbind.ptrcall(self, [getPtr bones], void)

proc setWeights*(self: SurfaceTool; weights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_weights", 2899603908)
  methodbind.ptrcall(self, [getPtr weights], void)

proc setCustom*(self: SurfaceTool; channelIndex: int32; customColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_custom", 2878471219)
  methodbind.ptrcall(self, [getPtr channelIndex, getPtr customColor], void)

proc setSmoothGroup*(self: SurfaceTool; index: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_smooth_group", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc addTriangleFan*(self: SurfaceTool; vertices: PackedVector3Array; uvs: PackedVector2Array = PackedVector2Array(); colors: PackedColorArray = PackedColorArray(); uv2s: PackedVector2Array = PackedVector2Array(); normals: PackedVector3Array = PackedVector3Array(); tangents: TypedArray[Plane] = newTypedArray[Plane]()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "add_triangle_fan", 2235017613)
  methodbind.ptrcall(self, [getPtr vertices, getPtr uvs, getPtr colors, getPtr uv2s, getPtr normals, getPtr tangents], void)

proc addIndex*(self: SurfaceTool; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "add_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc index*(self: SurfaceTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "index", 3218959716)
  methodbind.ptrcall(self, [], void)

proc deindex*(self: SurfaceTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "deindex", 3218959716)
  methodbind.ptrcall(self, [], void)

proc generateNormals*(self: SurfaceTool; flip: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "generate_normals", 107499316)
  methodbind.ptrcall(self, [getPtr flip], void)

proc generateTangents*(self: SurfaceTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "generate_tangents", 3218959716)
  methodbind.ptrcall(self, [], void)

proc optimizeIndicesForCache*(self: SurfaceTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "optimize_indices_for_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getAabb*(self: SurfaceTool): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "get_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

proc generateLod*(self: SurfaceTool; ndThreshold: Float; targetIndexCount: int32 = 3): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "generate_lod", 1938056459)
  methodbind.ptrcall(self, [getPtr ndThreshold, getPtr targetIndexCount], PackedInt32Array)

proc setMaterial*(self: SurfaceTool; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getPrimitiveType*(self: SurfaceTool): Mesh_PrimitiveType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "get_primitive_type", 768822145)
  methodbind.ptrcall(self, [], Mesh_PrimitiveType)

proc clear*(self: SurfaceTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "create_from", 1767024570)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface], void)

proc createFromArrays*(self: SurfaceTool; arrays: Array; primitiveType: Mesh_PrimitiveType = primitiveTriangles): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "create_from_arrays", 1894639680)
  methodbind.ptrcall(self, [getPtr arrays, getPtr primitiveType], void)

proc createFromBlendShape*(self: SurfaceTool; existing: gdref Mesh; surface: int32; blendShape: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "create_from_blend_shape", 1306185582)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface, getPtr blendShape], void)

proc appendFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "append_from", 2217967155)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface, getPtr transform], void)

proc commit*(self: SurfaceTool; existing: gdref ArrayMesh = default gdref ArrayMesh; flags: uint64 = 0): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "commit", 4107864055)
  methodbind.ptrcall(self, [getPtr existing, getPtr flags], gdref ArrayMesh)

proc commitToArrays*(self: SurfaceTool): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SurfaceTool, "commit_to_arrays", 2915620761)
  methodbind.ptrcall(self, [], Array)
