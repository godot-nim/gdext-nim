{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderCubemap_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderCubemap]): Table[string, string] = PlaceholderCubemap_vmap