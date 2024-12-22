{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const TextureCubemapRD_vmap =
  TextureLayeredRD.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureCubemapRD]): Table[string, string] = TextureCubemapRD_vmap