{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getVertices*(self: Occluder3D): PackedVector3Array =
  expandMethodBind(className Occluder3D, "get_vertices", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getIndices*(self: Occluder3D): PackedInt32Array =
  expandMethodBind(className Occluder3D, "get_indices", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

const Occluder3D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Occluder3D]): Table[string, string] = Occluder3D_vmap