{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const Texture2DArrayRD_vmap =
  TextureLayeredRD.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture2DArrayRD]): Table[string, string] = Texture2DArrayRD_vmap