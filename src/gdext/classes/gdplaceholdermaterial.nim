{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

const PlaceholderMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderMaterial]): Table[string, string] = PlaceholderMaterial_vmap