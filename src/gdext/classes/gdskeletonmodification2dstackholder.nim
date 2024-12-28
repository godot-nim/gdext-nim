{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setHeldModificationStack*(self: SkeletonModification2DStackHolder; heldModificationStack: gdref SkeletonModificationStack2D): void =
  expandMethodBind(className SkeletonModification2DStackHolder, "set_held_modification_stack", 3907307132)
  methodbind.ptrcall(self, [getPtr heldModificationStack])

proc getHeldModificationStack*(self: SkeletonModification2DStackHolder): gdref SkeletonModificationStack2D =
  expandMethodBind(className SkeletonModification2DStackHolder, "get_held_modification_stack", 2107508396)
  var ret: encoded gdref SkeletonModificationStack2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SkeletonModificationStack2D)

const SkeletonModification2DStackHolder_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DStackHolder]): Table[string, string] = SkeletonModification2DStackHolder_vmap