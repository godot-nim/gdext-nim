{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(IKModifier3D, SkeletonModifier3D)

proc setSettingCount*(self: IKModifier3D; count: int32): void =
  expandMethodBind(className IKModifier3D, "set_setting_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getSettingCount*(self: IKModifier3D): int32 =
  expandMethodBind(className IKModifier3D, "get_setting_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clearSettings*(self: IKModifier3D): void =
  expandMethodBind(className IKModifier3D, "clear_settings", 3218959716)
  methodbind.ptrcall(self, [])

proc setMutableBoneAxes*(self: IKModifier3D; enabled: bool): void =
  expandMethodBind(className IKModifier3D, "set_mutable_bone_axes", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc areBoneAxesMutable*(self: IKModifier3D): bool =
  expandMethodBind(className IKModifier3D, "are_bone_axes_mutable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc reset*(self: IKModifier3D): void =
  expandMethodBind(className IKModifier3D, "reset", 3218959716)
  methodbind.ptrcall(self, [])

template mutableBoneAxes*(self: IKModifier3D): untyped = self.areBoneAxesMutable()
template `mutableBoneAxes=`*(self: IKModifier3D; value) = self.setMutableBoneAxes(value)
