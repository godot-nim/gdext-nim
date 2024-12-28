{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setHand*(self: OpenXRHand; hand: OpenXRHand_Hands): void =
  expandMethodBind(className OpenXRHand, "set_hand", 1849328560)
  methodbind.ptrcall(self, [getPtr hand])

proc getHand*(self: OpenXRHand): OpenXRHand_Hands =
  expandMethodBind(className OpenXRHand, "get_hand", 2850644561)
  var ret: encoded OpenXRHand_Hands
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRHand_Hands)

proc setHandSkeleton*(self: OpenXRHand; handSkeleton: NodePath): void =
  expandMethodBind(className OpenXRHand, "set_hand_skeleton", 1348162250)
  methodbind.ptrcall(self, [getPtr handSkeleton])

proc getHandSkeleton*(self: OpenXRHand): NodePath =
  expandMethodBind(className OpenXRHand, "get_hand_skeleton", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setMotionRange*(self: OpenXRHand; motionRange: OpenXRHand_MotionRange): void =
  expandMethodBind(className OpenXRHand, "set_motion_range", 3326516003)
  methodbind.ptrcall(self, [getPtr motionRange])

proc getMotionRange*(self: OpenXRHand): OpenXRHand_MotionRange =
  expandMethodBind(className OpenXRHand, "get_motion_range", 2191822314)
  var ret: encoded OpenXRHand_MotionRange
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRHand_MotionRange)

proc setSkeletonRig*(self: OpenXRHand; skeletonRig: OpenXRHand_SkeletonRig): void =
  expandMethodBind(className OpenXRHand, "set_skeleton_rig", 1528072213)
  methodbind.ptrcall(self, [getPtr skeletonRig])

proc getSkeletonRig*(self: OpenXRHand): OpenXRHand_SkeletonRig =
  expandMethodBind(className OpenXRHand, "get_skeleton_rig", 968409338)
  var ret: encoded OpenXRHand_SkeletonRig
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRHand_SkeletonRig)

proc setBoneUpdate*(self: OpenXRHand; boneUpdate: OpenXRHand_BoneUpdate): void =
  expandMethodBind(className OpenXRHand, "set_bone_update", 3144625444)
  methodbind.ptrcall(self, [getPtr boneUpdate])

proc getBoneUpdate*(self: OpenXRHand): OpenXRHand_BoneUpdate =
  expandMethodBind(className OpenXRHand, "get_bone_update", 1310695248)
  var ret: encoded OpenXRHand_BoneUpdate
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRHand_BoneUpdate)

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

const OpenXRHand_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRHand]): Table[string, string] = OpenXRHand_vmap