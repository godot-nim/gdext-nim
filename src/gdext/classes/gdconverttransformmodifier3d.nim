{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboneconstraint3d; export gdboneconstraint3d

expandOnClassImported(ConvertTransformModifier3D, BoneConstraint3D)

proc setApplyTransformMode*(self: ConvertTransformModifier3D; index: int32; transformMode: ConvertTransformModifier3D_TransformMode): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_apply_transform_mode", 1386463405)
  methodbind.ptrcall(self, [getPtr index, getPtr transformMode])

proc getApplyTransformMode*(self: ConvertTransformModifier3D; index: int32): ConvertTransformModifier3D_TransformMode =
  expandMethodBind(className ConvertTransformModifier3D, "get_apply_transform_mode", 3234663511)
  var ret: encoded ConvertTransformModifier3D_TransformMode
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(ConvertTransformModifier3D_TransformMode)

proc setApplyAxis*(self: ConvertTransformModifier3D; index: int32; axis: Vector3_Axis): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_apply_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis])

proc getApplyAxis*(self: ConvertTransformModifier3D; index: int32): Vector3_Axis =
  expandMethodBind(className ConvertTransformModifier3D, "get_apply_axis", 4131134770)
  var ret: encoded Vector3_Axis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3_Axis)

proc setApplyRangeMin*(self: ConvertTransformModifier3D; index: int32; rangeMin: Float): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_apply_range_min", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMin])

proc getApplyRangeMin*(self: ConvertTransformModifier3D; index: int32): Float =
  expandMethodBind(className ConvertTransformModifier3D, "get_apply_range_min", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setApplyRangeMax*(self: ConvertTransformModifier3D; index: int32; rangeMax: Float): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_apply_range_max", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMax])

proc getApplyRangeMax*(self: ConvertTransformModifier3D; index: int32): Float =
  expandMethodBind(className ConvertTransformModifier3D, "get_apply_range_max", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setReferenceTransformMode*(self: ConvertTransformModifier3D; index: int32; transformMode: ConvertTransformModifier3D_TransformMode): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_reference_transform_mode", 1386463405)
  methodbind.ptrcall(self, [getPtr index, getPtr transformMode])

proc getReferenceTransformMode*(self: ConvertTransformModifier3D; index: int32): ConvertTransformModifier3D_TransformMode =
  expandMethodBind(className ConvertTransformModifier3D, "get_reference_transform_mode", 3234663511)
  var ret: encoded ConvertTransformModifier3D_TransformMode
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(ConvertTransformModifier3D_TransformMode)

proc setReferenceAxis*(self: ConvertTransformModifier3D; index: int32; axis: Vector3_Axis): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_reference_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis])

proc getReferenceAxis*(self: ConvertTransformModifier3D; index: int32): Vector3_Axis =
  expandMethodBind(className ConvertTransformModifier3D, "get_reference_axis", 4131134770)
  var ret: encoded Vector3_Axis
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3_Axis)

proc setReferenceRangeMin*(self: ConvertTransformModifier3D; index: int32; rangeMin: Float): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_reference_range_min", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMin])

proc getReferenceRangeMin*(self: ConvertTransformModifier3D; index: int32): Float =
  expandMethodBind(className ConvertTransformModifier3D, "get_reference_range_min", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setReferenceRangeMax*(self: ConvertTransformModifier3D; index: int32; rangeMax: Float): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_reference_range_max", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMax])

proc getReferenceRangeMax*(self: ConvertTransformModifier3D; index: int32): Float =
  expandMethodBind(className ConvertTransformModifier3D, "get_reference_range_max", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setRelative*(self: ConvertTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_relative", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isRelative*(self: ConvertTransformModifier3D; index: int32): bool =
  expandMethodBind(className ConvertTransformModifier3D, "is_relative", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAdditive*(self: ConvertTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className ConvertTransformModifier3D, "set_additive", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAdditive*(self: ConvertTransformModifier3D; index: int32): bool =
  expandMethodBind(className ConvertTransformModifier3D, "is_additive", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

template settingCount*(self: ConvertTransformModifier3D): untyped = self.getSettingCount()
template `settingCount=`*(self: ConvertTransformModifier3D; value) = self.setSettingCount(value)
