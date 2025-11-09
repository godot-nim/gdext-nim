{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(NavigationMeshGenerator, Object)

proc bake*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; rootNode: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshGenerator, "bake", 1401173477)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr rootNode], void)

proc clear*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshGenerator, "clear", 2923361153)
  methodbind.ptrcall(self, [getPtr navigationMesh], void)

proc parseSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; rootNode: Node; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshGenerator, "parse_source_geometry_data", 3172802542)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr rootNode, getPtr callback], void)

proc bakeFromSourceGeometryData*(self: NavigationMeshGenerator; navigationMesh: gdref NavigationMesh; sourceGeometryData: gdref NavigationMeshSourceGeometryData3D; callback: Callable = callable()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshGenerator, "bake_from_source_geometry_data", 1286748856)
  methodbind.ptrcall(self, [getPtr navigationMesh, getPtr sourceGeometryData, getPtr callback], void)
