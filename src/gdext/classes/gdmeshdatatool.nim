{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc clear*(self: MeshDataTool): void =
  expandMethodBind(className MeshDataTool, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc createFromSurface*(self: MeshDataTool; mesh: gdref ArrayMesh; surface: int32): Error =
  expandMethodBind(className MeshDataTool, "create_from_surface", 2727020678)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], addr ret)
  (addr ret).decode_result(Error)

proc commitToSurface*(self: MeshDataTool; mesh: gdref ArrayMesh; compressionFlags: uint64 = 0): Error =
  expandMethodBind(className MeshDataTool, "commit_to_surface", 2021686445)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr mesh, getPtr compressionFlags], addr ret)
  (addr ret).decode_result(Error)

proc getFormat*(self: MeshDataTool): uint64 =
  expandMethodBind(className MeshDataTool, "get_format", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getVertexCount*(self: MeshDataTool): int32 =
  expandMethodBind(className MeshDataTool, "get_vertex_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getEdgeCount*(self: MeshDataTool): int32 =
  expandMethodBind(className MeshDataTool, "get_edge_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getFaceCount*(self: MeshDataTool): int32 =
  expandMethodBind(className MeshDataTool, "get_face_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVertex*(self: MeshDataTool; idx: int32; vertex: Vector3): void =
  expandMethodBind(className MeshDataTool, "set_vertex", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex])

proc getVertex*(self: MeshDataTool; idx: int32): Vector3 =
  expandMethodBind(className MeshDataTool, "get_vertex", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector3)

proc setVertexNormal*(self: MeshDataTool; idx: int32; normal: Vector3): void =
  expandMethodBind(className MeshDataTool, "set_vertex_normal", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr normal])

proc getVertexNormal*(self: MeshDataTool; idx: int32): Vector3 =
  expandMethodBind(className MeshDataTool, "get_vertex_normal", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector3)

proc setVertexTangent*(self: MeshDataTool; idx: int32; tangent: Plane): void =
  expandMethodBind(className MeshDataTool, "set_vertex_tangent", 1104099133)
  methodbind.ptrcall(self, [getPtr idx, getPtr tangent])

proc getVertexTangent*(self: MeshDataTool; idx: int32): Plane =
  expandMethodBind(className MeshDataTool, "get_vertex_tangent", 1372055458)
  var ret: encoded Plane
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Plane)

proc setVertexUv*(self: MeshDataTool; idx: int32; uv: Vector2): void =
  expandMethodBind(className MeshDataTool, "set_vertex_uv", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr uv])

proc getVertexUv*(self: MeshDataTool; idx: int32): Vector2 =
  expandMethodBind(className MeshDataTool, "get_vertex_uv", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector2)

proc setVertexUv2*(self: MeshDataTool; idx: int32; uv2: Vector2): void =
  expandMethodBind(className MeshDataTool, "set_vertex_uv2", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr uv2])

proc getVertexUv2*(self: MeshDataTool; idx: int32): Vector2 =
  expandMethodBind(className MeshDataTool, "get_vertex_uv2", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector2)

proc setVertexColor*(self: MeshDataTool; idx: int32; color: Color): void =
  expandMethodBind(className MeshDataTool, "set_vertex_color", 2878471219)
  methodbind.ptrcall(self, [getPtr idx, getPtr color])

proc getVertexColor*(self: MeshDataTool; idx: int32): Color =
  expandMethodBind(className MeshDataTool, "get_vertex_color", 3457211756)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Color)

proc setVertexBones*(self: MeshDataTool; idx: int32; bones: PackedInt32Array): void =
  expandMethodBind(className MeshDataTool, "set_vertex_bones", 3500328261)
  methodbind.ptrcall(self, [getPtr idx, getPtr bones])

proc getVertexBones*(self: MeshDataTool; idx: int32): PackedInt32Array =
  expandMethodBind(className MeshDataTool, "get_vertex_bones", 1706082319)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setVertexWeights*(self: MeshDataTool; idx: int32; weights: PackedFloat32Array): void =
  expandMethodBind(className MeshDataTool, "set_vertex_weights", 1345852415)
  methodbind.ptrcall(self, [getPtr idx, getPtr weights])

proc getVertexWeights*(self: MeshDataTool; idx: int32): PackedFloat32Array =
  expandMethodBind(className MeshDataTool, "get_vertex_weights", 1542882410)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc setVertexMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  expandMethodBind(className MeshDataTool, "set_vertex_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta])

proc getVertexMeta*(self: MeshDataTool; idx: int32): Variant =
  expandMethodBind(className MeshDataTool, "get_vertex_meta", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Variant)

proc getVertexEdges*(self: MeshDataTool; idx: int32): PackedInt32Array =
  expandMethodBind(className MeshDataTool, "get_vertex_edges", 1706082319)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getVertexFaces*(self: MeshDataTool; idx: int32): PackedInt32Array =
  expandMethodBind(className MeshDataTool, "get_vertex_faces", 1706082319)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getEdgeVertex*(self: MeshDataTool; idx: int32; vertex: int32): int32 =
  expandMethodBind(className MeshDataTool, "get_edge_vertex", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex], addr ret)
  (addr ret).decode_result(int32)

proc getEdgeFaces*(self: MeshDataTool; idx: int32): PackedInt32Array =
  expandMethodBind(className MeshDataTool, "get_edge_faces", 1706082319)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setEdgeMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  expandMethodBind(className MeshDataTool, "set_edge_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta])

proc getEdgeMeta*(self: MeshDataTool; idx: int32): Variant =
  expandMethodBind(className MeshDataTool, "get_edge_meta", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Variant)

proc getFaceVertex*(self: MeshDataTool; idx: int32; vertex: int32): int32 =
  expandMethodBind(className MeshDataTool, "get_face_vertex", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex], addr ret)
  (addr ret).decode_result(int32)

proc getFaceEdge*(self: MeshDataTool; idx: int32; edge: int32): int32 =
  expandMethodBind(className MeshDataTool, "get_face_edge", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx, getPtr edge], addr ret)
  (addr ret).decode_result(int32)

proc setFaceMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  expandMethodBind(className MeshDataTool, "set_face_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta])

proc getFaceMeta*(self: MeshDataTool; idx: int32): Variant =
  expandMethodBind(className MeshDataTool, "get_face_meta", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Variant)

proc getFaceNormal*(self: MeshDataTool; idx: int32): Vector3 =
  expandMethodBind(className MeshDataTool, "get_face_normal", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector3)

proc setMaterial*(self: MeshDataTool; material: gdref Material): void =
  expandMethodBind(className MeshDataTool, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterial*(self: MeshDataTool): gdref Material =
  expandMethodBind(className MeshDataTool, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

const MeshDataTool_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MeshDataTool]): Table[string, string] = MeshDataTool_vmap