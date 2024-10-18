{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

const AnimationNodeSub2_vmap =
  AnimationNodeSync.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeSub2]): Table[string, string] = AnimationNodeSub2_vmap