{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbasematerial3d; export gdbasematerial3d

const OrmMaterial3D_vmap =
  BaseMaterial3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OrmMaterial3D]): Table[string, string] = OrmMaterial3D_vmap