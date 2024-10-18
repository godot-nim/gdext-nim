{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenedata; export gdrenderscenedata

const RenderSceneDataRd_vmap =
  RenderSceneData.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneDataRd]): Table[string, string] = RenderSceneDataRd_vmap