{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(NavigationMeshSourceGeometryData3D, Resource)

proc setVertices*(self: NavigationMeshSourceGeometryData3D; vertices: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "set_vertices", 2899603908)
  methodbind.ptrcall(self, [getPtr vertices], void)

proc getVertices*(self: NavigationMeshSourceGeometryData3D): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "get_vertices", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setIndices*(self: NavigationMeshSourceGeometryData3D; indices: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "set_indices", 3614634198)
  methodbind.ptrcall(self, [getPtr indices], void)

proc getIndices*(self: NavigationMeshSourceGeometryData3D): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "get_indices", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc appendArrays*(self: NavigationMeshSourceGeometryData3D; vertices: PackedFloat32Array; indices: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "append_arrays", 3117535015)
  methodbind.ptrcall(self, [getPtr vertices, getPtr indices], void)

proc clear*(self: NavigationMeshSourceGeometryData3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hasData*(self: NavigationMeshSourceGeometryData3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "has_data", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc addMesh*(self: NavigationMeshSourceGeometryData3D; mesh: gdref Mesh; xform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "add_mesh", 975462459)
  methodbind.ptrcall(self, [getPtr mesh, getPtr xform], void)

proc addMeshArray*(self: NavigationMeshSourceGeometryData3D; meshArray: Array; xform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "add_mesh_array", 4235710913)
  methodbind.ptrcall(self, [getPtr meshArray, getPtr xform], void)

proc addFaces*(self: NavigationMeshSourceGeometryData3D; faces: PackedVector3Array; xform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "add_faces", 1440358797)
  methodbind.ptrcall(self, [getPtr faces, getPtr xform], void)

proc merge*(self: NavigationMeshSourceGeometryData3D; otherGeometry: gdref NavigationMeshSourceGeometryData3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "merge", 655828145)
  methodbind.ptrcall(self, [getPtr otherGeometry], void)

proc addProjectedObstruction*(self: NavigationMeshSourceGeometryData3D; vertices: PackedVector3Array; elevation: Float; height: Float; carve: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "add_projected_obstruction", 3351846707)
  methodbind.ptrcall(self, [getPtr vertices, getPtr elevation, getPtr height, getPtr carve], void)

proc clearProjectedObstructions*(self: NavigationMeshSourceGeometryData3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "clear_projected_obstructions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setProjectedObstructions*(self: NavigationMeshSourceGeometryData3D; projectedObstructions: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "set_projected_obstructions", 381264803)
  methodbind.ptrcall(self, [getPtr projectedObstructions], void)

proc getProjectedObstructions*(self: NavigationMeshSourceGeometryData3D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "get_projected_obstructions", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getBounds*(self: NavigationMeshSourceGeometryData3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData3D, "get_bounds", 1021181044)
  methodbind.ptrcall(self, [], AABB)

template vertices*(self: NavigationMeshSourceGeometryData3D): untyped = self.getVertices()
template `vertices=`*(self: NavigationMeshSourceGeometryData3D; value) = self.setVertices(value)

template indices*(self: NavigationMeshSourceGeometryData3D): untyped = self.getIndices()
template `indices=`*(self: NavigationMeshSourceGeometryData3D; value) = self.setIndices(value)

template projectedObstructions*(self: NavigationMeshSourceGeometryData3D): untyped = self.getProjectedObstructions()
template `projectedObstructions=`*(self: NavigationMeshSourceGeometryData3D; value) = self.setProjectedObstructions(value)
