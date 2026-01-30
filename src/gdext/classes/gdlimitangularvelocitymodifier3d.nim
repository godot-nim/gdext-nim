{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(LimitAngularVelocityModifier3D, SkeletonModifier3D)

proc setRootBoneName*(self: LimitAngularVelocityModifier3D; index: int32; boneName: String): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_root_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getRootBoneName*(self: LimitAngularVelocityModifier3D; index: int32): String =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_root_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setRootBone*(self: LimitAngularVelocityModifier3D; index: int32; bone: int32): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_root_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getRootBone*(self: LimitAngularVelocityModifier3D; index: int32): int32 =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_root_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setEndBoneName*(self: LimitAngularVelocityModifier3D; index: int32; boneName: String): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_end_bone_name", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr boneName])

proc getEndBoneName*(self: LimitAngularVelocityModifier3D; index: int32): String =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_end_bone_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc setEndBone*(self: LimitAngularVelocityModifier3D; index: int32; bone: int32): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_end_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr bone])

proc getEndBone*(self: LimitAngularVelocityModifier3D; index: int32): int32 =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_end_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setChainCount*(self: LimitAngularVelocityModifier3D; count: int32): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_chain_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getChainCount*(self: LimitAngularVelocityModifier3D): int32 =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_chain_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clearChains*(self: LimitAngularVelocityModifier3D): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "clear_chains", 3218959716)
  methodbind.ptrcall(self, [])

proc setMaxAngularVelocity*(self: LimitAngularVelocityModifier3D; angularVelocity: float64): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_max_angular_velocity", 373806689)
  methodbind.ptrcall(self, [getPtr angularVelocity])

proc getMaxAngularVelocity*(self: LimitAngularVelocityModifier3D): float64 =
  expandMethodBind(className LimitAngularVelocityModifier3D, "get_max_angular_velocity", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setExclude*(self: LimitAngularVelocityModifier3D; exclude: bool): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "set_exclude", 2586408642)
  methodbind.ptrcall(self, [getPtr exclude])

proc isExclude*(self: LimitAngularVelocityModifier3D): bool =
  expandMethodBind(className LimitAngularVelocityModifier3D, "is_exclude", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc reset*(self: LimitAngularVelocityModifier3D): void =
  expandMethodBind(className LimitAngularVelocityModifier3D, "reset", 3218959716)
  methodbind.ptrcall(self, [])

template maxAngularVelocity*(self: LimitAngularVelocityModifier3D): untyped = self.getMaxAngularVelocity()
template `maxAngularVelocity=`*(self: LimitAngularVelocityModifier3D; value) = self.setMaxAngularVelocity(value)

template exclude*(self: LimitAngularVelocityModifier3D): untyped = self.isExclude()
template `exclude=`*(self: LimitAngularVelocityModifier3D; value) = self.setExclude(value)

template chainCount*(self: LimitAngularVelocityModifier3D): untyped = self.getChainCount()
template `chainCount=`*(self: LimitAngularVelocityModifier3D; value) = self.setChainCount(value)

template jointCount*(self: LimitAngularVelocityModifier3D): untyped = self.getJointCount()
