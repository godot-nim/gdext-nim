{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

const LightmapProbe_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapProbe]): Table[string, string] = LightmapProbe_vmap