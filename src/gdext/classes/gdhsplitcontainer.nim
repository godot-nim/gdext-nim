{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsplitcontainer; export gdsplitcontainer

const HSplitContainer_vmap =
  SplitContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HSplitContainer]): Table[string, string] = HSplitContainer_vmap