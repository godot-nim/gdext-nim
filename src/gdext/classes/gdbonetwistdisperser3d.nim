{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(BoneTwistDisperser3D, SkeletonModifier3D)

proc setSettingCount*(self: BoneTwistDisperser3D; count: int32): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getSettingCount*(self: BoneTwistDisperser3D): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_setting_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clearSettings*(self: BoneTwistDisperser3D): void =
  expandMethodBind(className BoneTwistDisperser3D, "clear_settings", 3218959716)
  methodbind.ptrcall(self, [])

proc setMutableBoneAxes*(self: BoneTwistDisperser3D; enabled: bool): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_mutable_bone_axes", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc areBoneAxesMutable*(self: BoneTwistDisperser3D): bool =
  expandMethodBind(className BoneTwistDisperser3D, "are_bone_axes_mutable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRootBoneName*(self: BoneTwistDisperser3D; index: int32; boneName: String): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getRootBoneName*(self: BoneTwistDisperser3D; index: int32): String =
  expandMethodBind(className BoneTwistDisperser3D, "get_root_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setRootBone*(self: BoneTwistDisperser3D; index: int32; bone: int32): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getRootBone*(self: BoneTwistDisperser3D; index: int32): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_root_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setEndBoneName*(self: BoneTwistDisperser3D; index: int32; boneName: String): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getEndBoneName*(self: BoneTwistDisperser3D; index: int32): String =
  expandMethodBind(className BoneTwistDisperser3D, "get_end_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setEndBone*(self: BoneTwistDisperser3D; index: int32; bone: int32): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getEndBone*(self: BoneTwistDisperser3D; index: int32): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_end_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc getReferenceBoneName*(self: BoneTwistDisperser3D; index: int32): String =
  expandMethodBind(className BoneTwistDisperser3D, "get_reference_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getReferenceBone*(self: BoneTwistDisperser3D; index: int32): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_reference_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setExtendEndBone*(self: BoneTwistDisperser3D; index: int32; enabled: bool): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_extend_end_bone", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isEndBoneExtended*(self: BoneTwistDisperser3D; index: int32): bool =
  expandMethodBind(className BoneTwistDisperser3D, "is_end_bone_extended", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setEndBoneDirection*(self: BoneTwistDisperser3D; index: int32; boneDirection: SkeletonModifier3D_BoneDirection): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_end_bone_direction", 2838484201)
  methodbind.ptrcall(self, [getPtr index, getPtr boneDirection])

proc getEndBoneDirection*(self: BoneTwistDisperser3D; index: int32): SkeletonModifier3D_BoneDirection =
  expandMethodBind(className BoneTwistDisperser3D, "get_end_bone_direction", 1843036459)
  var ret: encoded SkeletonModifier3D_BoneDirection
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_BoneDirection)

proc setTwistFromRest*(self: BoneTwistDisperser3D; index: int32; enabled: bool): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_twist_from_rest", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isTwistFromRest*(self: BoneTwistDisperser3D; index: int32): bool =
  expandMethodBind(className BoneTwistDisperser3D, "is_twist_from_rest", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setTwistFrom*(self: BoneTwistDisperser3D; index: int32; `from`: Quaternion): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_twist_from", 2823819782)
  methodbind.ptrcall(self, [getPtr index, getPtr `from`])

proc getTwistFrom*(self: BoneTwistDisperser3D; index: int32): Quaternion =
  expandMethodBind(className BoneTwistDisperser3D, "get_twist_from", 476865136)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Quaternion)

proc setDisperseMode*(self: BoneTwistDisperser3D; index: int32; disperseMode: BoneTwistDisperser3D_DisperseMode): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_disperse_mode", 2954194337)
  methodbind.ptrcall(self, [getPtr index, getPtr disperseMode])

proc getDisperseMode*(self: BoneTwistDisperser3D; index: int32): BoneTwistDisperser3D_DisperseMode =
  expandMethodBind(className BoneTwistDisperser3D, "get_disperse_mode", 1326397005)
  var ret: encoded BoneTwistDisperser3D_DisperseMode
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(BoneTwistDisperser3D_DisperseMode)

proc setWeightPosition*(self: BoneTwistDisperser3D; index: int32; weightPosition: Float): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_weight_position", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr weightPosition])

proc getWeightPosition*(self: BoneTwistDisperser3D; index: int32): Float =
  expandMethodBind(className BoneTwistDisperser3D, "get_weight_position", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setDampingCurve*(self: BoneTwistDisperser3D; index: int32; curve: gdref Curve): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_damping_curve", 1447180063)
  methodbind.ptrcall(self, [getPtr index, getPtr curve])

proc getDampingCurve*(self: BoneTwistDisperser3D; index: int32): gdref Curve =
  expandMethodBind(className BoneTwistDisperser3D, "get_damping_curve", 747537754)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Curve)

proc getJointBoneName*(self: BoneTwistDisperser3D; index: int32; joint: int32): String =
  expandMethodBind(className BoneTwistDisperser3D, "get_joint_bone_name", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(String)

proc getJointBone*(self: BoneTwistDisperser3D; index: int32; joint: int32): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_joint_bone", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(int32)

proc getJointTwistAmount*(self: BoneTwistDisperser3D; index: int32; joint: int32): Float =
  expandMethodBind(className BoneTwistDisperser3D, "get_joint_twist_amount", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc setJointTwistAmount*(self: BoneTwistDisperser3D; index: int32; joint: int32; twistAmount: Float): void =
  expandMethodBind(className BoneTwistDisperser3D, "set_joint_twist_amount", 3506521499)
  methodbind.ptrcall(self, [getPtr index, getPtr joint, getPtr twistAmount])

proc getJointCount*(self: BoneTwistDisperser3D; index: int32): int32 =
  expandMethodBind(className BoneTwistDisperser3D, "get_joint_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

template mutableBoneAxes*(self: BoneTwistDisperser3D): untyped = self.areBoneAxesMutable()
template `mutableBoneAxes=`*(self: BoneTwistDisperser3D; value) = self.setMutableBoneAxes(value)

template settingCount*(self: BoneTwistDisperser3D): untyped = self.getSettingCount()
template `settingCount=`*(self: BoneTwistDisperser3D; value) = self.setSettingCount(value)
