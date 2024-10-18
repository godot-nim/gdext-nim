{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdflowcontainer; export gdflowcontainer

const VFlowContainer_vmap =
  FlowContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VFlowContainer]): Table[string, string] = VFlowContainer_vmap