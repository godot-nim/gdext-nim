{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscrollbar; export gdscrollbar

const VScrollBar_vmap =
  ScrollBar.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VScrollBar]): Table[string, string] = VScrollBar_vmap