{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc getBoneCount*(self: Skeleton2D): int32 =
  expandMethodBind(className Skeleton2D, "get_bone_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getBone*(self: Skeleton2D; idx: int32): Bone2D =
  expandMethodBind(className Skeleton2D, "get_bone", 2556267111)
  var ret: encoded Bone2D
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Bone2D)

proc getSkeleton*(self: Skeleton2D): RID =
  expandMethodBind(className Skeleton2D, "get_skeleton", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setModificationStack*(self: Skeleton2D; modificationStack: gdref SkeletonModificationStack2D): void =
  expandMethodBind(className Skeleton2D, "set_modification_stack", 3907307132)
  methodbind.ptrcall(self, [getPtr modificationStack])

proc getModificationStack*(self: Skeleton2D): gdref SkeletonModificationStack2D =
  expandMethodBind(className Skeleton2D, "get_modification_stack", 2107508396)
  var ret: encoded gdref SkeletonModificationStack2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SkeletonModificationStack2D)

proc executeModifications*(self: Skeleton2D; delta: Float; executionMode: int32): void =
  expandMethodBind(className Skeleton2D, "execute_modifications", 1005356550)
  methodbind.ptrcall(self, [getPtr delta, getPtr executionMode])

proc setBoneLocalPoseOverride*(self: Skeleton2D; boneIdx: int32; overridePose: Transform2D; strength: Float; persistent: bool): void =
  expandMethodBind(className Skeleton2D, "set_bone_local_pose_override", 555457532)
  methodbind.ptrcall(self, [getPtr boneIdx, getPtr overridePose, getPtr strength, getPtr persistent])

proc getBoneLocalPoseOverride*(self: Skeleton2D; boneIdx: int32): Transform2D =
  expandMethodBind(className Skeleton2D, "get_bone_local_pose_override", 2995540667)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr boneIdx], addr ret)
  (addr ret).decode_result(Transform2D)

const Skeleton2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Skeleton2D]): Table[string, string] = Skeleton2D_vmap

proc boneSetupChanged*(self: Skeleton2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bone_setup_changed")
  self.emitSignal(signalname)