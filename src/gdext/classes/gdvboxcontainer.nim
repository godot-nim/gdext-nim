{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboxcontainer; export gdboxcontainer

const VBoxContainer_vmap =
  BoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VBoxContainer]): Table[string, string] = VBoxContainer_vmap