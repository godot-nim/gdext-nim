{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(SkeletonModificationStack2D, Resource)

proc setup*(self: SkeletonModificationStack2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "setup", 3218959716)
  methodbind.ptrcall(self, [], void)

proc execute*(self: SkeletonModificationStack2D; delta: Float; executionMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "execute", 1005356550)
  methodbind.ptrcall(self, [getPtr delta, getPtr executionMode], void)

proc enableAllModifications*(self: SkeletonModificationStack2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "enable_all_modifications", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getModification*(self: SkeletonModificationStack2D; modIdx: int32): gdref SkeletonModification2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_modification", 2570274329)
  methodbind.ptrcall(self, [getPtr modIdx], gdref SkeletonModification2D)

proc addModification*(self: SkeletonModificationStack2D; modification: gdref SkeletonModification2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "add_modification", 354162120)
  methodbind.ptrcall(self, [getPtr modification], void)

proc deleteModification*(self: SkeletonModificationStack2D; modIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "delete_modification", 1286410249)
  methodbind.ptrcall(self, [getPtr modIdx], void)

proc setModification*(self: SkeletonModificationStack2D; modIdx: int32; modification: gdref SkeletonModification2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "set_modification", 1098262544)
  methodbind.ptrcall(self, [getPtr modIdx, getPtr modification], void)

proc setModificationCount*(self: SkeletonModificationStack2D; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "set_modification_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getModificationCount*(self: SkeletonModificationStack2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_modification_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getIsSetup*(self: SkeletonModificationStack2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_is_setup", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnabled*(self: SkeletonModificationStack2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getEnabled*(self: SkeletonModificationStack2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setStrength*(self: SkeletonModificationStack2D; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "set_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getStrength*(self: SkeletonModificationStack2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getSkeleton*(self: SkeletonModificationStack2D): Skeleton2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModificationStack2D, "get_skeleton", 1697361217)
  methodbind.ptrcall(self, [], Skeleton2D)

template enabled*(self: SkeletonModificationStack2D): untyped = self.getEnabled()
template `enabled=`*(self: SkeletonModificationStack2D; value) = self.setEnabled(value)

template strength*(self: SkeletonModificationStack2D): untyped = self.getStrength()
template `strength=`*(self: SkeletonModificationStack2D; value) = self.setStrength(value)

template modificationCount*(self: SkeletonModificationStack2D): untyped = self.getModificationCount()
template `modificationCount=`*(self: SkeletonModificationStack2D; value) = self.setModificationCount(value)
