{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodification2d; export gdskeletonmodification2d

expandOnClassImported(SkeletonModification2DTwoBoneIK, SkeletonModification2D)

proc setTargetNode*(self: SkeletonModification2DTwoBoneIK; targetNodepath: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_node", 1348162250)
  methodbind.ptrcall(self, [getPtr targetNodepath], void)

proc getTargetNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIK; minimumDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_minimum_distance", 373806689)
  methodbind.ptrcall(self, [getPtr minimumDistance], void)

proc getTargetMinimumDistance*(self: SkeletonModification2DTwoBoneIK): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_minimum_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIK; maximumDistance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_target_maximum_distance", 373806689)
  methodbind.ptrcall(self, [getPtr maximumDistance], void)

proc getTargetMaximumDistance*(self: SkeletonModification2DTwoBoneIK): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_target_maximum_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFlipBendDirection*(self: SkeletonModification2DTwoBoneIK; flipDirection: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_flip_bend_direction", 2586408642)
  methodbind.ptrcall(self, [getPtr flipDirection], void)

proc getFlipBendDirection*(self: SkeletonModification2DTwoBoneIK): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_flip_bend_direction", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIK; bone2dNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_one_bone2d_node", 1348162250)
  methodbind.ptrcall(self, [getPtr bone2dNode], void)

proc getJointOneBone2dNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_one_bone2d_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIK; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_one_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc getJointOneBoneIdx*(self: SkeletonModification2DTwoBoneIK): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_one_bone_idx", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIK; bone2dNode: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_two_bone2d_node", 1348162250)
  methodbind.ptrcall(self, [getPtr bone2dNode], void)

proc getJointTwoBone2dNode*(self: SkeletonModification2DTwoBoneIK): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_two_bone2d_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIK; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "set_joint_two_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc getJointTwoBoneIdx*(self: SkeletonModification2DTwoBoneIK): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SkeletonModification2DTwoBoneIK, "get_joint_two_bone_idx", 3905245786)
  methodbind.ptrcall(self, [], int32)

template targetNodepath*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetNode()
template `targetNodepath=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetNode(value)

template targetMinimumDistance*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetMinimumDistance()
template `targetMinimumDistance=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetMinimumDistance(value)

template targetMaximumDistance*(self: SkeletonModification2DTwoBoneIK): untyped = self.getTargetMaximumDistance()
template `targetMaximumDistance=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setTargetMaximumDistance(value)

template flipBendDirection*(self: SkeletonModification2DTwoBoneIK): untyped = self.getFlipBendDirection()
template `flipBendDirection=`*(self: SkeletonModification2DTwoBoneIK; value) = self.setFlipBendDirection(value)
