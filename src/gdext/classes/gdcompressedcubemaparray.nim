{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcompressedtexturelayered; export gdcompressedtexturelayered

const CompressedCubemapArray_vmap =
  CompressedTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedCubemapArray]): Table[string, string] = CompressedCubemapArray_vmap