{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderCubemapArray_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderCubemapArray]): Table[string, string] = PlaceholderCubemapArray_vmap