{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

const AnimationNodeTimeScale_vmap =
  AnimationNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeTimeScale]): Table[string, string] = AnimationNodeTimeScale_vmap