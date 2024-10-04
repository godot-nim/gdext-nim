{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpopup; export gdpopup

const PopupPanel_vmap =
  Popup.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PopupPanel]): Table[string, string] = PopupPanel_vmap