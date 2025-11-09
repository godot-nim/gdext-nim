{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DFABRIK, SkeletonModification2D)

proc setTargetNode*(self: SkeletonModification2DFABRIK; targetNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath], void)

proc getTargetNode*(self: SkeletonModification2DFABRIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setFabrikDataChainLength*(self: SkeletonModification2DFABRIK; length: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_data_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length], void)

proc getFabrikDataChainLength*(self: SkeletonModification2DFABRIK): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_data_chain_length", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setFabrikJointBone2dNode*(self: SkeletonModification2DFABRIK; jointIdx: int32; bone2dNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_bone2d_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr bone2dNodepath], void)

proc getFabrikJointBone2dNode*(self: SkeletonModification2DFABRIK; jointIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_bone2d_node", 408788394)
  methodbind.ptrcall(self, [getPtr jointIdx], NodePath)

proc setFabrikJointBoneIndex*(self: SkeletonModification2DFABRIK; jointIdx: int32; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_bone_index", 3937882851)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr boneIdx], void)

proc getFabrikJointBoneIndex*(self: SkeletonModification2DFABRIK; jointIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_bone_index", 923996154)
  methodbind.ptrcall(self, [getPtr jointIdx], int32)

proc setFabrikJointMagnetPosition*(self: SkeletonModification2DFABRIK; jointIdx: int32; magnetPosition: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_magnet_position", 163021252)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr magnetPosition], void)

proc getFabrikJointMagnetPosition*(self: SkeletonModification2DFABRIK; jointIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_magnet_position", 2299179447)
  methodbind.ptrcall(self, [getPtr jointIdx], Vector2)

proc setFabrikJointUseTargetRotation*(self: SkeletonModification2DFABRIK; jointIdx: int32; useTargetRotation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_use_target_rotation", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr useTargetRotation], void)

proc getFabrikJointUseTargetRotation*(self: SkeletonModification2DFABRIK; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_use_target_rotation", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

template targetNodepath*(self: SkeletonModification2DFABRIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DFABRIK; value) = self.setTargetNode(value)

template fabrikDataChainLength*(self: SkeletonModification2DFABRIK): untyped = self.getFabrikDataChainLength()
template `fabrikDataChainLength=`*(self: SkeletonModification2DFABRIK; value) = self.setFabrikDataChainLength(value)
