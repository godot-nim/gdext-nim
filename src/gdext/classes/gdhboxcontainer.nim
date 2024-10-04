{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdboxcontainer; export gdboxcontainer

const HBoxContainer_vmap =
  BoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HBoxContainer]): Table[string, string] = HBoxContainer_vmap