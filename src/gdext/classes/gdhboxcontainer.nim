{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboxcontainer; export gdboxcontainer

const HBoxContainer_vmap =
  BoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HBoxContainer]): Table[string, string] = HBoxContainer_vmap