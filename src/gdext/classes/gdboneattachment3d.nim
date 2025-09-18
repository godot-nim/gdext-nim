{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(BoneAttachment3D, Node3D)

proc getSkeleton*(self: BoneAttachment3D): Skeleton3D =
  expandMethodBind(className BoneAttachment3D, "get_skeleton", 1814733083)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton3D)

proc setBoneName*(self: BoneAttachment3D; boneName: String): void =
  expandMethodBind(className BoneAttachment3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName])

proc getBoneName*(self: BoneAttachment3D): String =
  expandMethodBind(className BoneAttachment3D, "get_bone_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setBoneIdx*(self: BoneAttachment3D; boneIdx: int32): void =
  expandMethodBind(className BoneAttachment3D, "set_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx])

proc getBoneIdx*(self: BoneAttachment3D): int32 =
  expandMethodBind(className BoneAttachment3D, "get_bone_idx", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc onSkeletonUpdate*(self: BoneAttachment3D): void =
  expandMethodBind(className BoneAttachment3D, "on_skeleton_update", 3218959716)
  methodbind.ptrcall(self, [])

proc setOverridePose*(self: BoneAttachment3D; overridePose: bool): void =
  expandMethodBind(className BoneAttachment3D, "set_override_pose", 2586408642)
  methodbind.ptrcall(self, [getPtr overridePose])

proc getOverridePose*(self: BoneAttachment3D): bool =
  expandMethodBind(className BoneAttachment3D, "get_override_pose", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseExternalSkeleton*(self: BoneAttachment3D; useExternalSkeleton: bool): void =
  expandMethodBind(className BoneAttachment3D, "set_use_external_skeleton", 2586408642)
  methodbind.ptrcall(self, [getPtr useExternalSkeleton])

proc getUseExternalSkeleton*(self: BoneAttachment3D): bool =
  expandMethodBind(className BoneAttachment3D, "get_use_external_skeleton", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setExternalSkeleton*(self: BoneAttachment3D; externalSkeleton: NodePath): void =
  expandMethodBind(className BoneAttachment3D, "set_external_skeleton", 1348162250)
  methodbind.ptrcall(self, [getPtr externalSkeleton])

proc getExternalSkeleton*(self: BoneAttachment3D): NodePath =
  expandMethodBind(className BoneAttachment3D, "get_external_skeleton", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

template boneName*(self: BoneAttachment3D): untyped = self.getBoneName()
template `boneName=`*(self: BoneAttachment3D; value) = self.setBoneName(value)

template boneIdx*(self: BoneAttachment3D): untyped = self.getBoneIdx()
template `boneIdx=`*(self: BoneAttachment3D; value) = self.setBoneIdx(value)

template overridePose*(self: BoneAttachment3D): untyped = self.getOverridePose()
template `overridePose=`*(self: BoneAttachment3D; value) = self.setOverridePose(value)

template useExternalSkeleton*(self: BoneAttachment3D): untyped = self.getUseExternalSkeleton()
template `useExternalSkeleton=`*(self: BoneAttachment3D; value) = self.setUseExternalSkeleton(value)

template externalSkeleton*(self: BoneAttachment3D): untyped = self.getExternalSkeleton()
template `externalSkeleton=`*(self: BoneAttachment3D; value) = self.setExternalSkeleton(value)
