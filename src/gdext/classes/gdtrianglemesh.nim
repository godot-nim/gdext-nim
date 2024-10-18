{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const TriangleMesh_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TriangleMesh]): Table[string, string] = TriangleMesh_vmap