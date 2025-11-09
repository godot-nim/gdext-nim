{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DCCDIK, SkeletonModification2D)

proc setTargetNode*(self: SkeletonModification2DCCDIK; targetNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath], void)

proc getTargetNode*(self: SkeletonModification2DCCDIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setTipNode*(self: SkeletonModification2DCCDIK; tipNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_tip_node", 1348162250)
  methodbind.ptrcall(self, [getPtr tipNodepath], void)

proc getTipNode*(self: SkeletonModification2DCCDIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_tip_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setCcdikDataChainLength*(self: SkeletonModification2DCCDIK; length: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_data_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length], void)

proc getCcdikDataChainLength*(self: SkeletonModification2DCCDIK): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_data_chain_length", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32; bone2dNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone2d_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr bone2dNodepath], void)

proc getCcdikJointBone2dNode*(self: SkeletonModification2DCCDIK; jointIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone2d_node", 408788394)
  methodbind.ptrcall(self, [getPtr jointIdx], NodePath)

proc setCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_bone_index", 3937882851)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr boneIdx], void)

proc getCcdikJointBoneIndex*(self: SkeletonModification2DCCDIK; jointIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_bone_index", 923996154)
  methodbind.ptrcall(self, [getPtr jointIdx], int32)

proc setCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32; rotateFromJoint: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_rotate_from_joint", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr rotateFromJoint], void)

proc getCcdikJointRotateFromJoint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_rotate_from_joint", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

proc setCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32; enableConstraint: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_enable_constraint", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr enableConstraint], void)

proc getCcdikJointEnableConstraint*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_enable_constraint", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

proc setCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_min", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr angleMin], void)

proc getCcdikJointConstraintAngleMin*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_min", 2339986948)
  methodbind.ptrcall(self, [getPtr jointIdx], Float)

proc setCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32; angleMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_max", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr angleMax], void)

proc getCcdikJointConstraintAngleMax*(self: SkeletonModification2DCCDIK; jointIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_max", 2339986948)
  methodbind.ptrcall(self, [getPtr jointIdx], Float)

proc setCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "set_ccdik_joint_constraint_angle_invert", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr invert], void)

proc getCcdikJointConstraintAngleInvert*(self: SkeletonModification2DCCDIK; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DCCDIK, "get_ccdik_joint_constraint_angle_invert", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

template targetNodepath*(self: SkeletonModification2DCCDIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DCCDIK; value) = self.setTargetNode(value)

template tipNodepath*(self: SkeletonModification2DCCDIK): untyped = self.getTipNode()
template `tipNodepath=`*(self: SkeletonModification2DCCDIK; value) = self.setTipNode(value)

template ccdikDataChainLength*(self: SkeletonModification2DCCDIK): untyped = self.getCcdikDataChainLength()
template `ccdikDataChainLength=`*(self: SkeletonModification2DCCDIK; value) = self.setCcdikDataChainLength(value)
