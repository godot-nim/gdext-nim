{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdseparator; export gdseparator

const HSeparator_vmap =
  Separator.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HSeparator]): Table[string, string] = HSeparator_vmap