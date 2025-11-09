{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboneconstraint3d; export gdboneconstraint3d

expandOnClassImported(ConvertTransformModifier3D, BoneConstraint3D)

proc setApplyTransformMode*(self: ConvertTransformModifier3D; index: int32; transformMode: ConvertTransformModifier3D_TransformMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_apply_transform_mode", 1386463405)
  methodbind.ptrcall(self, [getPtr index, getPtr transformMode], void)

proc getApplyTransformMode*(self: ConvertTransformModifier3D; index: int32): ConvertTransformModifier3D_TransformMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_apply_transform_mode", 3234663511)
  methodbind.ptrcall(self, [getPtr index], ConvertTransformModifier3D_TransformMode)

proc setApplyAxis*(self: ConvertTransformModifier3D; index: int32; axis: Vector3_Axis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_apply_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis], void)

proc getApplyAxis*(self: ConvertTransformModifier3D; index: int32): Vector3_Axis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_apply_axis", 4131134770)
  methodbind.ptrcall(self, [getPtr index], Vector3_Axis)

proc setApplyRangeMin*(self: ConvertTransformModifier3D; index: int32; rangeMin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_apply_range_min", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMin], void)

proc getApplyRangeMin*(self: ConvertTransformModifier3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_apply_range_min", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setApplyRangeMax*(self: ConvertTransformModifier3D; index: int32; rangeMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_apply_range_max", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMax], void)

proc getApplyRangeMax*(self: ConvertTransformModifier3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_apply_range_max", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setReferenceTransformMode*(self: ConvertTransformModifier3D; index: int32; transformMode: ConvertTransformModifier3D_TransformMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_reference_transform_mode", 1386463405)
  methodbind.ptrcall(self, [getPtr index, getPtr transformMode], void)

proc getReferenceTransformMode*(self: ConvertTransformModifier3D; index: int32): ConvertTransformModifier3D_TransformMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_reference_transform_mode", 3234663511)
  methodbind.ptrcall(self, [getPtr index], ConvertTransformModifier3D_TransformMode)

proc setReferenceAxis*(self: ConvertTransformModifier3D; index: int32; axis: Vector3_Axis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_reference_axis", 776736805)
  methodbind.ptrcall(self, [getPtr index, getPtr axis], void)

proc getReferenceAxis*(self: ConvertTransformModifier3D; index: int32): Vector3_Axis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_reference_axis", 4131134770)
  methodbind.ptrcall(self, [getPtr index], Vector3_Axis)

proc setReferenceRangeMin*(self: ConvertTransformModifier3D; index: int32; rangeMin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_reference_range_min", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMin], void)

proc getReferenceRangeMin*(self: ConvertTransformModifier3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_reference_range_min", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setReferenceRangeMax*(self: ConvertTransformModifier3D; index: int32; rangeMax: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_reference_range_max", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr rangeMax], void)

proc getReferenceRangeMax*(self: ConvertTransformModifier3D; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "get_reference_range_max", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setRelative*(self: ConvertTransformModifier3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_relative", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isRelative*(self: ConvertTransformModifier3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "is_relative", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc setAdditive*(self: ConvertTransformModifier3D; index: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "set_additive", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled], void)

proc isAdditive*(self: ConvertTransformModifier3D; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvertTransformModifier3D, "is_additive", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

template settingCount*(self: ConvertTransformModifier3D): untyped = self.getSettingCount()
template `settingCount=`*(self: ConvertTransformModifier3D; value) = self.setSettingCount(value)
