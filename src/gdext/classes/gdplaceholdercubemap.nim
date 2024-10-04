{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderCubemap_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderCubemap]): Table[string, string] = PlaceholderCubemap_vmap