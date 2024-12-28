{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setSkinWeightCount*(self: SurfaceTool; count: SurfaceTool_SkinWeightCount): void =
  expandMethodBind(className SurfaceTool, "set_skin_weight_count", 618679515)
  methodbind.ptrcall(self, [getPtr count])

proc getSkinWeightCount*(self: SurfaceTool): SurfaceTool_SkinWeightCount =
  expandMethodBind(className SurfaceTool, "get_skin_weight_count", 1072401130)
  var ret: encoded SurfaceTool_SkinWeightCount
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SurfaceTool_SkinWeightCount)

proc setCustomFormat*(self: SurfaceTool; channelIndex: int32; format: SurfaceTool_CustomFormat): void =
  expandMethodBind(className SurfaceTool, "set_custom_format", 4087759856)
  methodbind.ptrcall(self, [getPtr channelIndex, getPtr format])

proc getCustomFormat*(self: SurfaceTool; channelIndex: int32): SurfaceTool_CustomFormat =
  expandMethodBind(className SurfaceTool, "get_custom_format", 839863283)
  var ret: encoded SurfaceTool_CustomFormat
  methodbind.ptrcall(self, [getPtr channelIndex], addr ret)
  (addr ret).decode_result(SurfaceTool_CustomFormat)

proc begin*(self: SurfaceTool; primitive: Mesh_PrimitiveType): void =
  expandMethodBind(className SurfaceTool, "begin", 2230304113)
  methodbind.ptrcall(self, [getPtr primitive])

proc addVertex*(self: SurfaceTool; vertex: Vector3): void =
  expandMethodBind(className SurfaceTool, "add_vertex", 3460891852)
  methodbind.ptrcall(self, [getPtr vertex])

proc setColor*(self: SurfaceTool; color: Color): void =
  expandMethodBind(className SurfaceTool, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc setNormal*(self: SurfaceTool; normal: Vector3): void =
  expandMethodBind(className SurfaceTool, "set_normal", 3460891852)
  methodbind.ptrcall(self, [getPtr normal])

proc setTangent*(self: SurfaceTool; tangent: Plane): void =
  expandMethodBind(className SurfaceTool, "set_tangent", 3505987427)
  methodbind.ptrcall(self, [getPtr tangent])

proc setUv*(self: SurfaceTool; uv: Vector2): void =
  expandMethodBind(className SurfaceTool, "set_uv", 743155724)
  methodbind.ptrcall(self, [getPtr uv])

proc setUv2*(self: SurfaceTool; uv2: Vector2): void =
  expandMethodBind(className SurfaceTool, "set_uv2", 743155724)
  methodbind.ptrcall(self, [getPtr uv2])

proc setBones*(self: SurfaceTool; bones: PackedInt32Array): void =
  expandMethodBind(className SurfaceTool, "set_bones", 3614634198)
  methodbind.ptrcall(self, [getPtr bones])

proc setWeights*(self: SurfaceTool; weights: PackedFloat32Array): void =
  expandMethodBind(className SurfaceTool, "set_weights", 2899603908)
  methodbind.ptrcall(self, [getPtr weights])

proc setCustom*(self: SurfaceTool; channelIndex: int32; customColor: Color): void =
  expandMethodBind(className SurfaceTool, "set_custom", 2878471219)
  methodbind.ptrcall(self, [getPtr channelIndex, getPtr customColor])

proc setSmoothGroup*(self: SurfaceTool; index: uint32): void =
  expandMethodBind(className SurfaceTool, "set_smooth_group", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc addTriangleFan*(self: SurfaceTool; vertices: PackedVector3Array; uvs: PackedVector2Array = PackedVector2Array(); colors: PackedColorArray = PackedColorArray(); uv2s: PackedVector2Array = PackedVector2Array(); normals: PackedVector3Array = PackedVector3Array(); tangents: TypedArray[Plane] = TypedArray[Plane](gdarray())): void =
  expandMethodBind(className SurfaceTool, "add_triangle_fan", 2235017613)
  methodbind.ptrcall(self, [getPtr vertices, getPtr uvs, getPtr colors, getPtr uv2s, getPtr normals, getPtr tangents])

proc addIndex*(self: SurfaceTool; index: int32): void =
  expandMethodBind(className SurfaceTool, "add_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc index*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "index", 3218959716)
  methodbind.ptrcall(self, [])

proc deindex*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "deindex", 3218959716)
  methodbind.ptrcall(self, [])

proc generateNormals*(self: SurfaceTool; flip: bool = false): void =
  expandMethodBind(className SurfaceTool, "generate_normals", 107499316)
  methodbind.ptrcall(self, [getPtr flip])

proc generateTangents*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "generate_tangents", 3218959716)
  methodbind.ptrcall(self, [])

proc optimizeIndicesForCache*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "optimize_indices_for_cache", 3218959716)
  methodbind.ptrcall(self, [])

proc getAabb*(self: SurfaceTool): AABB =
  expandMethodBind(className SurfaceTool, "get_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

proc generateLod*(self: SurfaceTool; ndThreshold: Float; targetIndexCount: int32 = 3): PackedInt32Array =
  expandMethodBind(className SurfaceTool, "generate_lod", 1938056459)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr ndThreshold, getPtr targetIndexCount], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setMaterial*(self: SurfaceTool; material: gdref Material): void =
  expandMethodBind(className SurfaceTool, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getPrimitiveType*(self: SurfaceTool): Mesh_PrimitiveType =
  expandMethodBind(className SurfaceTool, "get_primitive_type", 768822145)
  var ret: encoded Mesh_PrimitiveType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Mesh_PrimitiveType)

proc clear*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc createFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32): void =
  expandMethodBind(className SurfaceTool, "create_from", 1767024570)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface])

proc createFromArrays*(self: SurfaceTool; arrays: Array; primitiveType: Mesh_PrimitiveType = primitiveTriangles): void =
  expandMethodBind(className SurfaceTool, "create_from_arrays", 1894639680)
  methodbind.ptrcall(self, [getPtr arrays, getPtr primitiveType])

proc createFromBlendShape*(self: SurfaceTool; existing: gdref Mesh; surface: int32; blendShape: String): void =
  expandMethodBind(className SurfaceTool, "create_from_blend_shape", 1306185582)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface, getPtr blendShape])

proc appendFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32; transform: Transform3D): void =
  expandMethodBind(className SurfaceTool, "append_from", 2217967155)
  methodbind.ptrcall(self, [getPtr existing, getPtr surface, getPtr transform])

proc commit*(self: SurfaceTool; existing: gdref ArrayMesh = default gdref ArrayMesh; flags: uint64 = 0): gdref ArrayMesh =
  expandMethodBind(className SurfaceTool, "commit", 4107864055)
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, [getPtr existing, getPtr flags], addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

proc commitToArrays*(self: SurfaceTool): Array =
  expandMethodBind(className SurfaceTool, "commit_to_arrays", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

const SurfaceTool_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SurfaceTool]): Table[string, string] = SurfaceTool_vmap