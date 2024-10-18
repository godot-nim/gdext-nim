{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DTwoBoneIk; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_target_node", 1348162250)
  var `?param` = [getPtr targetNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonModification2DTwoBoneIk): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIk; minimumDistance: Float): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_target_minimum_distance", 373806689)
  var `?param` = [getPtr minimumDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIk): Float =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_target_minimum_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIk; maximumDistance: Float): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_target_maximum_distance", 373806689)
  var `?param` = [getPtr maximumDistance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIk): Float =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_target_maximum_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFlipBendDirection*(self: SkeletonModification2DTwoBoneIk; flipDirection: bool): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_flip_bend_direction", 2586408642)
  var `?param` = [getPtr flipDirection]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlipBendDirection*(self: SkeletonModification2DTwoBoneIk): bool =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_flip_bend_direction", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIk; bone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_joint_one_bone2d_node", 1348162250)
  var `?param` = [getPtr bone2dNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIk): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_joint_one_bone2d_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIk; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_joint_one_bone_idx", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIk): int32 =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_joint_one_bone_idx", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIk; bone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_joint_two_bone2d_node", 1348162250)
  var `?param` = [getPtr bone2dNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIk): NodePath =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_joint_two_bone2d_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIk; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "set_joint_two_bone_idx", 1286410249)
  var `?param` = [getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIk): int32 =
  expandMethodBind(className SkeletonModification2DTwoBoneIk, "get_joint_two_bone_idx", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template targetNodepath*(self: SkeletonModification2DTwoBoneIk): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DTwoBoneIk; value) = self.setTargetNode(value)

template targetMinimumDistance*(self: SkeletonModification2DTwoBoneIk): untyped = self.getTargetMinimumDistance()
template `targetMinimumDistance=`*(self: SkeletonModification2DTwoBoneIk; value) = self.setTargetMinimumDistance(value)

template targetMaximumDistance*(self: SkeletonModification2DTwoBoneIk): untyped = self.getTargetMaximumDistance()
template `targetMaximumDistance=`*(self: SkeletonModification2DTwoBoneIk; value) = self.setTargetMaximumDistance(value)

template flipBendDirection*(self: SkeletonModification2DTwoBoneIk): untyped = self.getFlipBendDirection()
template `flipBendDirection=`*(self: SkeletonModification2DTwoBoneIk; value) = self.setFlipBendDirection(value)

const SkeletonModification2DTwoBoneIk_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DTwoBoneIk]): Table[string, string] = SkeletonModification2DTwoBoneIk_vmap