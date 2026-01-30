{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdchainik3d; export gdchainik3d

expandOnClassImported(SplineIK3D, ChainIK3D)

proc setPath3D*(self: SplineIK3D; index: int32; path3D: NodePath): void =
  expandMethodBind(className SplineIK3D, "set_path_3d", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr path3D])

proc getPath3D*(self: SplineIK3D; index: int32): NodePath =
  expandMethodBind(className SplineIK3D, "get_path_3d", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(NodePath)

proc setTiltEnabled*(self: SplineIK3D; index: int32; enabled: bool): void =
  expandMethodBind(className SplineIK3D, "set_tilt_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enabled])

proc isTiltEnabled*(self: SplineIK3D; index: int32): bool =
  expandMethodBind(className SplineIK3D, "is_tilt_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(bool)

proc setTiltFadeIn*(self: SplineIK3D; index: int32; size: int32): void =
  expandMethodBind(className SplineIK3D, "set_tilt_fade_in", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr size])

proc getTiltFadeIn*(self: SplineIK3D; index: int32): int32 =
  expandMethodBind(className SplineIK3D, "get_tilt_fade_in", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc setTiltFadeOut*(self: SplineIK3D; index: int32; size: int32): void =
  expandMethodBind(className SplineIK3D, "set_tilt_fade_out", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr size])

proc getTiltFadeOut*(self: SplineIK3D; index: int32): int32 =
  expandMethodBind(className SplineIK3D, "get_tilt_fade_out", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

template settingCount*(self: SplineIK3D): untyped = self.getSettingCount()
template `settingCount=`*(self: SplineIK3D; value) = self.setSettingCount(value)
