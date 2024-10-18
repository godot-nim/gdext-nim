{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

const MarginContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MarginContainer]): Table[string, string] = MarginContainer_vmap