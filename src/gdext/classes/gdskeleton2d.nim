{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Skeleton2D, Node2D)

proc getBoneCount*(self: Skeleton2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "get_bone_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBone*(self: Skeleton2D; idx: int32): Bone2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "get_bone", 2556267111)
  methodbind.ptrcall(self, [getPtr idx], Bone2D)

proc getSkeleton*(self: Skeleton2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "get_skeleton", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setModificationStack*(self: Skeleton2D; modificationStack: gdref SkeletonModificationStack2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "set_modification_stack", 3907307132)
  methodbind.ptrcall(self, [getPtr modificationStack], void)

proc getModificationStack*(self: Skeleton2D): gdref SkeletonModificationStack2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "get_modification_stack", 2107508396)
  methodbind.ptrcall(self, [], gdref SkeletonModificationStack2D)

proc executeModifications*(self: Skeleton2D; delta: Float; executionMode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "execute_modifications", 1005356550)
  methodbind.ptrcall(self, [getPtr delta, getPtr executionMode], void)

proc setBoneLocalPoseOverride*(self: Skeleton2D; boneIdx: int32; overridePose: Transform2D; strength: Float; persistent: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "set_bone_local_pose_override", 555457532)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr overridePose, getPtr strength, getPtr persistent], void)

proc getBoneLocalPoseOverride*(self: Skeleton2D; boneIdx: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skeleton2D, "get_bone_local_pose_override", 2995540667)
  methodbind.ptrcall(self, [getPtr boneIdx], Transform2D)
