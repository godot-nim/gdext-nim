{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdikmodifier3d; export gdikmodifier3d

expandOnClassImported(TwoBoneIK3D, IKModifier3D)

proc setTargetNode*(self: TwoBoneIK3D; index: int32; targetNode: NodePath): void =
  expandMethodBind(className TwoBoneIK3D, "set_target_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr targetNode])

proc getTargetNode*(self: TwoBoneIK3D; index: int32): NodePath =
  expandMethodBind(className TwoBoneIK3D, "get_target_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setPoleNode*(self: TwoBoneIK3D; index: int32; poleNode: NodePath): void =
  expandMethodBind(className TwoBoneIK3D, "set_pole_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr poleNode])

proc getPoleNode*(self: TwoBoneIK3D; index: int32): NodePath =
  expandMethodBind(className TwoBoneIK3D, "get_pole_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setRootBoneName*(self: TwoBoneIK3D; index: int32; boneName: String): void =
  expandMethodBind(className TwoBoneIK3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getRootBoneName*(self: TwoBoneIK3D; index: int32): String =
  expandMethodBind(className TwoBoneIK3D, "get_root_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setRootBone*(self: TwoBoneIK3D; index: int32; bone: int32): void =
  expandMethodBind(className TwoBoneIK3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getRootBone*(self: TwoBoneIK3D; index: int32): int32 =
  expandMethodBind(className TwoBoneIK3D, "get_root_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setMiddleBoneName*(self: TwoBoneIK3D; index: int32; boneName: String): void =
  expandMethodBind(className TwoBoneIK3D, "set_middle_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getMiddleBoneName*(self: TwoBoneIK3D; index: int32): String =
  expandMethodBind(className TwoBoneIK3D, "get_middle_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setMiddleBone*(self: TwoBoneIK3D; index: int32; bone: int32): void =
  expandMethodBind(className TwoBoneIK3D, "set_middle_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getMiddleBone*(self: TwoBoneIK3D; index: int32): int32 =
  expandMethodBind(className TwoBoneIK3D, "get_middle_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setPoleDirection*(self: TwoBoneIK3D; index: int32; direction: SkeletonModifier3D_SecondaryDirection): void =
  expandMethodBind(className TwoBoneIK3D, "set_pole_direction", 258741388)
  methodbind.ptrcall(self, [getPtr index, getPtr direction])

proc getPoleDirection*(self: TwoBoneIK3D; index: int32): SkeletonModifier3D_SecondaryDirection =
  expandMethodBind(className TwoBoneIK3D, "get_pole_direction", 377522128)
  var ret: encoded SkeletonModifier3D_SecondaryDirection
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_SecondaryDirection)

proc setPoleDirectionVector*(self: TwoBoneIK3D; index: int32; vector: Vector3): void =
  expandMethodBind(className TwoBoneIK3D, "set_pole_direction_vector", 1530502735)
  methodbind.ptrcall(self, [getPtr index, getPtr vector])

proc getPoleDirectionVector*(self: TwoBoneIK3D; index: int32): Vector3 =
  expandMethodBind(className TwoBoneIK3D, "get_pole_direction_vector", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3)

proc setEndBoneName*(self: TwoBoneIK3D; index: int32; boneName: String): void =
  expandMethodBind(className TwoBoneIK3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getEndBoneName*(self: TwoBoneIK3D; index: int32): String =
  expandMethodBind(className TwoBoneIK3D, "get_end_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setEndBone*(self: TwoBoneIK3D; index: int32; bone: int32): void =
  expandMethodBind(className TwoBoneIK3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getEndBone*(self: TwoBoneIK3D; index: int32): int32 =
  expandMethodBind(className TwoBoneIK3D, "get_end_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setUseVirtualEnd*(self: TwoBoneIK3D; index: int32; enabled: bool): void =
  expandMethodBind(className TwoBoneIK3D, "set_use_virtual_end", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isUsingVirtualEnd*(self: TwoBoneIK3D; index: int32): bool =
  expandMethodBind(className TwoBoneIK3D, "is_using_virtual_end", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setExtendEndBone*(self: TwoBoneIK3D; index: int32; enabled: bool): void =
  expandMethodBind(className TwoBoneIK3D, "set_extend_end_bone", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isEndBoneExtended*(self: TwoBoneIK3D; index: int32): bool =
  expandMethodBind(className TwoBoneIK3D, "is_end_bone_extended", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setEndBoneDirection*(self: TwoBoneIK3D; index: int32; boneDirection: SkeletonModifier3D_BoneDirection): void =
  expandMethodBind(className TwoBoneIK3D, "set_end_bone_direction", 2838484201)
  methodbind.ptrcall(self, [getPtr index, getPtr boneDirection])

proc getEndBoneDirection*(self: TwoBoneIK3D; index: int32): SkeletonModifier3D_BoneDirection =
  expandMethodBind(className TwoBoneIK3D, "get_end_bone_direction", 1843036459)
  var ret: encoded SkeletonModifier3D_BoneDirection
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_BoneDirection)

proc setEndBoneLength*(self: TwoBoneIK3D; index: int32; length: Float): void =
  expandMethodBind(className TwoBoneIK3D, "set_end_bone_length", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr length])

proc getEndBoneLength*(self: TwoBoneIK3D; index: int32): Float =
  expandMethodBind(className TwoBoneIK3D, "get_end_bone_length", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

template settingCount*(self: TwoBoneIK3D): untyped = self.getSettingCount()
template `settingCount=`*(self: TwoBoneIK3D; value) = self.setSettingCount(value)
