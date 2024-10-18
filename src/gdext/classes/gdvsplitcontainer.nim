{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsplitcontainer; export gdsplitcontainer

const VSplitContainer_vmap =
  SplitContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VSplitContainer]): Table[string, string] = VSplitContainer_vmap