{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboneconstraint3d; export gdboneconstraint3d

expandOnClassImported(AimModifier3D, BoneConstraint3D)

proc setForwardAxis*(self: AimModifier3D; index: int32; axis: SkeletonModifier3D_BoneAxis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "set_forward_axis", 2496831085)
  methodbind.ptrcall(self, [getPtr index, getPtr axis], void)

proc getForwardAxis*(self: AimModifier3D; index: int32): SkeletonModifier3D_BoneAxis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "get_forward_axis", 3949866735)
  methodbind.ptrcall(self, [getPtr index], SkeletonModifier3D_BoneAxis)

proc setUseEuler*(self: AimModifier3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "set_use_euler", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isUsingEuler*(self: AimModifier3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "is_using_euler", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc setPrimaryRotationAxis*(self: AimModifier3D; index: int32; axis: Vector3_Axis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "set_primary_rotation_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis], void)

proc getPrimaryRotationAxis*(self: AimModifier3D; index: int32): Vector3_Axis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "get_primary_rotation_axis", 4131134770)
  methodbind.ptrcall(self, [getPtr index], Vector3_Axis)

proc setUseSecondaryRotation*(self: AimModifier3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "set_use_secondary_rotation", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isUsingSecondaryRotation*(self: AimModifier3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AimModifier3D, "is_using_secondary_rotation", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

template settingCount*(self: AimModifier3D): untyped = self.getSettingCount()
template `settingCount=`*(self: AimModifier3D; value) = self.setSettingCount(value)
