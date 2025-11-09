{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DStackHolder, SkeletonModification2D)

proc setHeldModificationStack*(self: SkeletonModification2DStackHolder; heldModificationStack: gdref SkeletonModificationStack2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DStackHolder, "set_held_modification_stack", 3907307132)
  methodbind.ptrcall(self, [getPtr heldModificationStack], void)

proc getHeldModificationStack*(self: SkeletonModification2DStackHolder): gdref SkeletonModificationStack2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DStackHolder, "get_held_modification_stack", 2107508396)
  methodbind.ptrcall(self, [], gdref SkeletonModificationStack2D)
