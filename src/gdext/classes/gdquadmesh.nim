{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdplanemesh; export gdplanemesh

const QuadMesh_vmap =
  PlaneMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[QuadMesh]): Table[string, string] = QuadMesh_vmap