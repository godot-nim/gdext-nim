{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc bake*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  expandMethodBind(className NavigationMeshGenerator, "bake", 1401173477)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr rootNode])

proc clear*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh): void =
  expandMethodBind(className NavigationMeshGenerator, "clear", 2923361153)
  methodbind.ptrcall(self, [getPtr navigationMesh])

proc parseSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  expandMethodBind(className NavigationMeshGenerator, "parse_source_geometry_data", 685862123)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback])

proc bakeFromSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  expandMethodBind(className NavigationMeshGenerator, "bake_from_source_geometry_data", 2469318639)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback])

const NavigationMeshGenerator_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationMeshGenerator]): Table[string, string] = NavigationMeshGenerator_vmap