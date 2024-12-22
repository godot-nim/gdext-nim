{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasematerial3d; export gdbasematerial3d

const ORMMaterial3D_vmap =
  BaseMaterial3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ORMMaterial3D]): Table[string, string] = ORMMaterial3D_vmap