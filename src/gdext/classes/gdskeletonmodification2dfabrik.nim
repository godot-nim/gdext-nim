{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2Dfabrik; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_target_node", 1348162250)
  var `?param` = [getPtr targetNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonModification2Dfabrik): NodePath =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setFabrikDataChainLength*(self: SkeletonModification2Dfabrik; length: int32): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_fabrik_data_chain_length", 1286410249)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFabrikDataChainLength*(self: SkeletonModification2Dfabrik): int32 =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_fabrik_data_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFabrikJointBone2dNode*(self: SkeletonModification2Dfabrik; jointIdx: int32; bone2dNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_fabrik_joint_bone2d_node", 2761262315)
  var `?param` = [getPtr jointIdx, getPtr bone2dNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFabrikJointBone2dNode*(self: SkeletonModification2Dfabrik; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_fabrik_joint_bone2d_node", 408788394)
  var `?param` = [getPtr jointIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc setFabrikJointBoneIndex*(self: SkeletonModification2Dfabrik; jointIdx: int32; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_fabrik_joint_bone_index", 3937882851)
  var `?param` = [getPtr jointIdx, getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFabrikJointBoneIndex*(self: SkeletonModification2Dfabrik; jointIdx: int32): int32 =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_fabrik_joint_bone_index", 923996154)
  var `?param` = [getPtr jointIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setFabrikJointMagnetPosition*(self: SkeletonModification2Dfabrik; jointIdx: int32; magnetPosition: Vector2): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_fabrik_joint_magnet_position", 163021252)
  var `?param` = [getPtr jointIdx, getPtr magnetPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFabrikJointMagnetPosition*(self: SkeletonModification2Dfabrik; jointIdx: int32): Vector2 =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_fabrik_joint_magnet_position", 2299179447)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setFabrikJointUseTargetRotation*(self: SkeletonModification2Dfabrik; jointIdx: int32; useTargetRotation: bool): void =
  expandMethodBind(className SkeletonModification2Dfabrik, "set_fabrik_joint_use_target_rotation", 300928843)
  var `?param` = [getPtr jointIdx, getPtr useTargetRotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFabrikJointUseTargetRotation*(self: SkeletonModification2Dfabrik; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2Dfabrik, "get_fabrik_joint_use_target_rotation", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template targetNodepath*(self: SkeletonModification2Dfabrik): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2Dfabrik; value) = self.setTargetNode(value)

template fabrikDataChainLength*(self: SkeletonModification2Dfabrik): untyped = self.getFabrikDataChainLength()
template `fabrikDataChainLength=`*(self: SkeletonModification2Dfabrik; value) = self.setFabrikDataChainLength(value)

const SkeletonModification2Dfabrik_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2Dfabrik]): Table[string, string] = SkeletonModification2Dfabrik_vmap