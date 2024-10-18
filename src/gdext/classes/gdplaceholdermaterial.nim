{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

const PlaceholderMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderMaterial]): Table[string, string] = PlaceholderMaterial_vmap