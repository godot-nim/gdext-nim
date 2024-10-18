{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcompressedtexturelayered; export gdcompressedtexturelayered

const CompressedTexture2DArray_vmap =
  CompressedTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedTexture2DArray]): Table[string, string] = CompressedTexture2DArray_vmap