{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setHand*(self: OpenXrHand; hand: OpenXrHand_Hands): void =
  expandMethodBind(className OpenXrHand, "set_hand", 1849328560)
  var `?param` = [getPtr hand]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHand*(self: OpenXrHand): OpenXrHand_Hands =
  expandMethodBind(className OpenXrHand, "get_hand", 2850644561)
  var ret: encoded OpenXrHand_Hands
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrHand_Hands)

proc setHandSkeleton*(self: OpenXrHand; handSkeleton: NodePath): void =
  expandMethodBind(className OpenXrHand, "set_hand_skeleton", 1348162250)
  var `?param` = [getPtr handSkeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandSkeleton*(self: OpenXrHand): NodePath =
  expandMethodBind(className OpenXrHand, "get_hand_skeleton", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setMotionRange*(self: OpenXrHand; motionRange: OpenXrHand_MotionRange): void =
  expandMethodBind(className OpenXrHand, "set_motion_range", 3326516003)
  var `?param` = [getPtr motionRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionRange*(self: OpenXrHand): OpenXrHand_MotionRange =
  expandMethodBind(className OpenXrHand, "get_motion_range", 2191822314)
  var ret: encoded OpenXrHand_MotionRange
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrHand_MotionRange)

proc setSkeletonRig*(self: OpenXrHand; skeletonRig: OpenXrHand_SkeletonRig): void =
  expandMethodBind(className OpenXrHand, "set_skeleton_rig", 1528072213)
  var `?param` = [getPtr skeletonRig]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeletonRig*(self: OpenXrHand): OpenXrHand_SkeletonRig =
  expandMethodBind(className OpenXrHand, "get_skeleton_rig", 968409338)
  var ret: encoded OpenXrHand_SkeletonRig
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrHand_SkeletonRig)

proc setBoneUpdate*(self: OpenXrHand; boneUpdate: OpenXrHand_BoneUpdate): void =
  expandMethodBind(className OpenXrHand, "set_bone_update", 3144625444)
  var `?param` = [getPtr boneUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneUpdate*(self: OpenXrHand): OpenXrHand_BoneUpdate =
  expandMethodBind(className OpenXrHand, "get_bone_update", 1310695248)
  var ret: encoded OpenXrHand_BoneUpdate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrHand_BoneUpdate)

template hand*(self: OpenXrHand): untyped = self.getHand()
template `hand=`*(self: OpenXrHand; value) = self.setHand(value)

template motionRange*(self: OpenXrHand): untyped = self.getMotionRange()
template `motionRange=`*(self: OpenXrHand; value) = self.setMotionRange(value)

template handSkeleton*(self: OpenXrHand): untyped = self.getHandSkeleton()
template `handSkeleton=`*(self: OpenXrHand; value) = self.setHandSkeleton(value)

template skeletonRig*(self: OpenXrHand): untyped = self.getSkeletonRig()
template `skeletonRig=`*(self: OpenXrHand; value) = self.setSkeletonRig(value)

template boneUpdate*(self: OpenXrHand): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: OpenXrHand; value) = self.setBoneUpdate(value)

const OpenXrHand_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrHand]): Table[string, string] = OpenXrHand_vmap