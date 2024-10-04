{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdsplitcontainer; export gdsplitcontainer

const VSplitContainer_vmap =
  SplitContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VSplitContainer]): Table[string, string] = VSplitContainer_vmap