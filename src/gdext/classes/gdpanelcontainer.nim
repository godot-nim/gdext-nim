{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

const PanelContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PanelContainer]): Table[string, string] = PanelContainer_vmap