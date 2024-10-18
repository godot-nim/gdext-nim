{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

const Separator_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Separator]): Table[string, string] = Separator_vmap