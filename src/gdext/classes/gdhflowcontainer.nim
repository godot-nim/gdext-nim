{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdflowcontainer; export gdflowcontainer

const HFlowContainer_vmap =
  FlowContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HFlowContainer]): Table[string, string] = HFlowContainer_vmap