{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdboxcontainer; export gdboxcontainer

const VBoxContainer_vmap =
  BoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VBoxContainer]): Table[string, string] = VBoxContainer_vmap