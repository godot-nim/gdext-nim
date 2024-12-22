{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenedata; export gdrenderscenedata

const RenderSceneDataRD_vmap =
  RenderSceneData.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderSceneDataRD]): Table[string, string] = RenderSceneDataRD_vmap