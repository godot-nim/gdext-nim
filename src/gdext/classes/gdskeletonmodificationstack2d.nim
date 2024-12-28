{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setup*(self: SkeletonModificationStack2D): void =
  expandMethodBind(className SkeletonModificationStack2D, "setup", 3218959716)
  methodbind.ptrcall(self, [])

proc execute*(self: SkeletonModificationStack2D; delta: Float; executionMode: int32): void =
  expandMethodBind(className SkeletonModificationStack2D, "execute", 1005356550)
  methodbind.ptrcall(self, [getPtr delta, getPtr executionMode])

proc enableAllModifications*(self: SkeletonModificationStack2D; enabled: bool): void =
  expandMethodBind(className SkeletonModificationStack2D, "enable_all_modifications", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getModification*(self: SkeletonModificationStack2D; modIdx: int32): gdref SkeletonModification2D =
  expandMethodBind(className SkeletonModificationStack2D, "get_modification", 2570274329)
  var ret: encoded gdref SkeletonModification2D
  methodbind.ptrcall(self, [getPtr modIdx], addr ret)
  (addr ret).decode_result(gdref SkeletonModification2D)

proc addModification*(self: SkeletonModificationStack2D; modification: gdref SkeletonModification2D): void =
  expandMethodBind(className SkeletonModificationStack2D, "add_modification", 354162120)
  methodbind.ptrcall(self, [getPtr modification])

proc deleteModification*(self: SkeletonModificationStack2D; modIdx: int32): void =
  expandMethodBind(className SkeletonModificationStack2D, "delete_modification", 1286410249)
  methodbind.ptrcall(self, [getPtr modIdx])

proc setModification*(self: SkeletonModificationStack2D; modIdx: int32; modification: gdref SkeletonModification2D): void =
  expandMethodBind(className SkeletonModificationStack2D, "set_modification", 1098262544)
  methodbind.ptrcall(self, [getPtr modIdx, getPtr modification])

proc setModificationCount*(self: SkeletonModificationStack2D; count: int32): void =
  expandMethodBind(className SkeletonModificationStack2D, "set_modification_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getModificationCount*(self: SkeletonModificationStack2D): int32 =
  expandMethodBind(className SkeletonModificationStack2D, "get_modification_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getIsSetup*(self: SkeletonModificationStack2D): bool =
  expandMethodBind(className SkeletonModificationStack2D, "get_is_setup", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEnabled*(self: SkeletonModificationStack2D; enabled: bool): void =
  expandMethodBind(className SkeletonModificationStack2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getEnabled*(self: SkeletonModificationStack2D): bool =
  expandMethodBind(className SkeletonModificationStack2D, "get_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setStrength*(self: SkeletonModificationStack2D; strength: Float): void =
  expandMethodBind(className SkeletonModificationStack2D, "set_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength])

proc getStrength*(self: SkeletonModificationStack2D): Float =
  expandMethodBind(className SkeletonModificationStack2D, "get_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getSkeleton*(self: SkeletonModificationStack2D): Skeleton2D =
  expandMethodBind(className SkeletonModificationStack2D, "get_skeleton", 1697361217)
  var ret: encoded Skeleton2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton2D)

template enabled*(self: SkeletonModificationStack2D): untyped = self.getEnabled()
template `enabled=`*(self: SkeletonModificationStack2D; value) = self.setEnabled(value)

template strength*(self: SkeletonModificationStack2D): untyped = self.getStrength()
template `strength=`*(self: SkeletonModificationStack2D; value) = self.setStrength(value)

template modificationCount*(self: SkeletonModificationStack2D): untyped = self.getModificationCount()
template `modificationCount=`*(self: SkeletonModificationStack2D; value) = self.setModificationCount(value)

const SkeletonModificationStack2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModificationStack2D]): Table[string, string] = SkeletonModificationStack2D_vmap