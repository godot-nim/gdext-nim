{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderdata; export gdrenderdata

const RenderDataRd_vmap =
  RenderData.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RenderDataRd]): Table[string, string] = RenderDataRd_vmap