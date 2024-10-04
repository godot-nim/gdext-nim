{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setSkinWeightCount*(self: SurfaceTool; count: SurfaceTool_SkinWeightCount): void =
  expandMethodBind(className SurfaceTool, "set_skin_weight_count", 618679515)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkinWeightCount*(self: SurfaceTool): SurfaceTool_SkinWeightCount =
  expandMethodBind(className SurfaceTool, "get_skin_weight_count", 1072401130)
  var ret: encoded SurfaceTool_SkinWeightCount
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SurfaceTool_SkinWeightCount)

proc setCustomFormat*(self: SurfaceTool; channelIndex: int32; format: SurfaceTool_CustomFormat): void =
  expandMethodBind(className SurfaceTool, "set_custom_format", 4087759856)
  var `?param` = [getPtr channelIndex, getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomFormat*(self: SurfaceTool; channelIndex: int32): SurfaceTool_CustomFormat =
  expandMethodBind(className SurfaceTool, "get_custom_format", 839863283)
  var `?param` = [getPtr channelIndex]
  var ret: encoded SurfaceTool_CustomFormat
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(SurfaceTool_CustomFormat)

proc begin*(self: SurfaceTool; primitive: Mesh_PrimitiveType): void =
  expandMethodBind(className SurfaceTool, "begin", 2230304113)
  var `?param` = [getPtr primitive]
  methodbind.ptrcall(self, addr `?param`[0])

proc addVertex*(self: SurfaceTool; vertex: Vector3): void =
  expandMethodBind(className SurfaceTool, "add_vertex", 3460891852)
  var `?param` = [getPtr vertex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setColor*(self: SurfaceTool; color: Color): void =
  expandMethodBind(className SurfaceTool, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc setNormal*(self: SurfaceTool; normal: Vector3): void =
  expandMethodBind(className SurfaceTool, "set_normal", 3460891852)
  var `?param` = [getPtr normal]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTangent*(self: SurfaceTool; tangent: Plane): void =
  expandMethodBind(className SurfaceTool, "set_tangent", 3505987427)
  var `?param` = [getPtr tangent]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUv*(self: SurfaceTool; uv: Vector2): void =
  expandMethodBind(className SurfaceTool, "set_uv", 743155724)
  var `?param` = [getPtr uv]
  methodbind.ptrcall(self, addr `?param`[0])

proc setUv2*(self: SurfaceTool; uv2: Vector2): void =
  expandMethodBind(className SurfaceTool, "set_uv2", 743155724)
  var `?param` = [getPtr uv2]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBones*(self: SurfaceTool; bones: PackedInt32Array): void =
  expandMethodBind(className SurfaceTool, "set_bones", 3614634198)
  var `?param` = [getPtr bones]
  methodbind.ptrcall(self, addr `?param`[0])

proc setWeights*(self: SurfaceTool; weights: PackedFloat32Array): void =
  expandMethodBind(className SurfaceTool, "set_weights", 2899603908)
  var `?param` = [getPtr weights]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCustom*(self: SurfaceTool; channelIndex: int32; customColor: Color): void =
  expandMethodBind(className SurfaceTool, "set_custom", 2878471219)
  var `?param` = [getPtr channelIndex, getPtr customColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSmoothGroup*(self: SurfaceTool; index: uint32): void =
  expandMethodBind(className SurfaceTool, "set_smooth_group", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc addTriangleFan*(self: SurfaceTool; vertices: PackedVector3Array; uvs: PackedVector2Array = PackedVector2Array(); colors: PackedColorArray = PackedColorArray(); uv2s: PackedVector2Array = PackedVector2Array(); normals: PackedVector3Array = PackedVector3Array(); tangents: TypedArray[Plane] = typedArray[Array[Plane]([])]()): void =
  expandMethodBind(className SurfaceTool, "add_triangle_fan", 2235017613)
  var `?param` = [getPtr vertices, getPtr uvs, getPtr colors, getPtr uv2s, getPtr normals, getPtr tangents]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIndex*(self: SurfaceTool; index: int32): void =
  expandMethodBind(className SurfaceTool, "add_index", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc index*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "index", 3218959716)
  methodbind.ptrcall(self, nil)

proc deindex*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "deindex", 3218959716)
  methodbind.ptrcall(self, nil)

proc generateNormals*(self: SurfaceTool; flip: bool = false): void =
  expandMethodBind(className SurfaceTool, "generate_normals", 107499316)
  var `?param` = [getPtr flip]
  methodbind.ptrcall(self, addr `?param`[0])

proc generateTangents*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "generate_tangents", 3218959716)
  methodbind.ptrcall(self, nil)

proc optimizeIndicesForCache*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "optimize_indices_for_cache", 3218959716)
  methodbind.ptrcall(self, nil)

proc getAabb*(self: SurfaceTool): Aabb =
  expandMethodBind(className SurfaceTool, "get_aabb", 1068685055)
  var ret: encoded Aabb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Aabb)

proc generateLod*(self: SurfaceTool; ndThreshold: Float; targetIndexCount: int32 = 3): PackedInt32Array =
  expandMethodBind(className SurfaceTool, "generate_lod", 1938056459)
  var `?param` = [getPtr ndThreshold, getPtr targetIndexCount]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setMaterial*(self: SurfaceTool; material: gdref Material): void =
  expandMethodBind(className SurfaceTool, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPrimitiveType*(self: SurfaceTool): Mesh_PrimitiveType =
  expandMethodBind(className SurfaceTool, "get_primitive_type", 768822145)
  var ret: encoded Mesh_PrimitiveType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Mesh_PrimitiveType)

proc clear*(self: SurfaceTool): void =
  expandMethodBind(className SurfaceTool, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc createFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32): void =
  expandMethodBind(className SurfaceTool, "create_from", 1767024570)
  var `?param` = [getPtr existing, getPtr surface]
  methodbind.ptrcall(self, addr `?param`[0])

proc createFromArrays*(self: SurfaceTool; arrays: Array; primitiveType: Mesh_PrimitiveType = primitiveTriangles): void =
  expandMethodBind(className SurfaceTool, "create_from_arrays", 1894639680)
  var `?param` = [getPtr arrays, getPtr primitiveType]
  methodbind.ptrcall(self, addr `?param`[0])

proc createFromBlendShape*(self: SurfaceTool; existing: gdref Mesh; surface: int32; blendShape: String): void =
  expandMethodBind(className SurfaceTool, "create_from_blend_shape", 1306185582)
  var `?param` = [getPtr existing, getPtr surface, getPtr blendShape]
  methodbind.ptrcall(self, addr `?param`[0])

proc appendFrom*(self: SurfaceTool; existing: gdref Mesh; surface: int32; transform: Transform3D): void =
  expandMethodBind(className SurfaceTool, "append_from", 2217967155)
  var `?param` = [getPtr existing, getPtr surface, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc commit*(self: SurfaceTool; existing: gdref ArrayMesh = default gdref ArrayMesh; flags: uint64 = 0): gdref ArrayMesh =
  expandMethodBind(className SurfaceTool, "commit", 4107864055)
  var `?param` = [getPtr existing, getPtr flags]
  var ret: encoded gdref ArrayMesh
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref ArrayMesh)

proc commitToArrays*(self: SurfaceTool): Array =
  expandMethodBind(className SurfaceTool, "commit_to_arrays", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

const SurfaceTool_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SurfaceTool]): Table[string, string] = SurfaceTool_vmap