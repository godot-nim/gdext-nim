{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const TextureCubemapRd_vmap =
  TextureLayeredRd.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureCubemapRd]): Table[string, string] = TextureCubemapRd_vmap