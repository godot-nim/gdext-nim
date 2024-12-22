{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const TextureCubemapArrayRD_vmap =
  TextureLayeredRD.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureCubemapArrayRD]): Table[string, string] = TextureCubemapArrayRD_vmap