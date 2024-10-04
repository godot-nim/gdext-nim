{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

const PanelContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PanelContainer]): Table[string, string] = PanelContainer_vmap