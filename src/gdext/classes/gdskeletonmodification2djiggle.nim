{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

proc setTargetNode*(self: SkeletonModification2DJiggle; targetNodepath: NodePath): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_target_node", 1348162250)
  var `?param` = [getPtr targetNodepath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetNode*(self: SkeletonModification2DJiggle): NodePath =
  expandMethodBind(className SkeletonModification2DJiggle, "get_target_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setJiggleDataChainLength*(self: SkeletonModification2DJiggle; length: int32): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_data_chain_length", 1286410249)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleDataChainLength*(self: SkeletonModification2DJiggle): int32 =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_data_chain_length", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setStiffness*(self: SkeletonModification2DJiggle; stiffness: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_stiffness", 373806689)
  var `?param` = [getPtr stiffness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStiffness*(self: SkeletonModification2DJiggle): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_stiffness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMass*(self: SkeletonModification2DJiggle; mass: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_mass", 373806689)
  var `?param` = [getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMass*(self: SkeletonModification2DJiggle): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDamping*(self: SkeletonModification2DJiggle; damping: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_damping", 373806689)
  var `?param` = [getPtr damping]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDamping*(self: SkeletonModification2DJiggle): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_damping", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseGravity*(self: SkeletonModification2DJiggle; useGravity: bool): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_use_gravity", 2586408642)
  var `?param` = [getPtr useGravity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseGravity*(self: SkeletonModification2DJiggle): bool =
  expandMethodBind(className SkeletonModification2DJiggle, "get_use_gravity", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGravity*(self: SkeletonModification2DJiggle; gravity: Vector2): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_gravity", 743155724)
  var `?param` = [getPtr gravity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGravity*(self: SkeletonModification2DJiggle): Vector2 =
  expandMethodBind(className SkeletonModification2DJiggle, "get_gravity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setUseColliders*(self: SkeletonModification2DJiggle; useColliders: bool): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_use_colliders", 2586408642)
  var `?param` = [getPtr useColliders]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseColliders*(self: SkeletonModification2DJiggle): bool =
  expandMethodBind(className SkeletonModification2DJiggle, "get_use_colliders", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollisionMask*(self: SkeletonModification2DJiggle; collisionMask: int32): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: SkeletonModification2DJiggle): int32 =
  expandMethodBind(className SkeletonModification2DJiggle, "get_collision_mask", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setJiggleJointBone2dNode*(self: SkeletonModification2DJiggle; jointIdx: int32; bone2dNode: NodePath): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_bone2d_node", 2761262315)
  var `?param` = [getPtr jointIdx, getPtr bone2dNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointBone2dNode*(self: SkeletonModification2DJiggle; jointIdx: int32): NodePath =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_bone2d_node", 408788394)
  var `?param` = [getPtr jointIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc setJiggleJointBoneIndex*(self: SkeletonModification2DJiggle; jointIdx: int32; boneIdx: int32): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_bone_index", 3937882851)
  var `?param` = [getPtr jointIdx, getPtr boneIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointBoneIndex*(self: SkeletonModification2DJiggle; jointIdx: int32): int32 =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_bone_index", 923996154)
  var `?param` = [getPtr jointIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setJiggleJointOverride*(self: SkeletonModification2DJiggle; jointIdx: int32; override: bool): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_override", 300928843)
  var `?param` = [getPtr jointIdx, getPtr override]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointOverride*(self: SkeletonModification2DJiggle; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_override", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setJiggleJointStiffness*(self: SkeletonModification2DJiggle; jointIdx: int32; stiffness: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_stiffness", 1602489585)
  var `?param` = [getPtr jointIdx, getPtr stiffness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointStiffness*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_stiffness", 2339986948)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setJiggleJointMass*(self: SkeletonModification2DJiggle; jointIdx: int32; mass: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_mass", 1602489585)
  var `?param` = [getPtr jointIdx, getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointMass*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_mass", 2339986948)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setJiggleJointDamping*(self: SkeletonModification2DJiggle; jointIdx: int32; damping: Float): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_damping", 1602489585)
  var `?param` = [getPtr jointIdx, getPtr damping]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointDamping*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_damping", 2339986948)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setJiggleJointUseGravity*(self: SkeletonModification2DJiggle; jointIdx: int32; useGravity: bool): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_use_gravity", 300928843)
  var `?param` = [getPtr jointIdx, getPtr useGravity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointUseGravity*(self: SkeletonModification2DJiggle; jointIdx: int32): bool =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_use_gravity", 1116898809)
  var `?param` = [getPtr jointIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setJiggleJointGravity*(self: SkeletonModification2DJiggle; jointIdx: int32; gravity: Vector2): void =
  expandMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_gravity", 163021252)
  var `?param` = [getPtr jointIdx, getPtr gravity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getJiggleJointGravity*(self: SkeletonModification2DJiggle; jointIdx: int32): Vector2 =
  expandMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_gravity", 2299179447)
  var `?param` = [getPtr jointIdx]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

template targetNodepath*(self: SkeletonModification2DJiggle): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DJiggle; value) = self.setTargetNode(value)

template jiggleDataChainLength*(self: SkeletonModification2DJiggle): untyped = self.getJiggleDataChainLength()
template `jiggleDataChainLength=`*(self: SkeletonModification2DJiggle; value) = self.setJiggleDataChainLength(value)

template stiffness*(self: SkeletonModification2DJiggle): untyped = self.getStiffness()
template `stiffness=`*(self: SkeletonModification2DJiggle; value) = self.setStiffness(value)

template mass*(self: SkeletonModification2DJiggle): untyped = self.getMass()
template `mass=`*(self: SkeletonModification2DJiggle; value) = self.setMass(value)

template damping*(self: SkeletonModification2DJiggle): untyped = self.getDamping()
template `damping=`*(self: SkeletonModification2DJiggle; value) = self.setDamping(value)

template useGravity*(self: SkeletonModification2DJiggle): untyped = self.getUseGravity()
template `useGravity=`*(self: SkeletonModification2DJiggle; value) = self.setUseGravity(value)

template gravity*(self: SkeletonModification2DJiggle): untyped = self.getGravity()
template `gravity=`*(self: SkeletonModification2DJiggle; value) = self.setGravity(value)

const SkeletonModification2DJiggle_vmap =
  SkeletonModification2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SkeletonModification2DJiggle]): Table[string, string] = SkeletonModification2DJiggle_vmap