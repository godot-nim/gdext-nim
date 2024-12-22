{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgshape3d; export gdcsgshape3d

const CSGCombiner3D_vmap =
  CSGShape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGCombiner3D]): Table[string, string] = CSGCombiner3D_vmap