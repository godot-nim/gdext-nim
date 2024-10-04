{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdscrollbar; export gdscrollbar

const HScrollBar_vmap =
  ScrollBar.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HScrollBar]): Table[string, string] = HScrollBar_vmap