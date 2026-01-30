{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(BoneConstraint3D, SkeletonModifier3D)

proc setAmount*(self: BoneConstraint3D; index: int32; amount: Float): void =
  expandMethodBind(className BoneConstraint3D, "set_amount", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr amount])

proc getAmount*(self: BoneConstraint3D; index: int32): Float =
  expandMethodBind(className BoneConstraint3D, "get_amount", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setApplyBoneName*(self: BoneConstraint3D; index: int32; boneName: String): void =
  expandMethodBind(className BoneConstraint3D, "set_apply_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getApplyBoneName*(self: BoneConstraint3D; index: int32): String =
  expandMethodBind(className BoneConstraint3D, "get_apply_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setApplyBone*(self: BoneConstraint3D; index: int32; bone: int32): void =
  expandMethodBind(className BoneConstraint3D, "set_apply_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getApplyBone*(self: BoneConstraint3D; index: int32): int32 =
  expandMethodBind(className BoneConstraint3D, "get_apply_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setReferenceType*(self: BoneConstraint3D; index: int32; `type`: BoneConstraint3D_ReferenceType): void =
  expandMethodBind(className BoneConstraint3D, "set_reference_type", 1830520418)
  methodbind.ptrcall(self, [getPtr index, getPtr `type`])

proc getReferenceType*(self: BoneConstraint3D; index: int32): BoneConstraint3D_ReferenceType =
  expandMethodBind(className BoneConstraint3D, "get_reference_type", 3456416152)
  var ret: encoded BoneConstraint3D_ReferenceType
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(BoneConstraint3D_ReferenceType)

proc setReferenceBoneName*(self: BoneConstraint3D; index: int32; boneName: String): void =
  expandMethodBind(className BoneConstraint3D, "set_reference_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getReferenceBoneName*(self: BoneConstraint3D; index: int32): String =
  expandMethodBind(className BoneConstraint3D, "get_reference_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setReferenceBone*(self: BoneConstraint3D; index: int32; bone: int32): void =
  expandMethodBind(className BoneConstraint3D, "set_reference_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getReferenceBone*(self: BoneConstraint3D; index: int32): int32 =
  expandMethodBind(className BoneConstraint3D, "get_reference_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setReferenceNode*(self: BoneConstraint3D; index: int32; node: NodePath): void =
  expandMethodBind(className BoneConstraint3D, "set_reference_node", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr node])

proc getReferenceNode*(self: BoneConstraint3D; index: int32): NodePath =
  expandMethodBind(className BoneConstraint3D, "get_reference_node", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setSettingCount*(self: BoneConstraint3D; count: int32): void =
  expandMethodBind(className BoneConstraint3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getSettingCount*(self: BoneConstraint3D): int32 =
  expandMethodBind(className BoneConstraint3D, "get_setting_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clearSetting*(self: BoneConstraint3D): void =
  expandMethodBind(className BoneConstraint3D, "clear_setting", 3218959716)
  methodbind.ptrcall(self, [])
