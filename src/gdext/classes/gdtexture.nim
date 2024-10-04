{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

const Texture_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture]): Table[string, string] = Texture_vmap