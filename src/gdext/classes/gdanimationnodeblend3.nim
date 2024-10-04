{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

const AnimationNodeBlend3_vmap =
  AnimationNodeSync.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeBlend3]): Table[string, string] = AnimationNodeBlend3_vmap