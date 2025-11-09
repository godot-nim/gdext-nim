{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(BoneConstraint3D, SkeletonModifier3D)

proc setAmount*(self: BoneConstraint3D; index: int32; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_amount", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr amount], void)

proc getAmount*(self: BoneConstraint3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_amount", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setApplyBoneName*(self: BoneConstraint3D; index: int32; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_apply_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName], void)

proc getApplyBoneName*(self: BoneConstraint3D; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_apply_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc setApplyBone*(self: BoneConstraint3D; index: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_apply_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone], void)

proc getApplyBone*(self: BoneConstraint3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_apply_bone", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setReferenceBoneName*(self: BoneConstraint3D; index: int32; boneName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_reference_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName], void)

proc getReferenceBoneName*(self: BoneConstraint3D; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_reference_bone_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc setReferenceBone*(self: BoneConstraint3D; index: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_reference_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone], void)

proc getReferenceBone*(self: BoneConstraint3D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_reference_bone", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setSettingCount*(self: BoneConstraint3D; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getSettingCount*(self: BoneConstraint3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "get_setting_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc clearSetting*(self: BoneConstraint3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoneConstraint3D, "clear_setting", 3218959716)
  methodbind.ptrcall(self, [], void)
