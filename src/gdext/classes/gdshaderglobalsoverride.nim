{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

const ShaderGlobalsOverride_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ShaderGlobalsOverride]): Table[string, string] = ShaderGlobalsOverride_vmap