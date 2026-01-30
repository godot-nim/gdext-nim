{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdikmodifier3d; export gdikmodifier3d

expandOnClassImported(ChainIK3D, IKModifier3D)

proc setRootBoneName*(self: ChainIK3D; index: int32; boneName: String): void =
  expandMethodBind(className ChainIK3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getRootBoneName*(self: ChainIK3D; index: int32): String =
  expandMethodBind(className ChainIK3D, "get_root_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setRootBone*(self: ChainIK3D; index: int32; bone: int32): void =
  expandMethodBind(className ChainIK3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getRootBone*(self: ChainIK3D; index: int32): int32 =
  expandMethodBind(className ChainIK3D, "get_root_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setEndBoneName*(self: ChainIK3D; index: int32; boneName: String): void =
  expandMethodBind(className ChainIK3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getEndBoneName*(self: ChainIK3D; index: int32): String =
  expandMethodBind(className ChainIK3D, "get_end_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setEndBone*(self: ChainIK3D; index: int32; bone: int32): void =
  expandMethodBind(className ChainIK3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getEndBone*(self: ChainIK3D; index: int32): int32 =
  expandMethodBind(className ChainIK3D, "get_end_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setExtendEndBone*(self: ChainIK3D; index: int32; enabled: bool): void =
  expandMethodBind(className ChainIK3D, "set_extend_end_bone", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isEndBoneExtended*(self: ChainIK3D; index: int32): bool =
  expandMethodBind(className ChainIK3D, "is_end_bone_extended", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setEndBoneDirection*(self: ChainIK3D; index: int32; boneDirection: SkeletonModifier3D_BoneDirection): void =
  expandMethodBind(className ChainIK3D, "set_end_bone_direction", 2838484201)
  methodbind.ptrcall(self, [getPtr index, getPtr boneDirection])

proc getEndBoneDirection*(self: ChainIK3D; index: int32): SkeletonModifier3D_BoneDirection =
  expandMethodBind(className ChainIK3D, "get_end_bone_direction", 1843036459)
  var ret: encoded SkeletonModifier3D_BoneDirection
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_BoneDirection)

proc setEndBoneLength*(self: ChainIK3D; index: int32; length: Float): void =
  expandMethodBind(className ChainIK3D, "set_end_bone_length", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr length])

proc getEndBoneLength*(self: ChainIK3D; index: int32): Float =
  expandMethodBind(className ChainIK3D, "get_end_bone_length", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc getJointBoneName*(self: ChainIK3D; index: int32; joint: int32): String =
  expandMethodBind(className ChainIK3D, "get_joint_bone_name", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(String)

proc getJointBone*(self: ChainIK3D; index: int32; joint: int32): int32 =
  expandMethodBind(className ChainIK3D, "get_joint_bone", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(int32)

proc getJointCount*(self: ChainIK3D; index: int32): int32 =
  expandMethodBind(className ChainIK3D, "get_joint_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)
