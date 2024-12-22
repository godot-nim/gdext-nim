{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DCCDIK; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_target_node", 1348162250)
  var `?param` = [getPtr targetNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonModification2DCCDIK): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setTipNode*(self: SkeletonModification2DCCDIK; tipNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_tip_node", 1348162250)
  var `?param` = [getPtr tipNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTipNode*(self: SkeletonModification2DCCDIK): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_tip_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setCcdikDataChainLength*(self: SkeletonModification2DCCDIK; length: int32): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_data_chain_length", 1286410249)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikDataChainLength*(self: SkeletonModification2DCCDIK): int32 =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_data_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32; bone2dNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone2d_node", 2761262315)
  var `?param` = [getPtr jointIdx, getPtr bone2dNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone2d_node", 408788394)
  var `?param` = [getPtr jointIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc setCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone_index", 3937882851)
  var `?param` = [getPtr jointIdx, getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32): int32 =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone_index", 923996154)
  var `?param` = [getPtr jointIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32; rotateFromJoint: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_rotate_from_joint", 300928843)
  var `?param` = [getPtr jointIdx, getPtr rotateFromJoint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_rotate_from_joint", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32; enableConstraint: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_enable_constraint", 300928843)
  var `?param` = [getPtr jointIdx, getPtr enableConstraint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_enable_constraint", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMin: Float): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_min", 1602489585)
  var `?param` = [getPtr jointIdx, getPtr angleMin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_min", 2339986948)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMax: Float): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_max", 1602489585)
  var `?param` = [getPtr jointIdx, getPtr angleMax]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_max", 2339986948)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32; invert: bool): void =
  expandMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_invert", 300928843)
  var `?param` = [getPtr jointIdx, getPtr invert]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_invert", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
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