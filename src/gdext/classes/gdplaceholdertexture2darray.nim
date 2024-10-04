{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderTexture2DArray_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderTexture2DArray]): Table[string, string] = PlaceholderTexture2DArray_vmap