{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcsgshape3d; export gdcsgshape3d

const CsgCombiner3D_vmap =
  CsgShape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgCombiner3D]): Table[string, string] = CsgCombiner3D_vmap