{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscrollbar; export gdscrollbar

const HScrollBar_vmap =
  ScrollBar.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HScrollBar]): Table[string, string] = HScrollBar_vmap