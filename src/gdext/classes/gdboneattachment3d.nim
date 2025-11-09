{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(BoneAttachment3D, Node3D)

proc getSkeleton*(self: BoneAttachment3D): Skeleton3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_skeleton", 1814733083)
  methodbind.ptrcall(self, [], Skeleton3D)

proc setBoneName*(self: BoneAttachment3D; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "set_bone_name", 83702148)
  methodbind.ptrcall(self, [getPtr boneName], void)

proc getBoneName*(self: BoneAttachment3D): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_bone_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBoneIdx*(self: BoneAttachment3D; boneIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "set_bone_idx", 1286410249)
  methodbind.ptrcall(self, [getPtr boneIdx], void)

proc getBoneIdx*(self: BoneAttachment3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_bone_idx", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc onSkeletonUpdate*(self: BoneAttachment3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "on_skeleton_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setOverridePose*(self: BoneAttachment3D; overridePose: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "set_override_pose", 2586408642)
  methodbind.ptrcall(self, [getPtr overridePose], void)

proc getOverridePose*(self: BoneAttachment3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_override_pose", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseExternalSkeleton*(self: BoneAttachment3D; useExternalSkeleton: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "set_use_external_skeleton", 2586408642)
  methodbind.ptrcall(self, [getPtr useExternalSkeleton], void)

proc getUseExternalSkeleton*(self: BoneAttachment3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_use_external_skeleton", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setExternalSkeleton*(self: BoneAttachment3D; externalSkeleton: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "set_external_skeleton", 1348162250)
  methodbind.ptrcall(self, [getPtr externalSkeleton], void)

proc getExternalSkeleton*(self: BoneAttachment3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneAttachment3D, "get_external_skeleton", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

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
