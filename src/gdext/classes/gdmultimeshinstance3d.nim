{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

expandOnClassImported(MultiMeshInstance3D, GeometryInstance3D)

proc setMultimesh*(self: MultiMeshInstance3D; multimesh: gdref MultiMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance3D, "set_multimesh", 2246127404)
  methodbind.ptrcall(self, [getPtr multimesh], void)

proc getMultimesh*(self: MultiMeshInstance3D): gdref MultiMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiMeshInstance3D, "get_multimesh", 1385450523)
  methodbind.ptrcall(self, [], gdref MultiMesh)

template multimesh*(self: MultiMeshInstance3D): untyped = self.getMultimesh()
template `multimesh=`*(self: MultiMeshInstance3D; value) = self.setMultimesh(value)
