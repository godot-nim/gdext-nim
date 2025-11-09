{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRHand, Node3D)

proc setHand*(self: OpenXRHand; hand: OpenXRHand_Hands): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "set_hand", 1849328560)
  methodbind.ptrcall(self, [getPtr hand], void)

proc getHand*(self: OpenXRHand): OpenXRHand_Hands =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "get_hand", 2850644561)
  methodbind.ptrcall(self, [], OpenXRHand_Hands)

proc setHandSkeleton*(self: OpenXRHand; handSkeleton: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "set_hand_skeleton", 1348162250)
  methodbind.ptrcall(self, [getPtr handSkeleton], void)

proc getHandSkeleton*(self: OpenXRHand): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "get_hand_skeleton", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setMotionRange*(self: OpenXRHand; motionRange: OpenXRHand_MotionRange): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "set_motion_range", 3326516003)
  methodbind.ptrcall(self, [getPtr motionRange], void)

proc getMotionRange*(self: OpenXRHand): OpenXRHand_MotionRange =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "get_motion_range", 2191822314)
  methodbind.ptrcall(self, [], OpenXRHand_MotionRange)

proc setSkeletonRig*(self: OpenXRHand; skeletonRig: OpenXRHand_SkeletonRig): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "set_skeleton_rig", 1528072213)
  methodbind.ptrcall(self, [getPtr skeletonRig], void)

proc getSkeletonRig*(self: OpenXRHand): OpenXRHand_SkeletonRig =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "get_skeleton_rig", 968409338)
  methodbind.ptrcall(self, [], OpenXRHand_SkeletonRig)

proc setBoneUpdate*(self: OpenXRHand; boneUpdate: OpenXRHand_BoneUpdate): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "set_bone_update", 3144625444)
  methodbind.ptrcall(self, [getPtr boneUpdate], void)

proc getBoneUpdate*(self: OpenXRHand): OpenXRHand_BoneUpdate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRHand, "get_bone_update", 1310695248)
  methodbind.ptrcall(self, [], OpenXRHand_BoneUpdate)

template hand*(self: OpenXRHand): untyped = self.getHand()
template `hand=`*(self: OpenXRHand; value) = self.setHand(value)

template motionRange*(self: OpenXRHand): untyped = self.getMotionRange()
template `motionRange=`*(self: OpenXRHand; value) = self.setMotionRange(value)

template handSkeleton*(self: OpenXRHand): untyped = self.getHandSkeleton()
template `handSkeleton=`*(self: OpenXRHand; value) = self.setHandSkeleton(value)

template skeletonRig*(self: OpenXRHand): untyped = self.getSkeletonRig()
template `skeletonRig=`*(self: OpenXRHand; value) = self.setSkeletonRig(value)

template boneUpdate*(self: OpenXRHand): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: OpenXRHand; value) = self.setBoneUpdate(value)
