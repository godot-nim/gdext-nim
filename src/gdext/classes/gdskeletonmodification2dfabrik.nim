{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DFABRIK; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath])

proc getTargetNode*(self: SkeletonModification2DFABRIK): NodePath =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setFabrikDataChainLength*(self: SkeletonModification2DFABRIK; length: int32): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_data_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length])

proc getFabrikDataChainLength*(self: SkeletonModification2DFABRIK): int32 =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_data_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFabrikJointBone2dNode*(self: SkeletonModification2DFABRIK; jointIdx: int32; bone2dNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_bone2d_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr bone2dNodepath])

proc getFabrikJointBone2dNode*(self: SkeletonModification2DFABRIK; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_bone2d_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(NodePath)

proc setFabrikJointBoneIndex*(self: SkeletonModification2DFABRIK; jointIdx: int32; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_bone_index", 3937882851)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr boneIdx])

proc getFabrikJointBoneIndex*(self: SkeletonModification2DFABRIK; jointIdx: int32): int32 =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_bone_index", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(int32)

proc setFabrikJointMagnetPosition*(self: SkeletonModification2DFABRIK; jointIdx: int32; magnetPosition: Vector2): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_magnet_position", 163021252)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr magnetPosition])

proc getFabrikJointMagnetPosition*(self: SkeletonModification2DFABRIK; jointIdx: int32): Vector2 =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_magnet_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(Vector2)

proc setFabrikJointUseTargetRotation*(self: SkeletonModification2DFABRIK; jointIdx: int32; useTargetRotation: bool): void =
  expandMethodBind(className SkeletonModification2DFABRIK, "set_fabrik_joint_use_target_rotation", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr useTargetRotation])

proc getFabrikJointUseTargetRotation*(self: SkeletonModification2DFABRIK; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DFABRIK, "get_fabrik_joint_use_target_rotation", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr jointIdx], addr ret)
  (addr ret).decode_result(bool)

template targetNodepath*(self: SkeletonModification2DFABRIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DFABRIK; value) = self.setTargetNode(value)

template fabrikDataChainLength*(self: SkeletonModification2DFABRIK): untyped = self.getFabrikDataChainLength()
template `fabrikDataChainLength=`*(self: SkeletonModification2DFABRIK; value) = self.setFabrikDataChainLength(value)

const SkeletonModification2DFABRIK_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DFABRIK]): Table[string, string] = SkeletonModification2DFABRIK_vmap