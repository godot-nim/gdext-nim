{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasematerial3d; export gdbasematerial3d

const StandardMaterial3D_vmap =
  BaseMaterial3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StandardMaterial3D]): Table[string, string] = StandardMaterial3D_vmap