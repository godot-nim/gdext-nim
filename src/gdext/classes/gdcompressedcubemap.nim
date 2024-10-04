{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcompressedtexturelayered; export gdcompressedtexturelayered

const CompressedCubemap_vmap =
  CompressedTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CompressedCubemap]): Table[string, string] = CompressedCubemap_vmap