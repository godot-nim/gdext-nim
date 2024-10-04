{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

const Node3DGizmo_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Node3DGizmo]): Table[string, string] = Node3DGizmo_vmap