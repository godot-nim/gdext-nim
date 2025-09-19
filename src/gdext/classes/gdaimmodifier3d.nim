{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboneconstraint3d; export gdboneconstraint3d

expandOnClassImported(AimModifier3D, BoneConstraint3D)

proc setForwardAxis*(self: AimModifier3D; index: int32; axis: SkeletonModifier3D_BoneAxis): void =
  expandMethodBind(className AimModifier3D, "set_forward_axis", 2496831085)
  methodbind.ptrcall(self, [getPtr index, getPtr axis])

proc getForwardAxis*(self: AimModifier3D; index: int32): SkeletonModifier3D_BoneAxis =
  expandMethodBind(className AimModifier3D, "get_forward_axis", 3949866735)
  var ret: encoded SkeletonModifier3D_BoneAxis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(SkeletonModifier3D_BoneAxis)

proc setUseEuler*(self: AimModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className AimModifier3D, "set_use_euler", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isUsingEuler*(self: AimModifier3D; index: int32): bool =
  expandMethodBind(className AimModifier3D, "is_using_euler", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setPrimaryRotationAxis*(self: AimModifier3D; index: int32; axis: Vector3_Axis): void =
  expandMethodBind(className AimModifier3D, "set_primary_rotation_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis])

proc getPrimaryRotationAxis*(self: AimModifier3D; index: int32): Vector3_Axis =
  expandMethodBind(className AimModifier3D, "get_primary_rotation_axis", 4131134770)
  var ret: encoded Vector3_Axis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3_Axis)

proc setUseSecondaryRotation*(self: AimModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className AimModifier3D, "set_use_secondary_rotation", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isUsingSecondaryRotation*(self: AimModifier3D; index: int32): bool =
  expandMethodBind(className AimModifier3D, "is_using_secondary_rotation", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

template settingCount*(self: AimModifier3D): untyped = self.getSettingCount()
template `settingCount=`*(self: AimModifier3D; value) = self.setSettingCount(value)
