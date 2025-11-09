{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(MeshDataTool, RefCounted)

proc clear*(self: MeshDataTool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createFromSurface*(self: MeshDataTool; mesh: gdref ArrayMesh; surface: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "create_from_surface", 2727020678)
  methodbind.ptrcall(self, [getPtr mesh, getPtr surface], Error)

proc commitToSurface*(self: MeshDataTool; mesh: gdref ArrayMesh; compressionFlags: uint64 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "commit_to_surface", 2021686445)
  methodbind.ptrcall(self, [getPtr mesh, getPtr compressionFlags], Error)

proc getFormat*(self: MeshDataTool): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_format", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getVertexCount*(self: MeshDataTool): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getEdgeCount*(self: MeshDataTool): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_edge_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFaceCount*(self: MeshDataTool): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_face_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVertex*(self: MeshDataTool; idx: int32; vertex: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex], void)

proc getVertex*(self: MeshDataTool; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc setVertexNormal*(self: MeshDataTool; idx: int32; normal: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_normal", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr normal], void)

proc getVertexNormal*(self: MeshDataTool; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_normal", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc setVertexTangent*(self: MeshDataTool; idx: int32; tangent: Plane): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_tangent", 1104099133)
  methodbind.ptrcall(self, [getPtr idx, getPtr tangent], void)

proc getVertexTangent*(self: MeshDataTool; idx: int32): Plane =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_tangent", 1372055458)
  methodbind.ptrcall(self, [getPtr idx], Plane)

proc setVertexUv*(self: MeshDataTool; idx: int32; uv: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_uv", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr uv], void)

proc getVertexUv*(self: MeshDataTool; idx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_uv", 2299179447)
  methodbind.ptrcall(self, [getPtr idx], Vector2)

proc setVertexUv2*(self: MeshDataTool; idx: int32; uv2: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_uv2", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr uv2], void)

proc getVertexUv2*(self: MeshDataTool; idx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_uv2", 2299179447)
  methodbind.ptrcall(self, [getPtr idx], Vector2)

proc setVertexColor*(self: MeshDataTool; idx: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_color", 2878471219)
  methodbind.ptrcall(self, [getPtr idx, getPtr color], void)

proc getVertexColor*(self: MeshDataTool; idx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_color", 3457211756)
  methodbind.ptrcall(self, [getPtr idx], Color)

proc setVertexBones*(self: MeshDataTool; idx: int32; bones: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_bones", 3500328261)
  methodbind.ptrcall(self, [getPtr idx, getPtr bones], void)

proc getVertexBones*(self: MeshDataTool; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_bones", 1706082319)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc setVertexWeights*(self: MeshDataTool; idx: int32; weights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_weights", 1345852415)
  methodbind.ptrcall(self, [getPtr idx, getPtr weights], void)

proc getVertexWeights*(self: MeshDataTool; idx: int32): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_weights", 1542882410)
  methodbind.ptrcall(self, [getPtr idx], PackedFloat32Array)

proc setVertexMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_vertex_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta], void)

proc getVertexMeta*(self: MeshDataTool; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_meta", 4227898402)
  methodbind.ptrcall(self, [getPtr idx], Variant)

proc getVertexEdges*(self: MeshDataTool; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_edges", 1706082319)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc getVertexFaces*(self: MeshDataTool; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_vertex_faces", 1706082319)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc getEdgeVertex*(self: MeshDataTool; idx: int32; vertex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_edge_vertex", 3175239445)
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex], int32)

proc getEdgeFaces*(self: MeshDataTool; idx: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_edge_faces", 1706082319)
  methodbind.ptrcall(self, [getPtr idx], PackedInt32Array)

proc setEdgeMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_edge_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta], void)

proc getEdgeMeta*(self: MeshDataTool; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_edge_meta", 4227898402)
  methodbind.ptrcall(self, [getPtr idx], Variant)

proc getFaceVertex*(self: MeshDataTool; idx: int32; vertex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_face_vertex", 3175239445)
  methodbind.ptrcall(self, [getPtr idx, getPtr vertex], int32)

proc getFaceEdge*(self: MeshDataTool; idx: int32; edge: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_face_edge", 3175239445)
  methodbind.ptrcall(self, [getPtr idx, getPtr edge], int32)

proc setFaceMeta*(self: MeshDataTool; idx: int32; meta: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_face_meta", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr meta], void)

proc getFaceMeta*(self: MeshDataTool; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_face_meta", 4227898402)
  methodbind.ptrcall(self, [getPtr idx], Variant)

proc getFaceNormal*(self: MeshDataTool; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_face_normal", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc setMaterial*(self: MeshDataTool; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: MeshDataTool): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MeshDataTool, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)
