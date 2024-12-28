{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc setMultimesh*(self: MultiMeshInstance3D; multimesh: gdref MultiMesh): void =
  expandMethodBind(className MultiMeshInstance3D, "set_multimesh", 2246127404)
  methodbind.ptrcall(self, [getPtr multimesh])

proc getMultimesh*(self: MultiMeshInstance3D): gdref MultiMesh =
  expandMethodBind(className MultiMeshInstance3D, "get_multimesh", 1385450523)
  var ret: encoded gdref MultiMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref MultiMesh)

template multimesh*(self: MultiMeshInstance3D): untyped = self.getMultimesh()
template `multimesh=`*(self: MultiMeshInstance3D; value) = self.setMultimesh(value)

const MultiMeshInstance3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiMeshInstance3D]): Table[string, string] = MultiMeshInstance3D_vmap