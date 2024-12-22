{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderdata; export gdrenderdata

const RenderDataRD_vmap =
  RenderData.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderDataRD]): Table[string, string] = RenderDataRD_vmap