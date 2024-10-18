{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

const AnimationNodeAdd3_vmap =
  AnimationNodeSync.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeAdd3]): Table[string, string] = AnimationNodeAdd3_vmap