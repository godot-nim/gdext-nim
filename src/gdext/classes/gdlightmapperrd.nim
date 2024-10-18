{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlightmapper; export gdlightmapper

const LightmapperRd_vmap =
  Lightmapper.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapperRd]): Table[string, string] = LightmapperRd_vmap