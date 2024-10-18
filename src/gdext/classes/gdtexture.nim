{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

const Texture_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture]): Table[string, string] = Texture_vmap