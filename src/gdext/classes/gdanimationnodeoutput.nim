{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

const AnimationNodeOutput_vmap =
  AnimationNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeOutput]): Table[string, string] = AnimationNodeOutput_vmap