{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

const PointMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PointMesh]): Table[string, string] = PointMesh_vmap