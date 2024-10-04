{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc bake*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  expandMethodBind(className NavigationMeshGenerator, "bake", 1401173477)
  var `?param` = [getPtr navigationMesh, getPtr rootNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className NavigationMeshGenerator, "clear", 2923361153)
  var `?param` = [getPtr navigationMesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc parseSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  expandMethodBind(className NavigationMeshGenerator, "parse_source_geometry_data", 685862123)
  var `?param` = [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc bakeFromSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationMeshGenerator, "bake_from_source_geometry_data", 2469318639)
  var `?param` = [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

const NavigationMeshGenerator_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationMeshGenerator]): Table[string, string] = NavigationMeshGenerator_vmap