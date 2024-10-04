{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

const AnimationRootNode_vmap =
  AnimationNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationRootNode]): Table[string, string] = AnimationRootNode_vmap