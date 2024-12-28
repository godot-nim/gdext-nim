{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DTwoBoneIK; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath])

proc getTargetNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIK; minimumDistance: Float): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_minimum_distance", 373806689)
  methodbind.ptrcall(self, [getPtr minimumDistance])

proc getTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIK): Float =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_minimum_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIK; maximumDistance: Float): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_maximum_distance", 373806689)
  methodbind.ptrcall(self, [getPtr maximumDistance])

proc getTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIK): Float =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_maximum_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFlipBendDirection*(self: SkeletonModification2DTwoBoneIK; flipDirection: bool): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_flip_bend_direction", 2586408642)
  methodbind.ptrcall(self, [getPtr flipDirection])

proc getFlipBendDirection*(self: SkeletonModification2DTwoBoneIK): bool =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_flip_bend_direction", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIK; bone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_one_bone2d_node", 1348162250)
  methodbind.ptrcall(self, [getPtr bone2dNode])

proc getJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_one_bone2d_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIK; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_one_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc getJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIK): int32 =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_one_bone_idx", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIK; bone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_two_bone2d_node", 1348162250)
  methodbind.ptrcall(self, [getPtr bone2dNode])

proc getJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_two_bone2d_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIK; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_two_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc getJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIK): int32 =
  expandMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_two_bone_idx", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template targetNodepath*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetNode(value)

template targetMinimumDistance*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetMinimumDistance()
template `targetMinimumDistance=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetMinimumDistance(value)

template targetMaximumDistance*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetMaximumDistance()
template `targetMaximumDistance=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetMaximumDistance(value)

template flipBendDirection*(self: SkeletonModification2DTwoBoneIK): untyped = self.getFlipBendDirection()
template `flipBendDirection=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setFlipBendDirection(value)

const SkeletonModification2DTwoBoneIK_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DTwoBoneIK]): Table[string, string] = SkeletonModification2DTwoBoneIK_vmap