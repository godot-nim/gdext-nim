{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlightmapper; export gdlightmapper

const LightmapperRD_vmap =
  Lightmapper.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapperRD]): Table[string, string] = LightmapperRD_vmap