{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

const Panel_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Panel]): Table[string, string] = Panel_vmap