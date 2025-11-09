{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DJiggle, SkeletonModification2D)

proc setTargetNode*(self: SkeletonModification2DJiggle; targetNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath], void)

proc getTargetNode*(self: SkeletonModification2DJiggle): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setJiggleDataChainLength*(self: SkeletonModification2DJiggle; length: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_data_chain_length", 1286410249)
  methodbind.ptrcall(self, [getPtr length], void)

proc getJiggleDataChainLength*(self: SkeletonModification2DJiggle): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_data_chain_length", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setStiffness*(self: SkeletonModification2DJiggle; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_stiffness", 373806689)
  methodbind.ptrcall(self, [getPtr stiffness], void)

proc getStiffness*(self: SkeletonModification2DJiggle): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_stiffness", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMass*(self: SkeletonModification2DJiggle; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass], void)

proc getMass*(self: SkeletonModification2DJiggle): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_mass", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDamping*(self: SkeletonModification2DJiggle; damping: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_damping", 373806689)
  methodbind.ptrcall(self, [getPtr damping], void)

proc getDamping*(self: SkeletonModification2DJiggle): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_damping", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseGravity*(self: SkeletonModification2DJiggle; useGravity: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_use_gravity", 2586408642)
  methodbind.ptrcall(self, [getPtr useGravity], void)

proc getUseGravity*(self: SkeletonModification2DJiggle): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_use_gravity", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGravity*(self: SkeletonModification2DJiggle; gravity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_gravity", 743155724)
  methodbind.ptrcall(self, [getPtr gravity], void)

proc getGravity*(self: SkeletonModification2DJiggle): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_gravity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setUseColliders*(self: SkeletonModification2DJiggle; useColliders: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_use_colliders", 2586408642)
  methodbind.ptrcall(self, [getPtr useColliders], void)

proc getUseColliders*(self: SkeletonModification2DJiggle): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_use_colliders", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollisionMask*(self: SkeletonModification2DJiggle; collisionMask: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: SkeletonModification2DJiggle): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setJiggleJointBone2dNode*(self: SkeletonModification2DJiggle; jointIdx: int32; bone2dNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_bone2d_node", 2761262315)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr bone2dNode], void)

proc getJiggleJointBone2dNode*(self: SkeletonModification2DJiggle; jointIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_bone2d_node", 408788394)
  methodbind.ptrcall(self, [getPtr jointIdx], NodePath)

proc setJiggleJointBoneIndex*(self: SkeletonModification2DJiggle; jointIdx: int32; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_bone_index", 3937882851)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr boneIdx], void)

proc getJiggleJointBoneIndex*(self: SkeletonModification2DJiggle; jointIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_bone_index", 923996154)
  methodbind.ptrcall(self, [getPtr jointIdx], int32)

proc setJiggleJointOverride*(self: SkeletonModification2DJiggle; jointIdx: int32; override: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_override", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr override], void)

proc getJiggleJointOverride*(self: SkeletonModification2DJiggle; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_override", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

proc setJiggleJointStiffness*(self: SkeletonModification2DJiggle; jointIdx: int32; stiffness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_stiffness", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr stiffness], void)

proc getJiggleJointStiffness*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_stiffness", 2339986948)
  methodbind.ptrcall(self, [getPtr jointIdx], Float)

proc setJiggleJointMass*(self: SkeletonModification2DJiggle; jointIdx: int32; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_mass", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr mass], void)

proc getJiggleJointMass*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_mass", 2339986948)
  methodbind.ptrcall(self, [getPtr jointIdx], Float)

proc setJiggleJointDamping*(self: SkeletonModification2DJiggle; jointIdx: int32; damping: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_damping", 1602489585)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr damping], void)

proc getJiggleJointDamping*(self: SkeletonModification2DJiggle; jointIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_damping", 2339986948)
  methodbind.ptrcall(self, [getPtr jointIdx], Float)

proc setJiggleJointUseGravity*(self: SkeletonModification2DJiggle; jointIdx: int32; useGravity: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_use_gravity", 300928843)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr useGravity], void)

proc getJiggleJointUseGravity*(self: SkeletonModification2DJiggle; jointIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_use_gravity", 1116898809)
  methodbind.ptrcall(self, [getPtr jointIdx], bool)

proc setJiggleJointGravity*(self: SkeletonModification2DJiggle; jointIdx: int32; gravity: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "set_jiggle_joint_gravity", 163021252)
  methodbind.ptrcall(self, [getPtr jointIdx, getPtr gravity], void)

proc getJiggleJointGravity*(self: SkeletonModification2DJiggle; jointIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DJiggle, "get_jiggle_joint_gravity", 2299179447)
  methodbind.ptrcall(self, [getPtr jointIdx], Vector2)

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
