{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcompressedtexturelayered; export gdcompressedtexturelayered

const CompressedCubemap_vmap =
  CompressedTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedCubemap]): Table[string, string] = CompressedCubemap_vmap