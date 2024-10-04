{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const Texture2DArrayRd_vmap =
  TextureLayeredRd.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture2DArrayRd]): Table[string, string] = Texture2DArrayRd_vmap