{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdboneconstraint3d; export gdboneconstraint3d

expandOnClassImported(CopyTransformModifier3D, BoneConstraint3D)

proc setCopyFlags*(self: CopyTransformModifier3D; index: int32; copyFlags: set[CopyTransformModifier3D_TransformFlag]): void =
  expandMethodBind(className CopyTransformModifier3D, "set_copy_flags", 2252507859)
  methodbind.ptrcall(self, [getPtr index, getPtr copyFlags])

proc getCopyFlags*(self: CopyTransformModifier3D; index: int32): set[CopyTransformModifier3D_TransformFlag] =
  expandMethodBind(className CopyTransformModifier3D, "get_copy_flags", 1685185931)
  var ret: encoded set[CopyTransformModifier3D_TransformFlag]
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(set[CopyTransformModifier3D_TransformFlag])

proc setAxisFlags*(self: CopyTransformModifier3D; index: int32; axisFlags: set[CopyTransformModifier3D_AxisFlag]): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_flags", 2044211897)
  methodbind.ptrcall(self, [getPtr index, getPtr axisFlags])

proc getAxisFlags*(self: CopyTransformModifier3D; index: int32): set[CopyTransformModifier3D_AxisFlag] =
  expandMethodBind(className CopyTransformModifier3D, "get_axis_flags", 992162046)
  var ret: encoded set[CopyTransformModifier3D_AxisFlag]
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(set[CopyTransformModifier3D_AxisFlag])

proc setInvertFlags*(self: CopyTransformModifier3D; index: int32; axisFlags: set[CopyTransformModifier3D_AxisFlag]): void =
  expandMethodBind(className CopyTransformModifier3D, "set_invert_flags", 2044211897)
  methodbind.ptrcall(self, [getPtr index, getPtr axisFlags])

proc getInvertFlags*(self: CopyTransformModifier3D; index: int32): set[CopyTransformModifier3D_AxisFlag] =
  expandMethodBind(className CopyTransformModifier3D, "get_invert_flags", 992162046)
  var ret: encoded set[CopyTransformModifier3D_AxisFlag]
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(set[CopyTransformModifier3D_AxisFlag])

proc setCopyPosition*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_copy_position", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isPositionCopying*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_position_copying", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setCopyRotation*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_copy_rotation", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isRotationCopying*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_rotation_copying", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setCopyScale*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_copy_scale", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isScaleCopying*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_scale_copying", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisXEnabled*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_x_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisXEnabled*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_x_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisYEnabled*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_y_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisYEnabled*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_y_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisZEnabled*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_z_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisZEnabled*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_z_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisXInverted*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_x_inverted", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisXInverted*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_x_inverted", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisYInverted*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_y_inverted", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisYInverted*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_y_inverted", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAxisZInverted*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_axis_z_inverted", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAxisZInverted*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_axis_z_inverted", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setRelative*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_relative", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isRelative*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_relative", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setAdditive*(self: CopyTransformModifier3D; index: int32; enabled: bool): void =
  expandMethodBind(className CopyTransformModifier3D, "set_additive", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isAdditive*(self: CopyTransformModifier3D; index: int32): bool =
  expandMethodBind(className CopyTransformModifier3D, "is_additive", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

template settingCount*(self: CopyTransformModifier3D): untyped = self.getSettingCount()
template `settingCount=`*(self: CopyTransformModifier3D; value) = self.setSettingCount(value)
