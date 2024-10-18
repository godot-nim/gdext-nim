{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderTexture2DArray_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderTexture2DArray]): Table[string, string] = PlaceholderTexture2DArray_vmap