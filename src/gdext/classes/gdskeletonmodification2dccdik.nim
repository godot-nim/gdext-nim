{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DCCDIK; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath])

proc getTargetNode*(self: SkeletonModification2DCCDIK): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setTipNode*(self: SkeletonModification2DCCDIK; tipNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_tip_node", 1348162250)
  methodbind.ptrcall(self, [getPtr tipNodepath])

proc getTipNode*(self: SkeletonModification2DCCDIK): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_tip_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setCcdikDataChainLength*(self: SkeletonModification2DCCDIK; length: int32): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_data_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length])

proc getCcdikDataChainLength*(self: SkeletonModification2DCCDIK): int32 =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_data_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32; bone2dNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone2d_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr bone2dNodepath])

proc getCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone2d_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(NodePath)

proc setCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone_index", 3937882851)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr boneIdx])

proc getCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32): int32 =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone_index", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(int32)

proc setCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32; rotateFromJoint: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_rotate_from_joint", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr rotateFromJoint])

proc getCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_rotate_from_joint", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(bool)

proc setCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32; enableConstraint: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_enable_constraint", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr enableConstraint])

proc getCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_enable_constraint", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(bool)

proc setCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMin: Float): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_min", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr angleMin])

proc getCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_min", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(Float)

proc setCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMax: Float): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_max", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr angleMax])

proc getCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_max", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(Float)

proc setCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32; invert: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_invert", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr invert])

proc getCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_invert", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(bool)

template targetNodepath*(self: SkeletonModification2DCCDIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DCCDIK; value) = self.setTargetNode(value)

template tipNodepath*(self: SkeletonModification2DCCDIK): untyped = self.getTipNode()
template `tipNodepath=`*(self: SkeletonModification2DCCDIK; value) = self.setTipNode(value)

template ccdikDataChainLength*(self: SkeletonModification2DCCDIK): untyped = self.getCcdikDataChainLength()
template `ccdikDataChainLength=`*(self: SkeletonModification2DCCDIK; value) = self.setCcdikDataChainLength(value)

const SkeletonModification2DCCDIK_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DCCDIK]): Table[string, string] = SkeletonModification2DCCDIK_vmap