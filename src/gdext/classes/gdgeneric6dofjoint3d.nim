{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_x", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_x", 2599835054)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc setParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_y", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_y", 2599835054)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc setParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_z", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_z", 2599835054)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc setFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_x", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value])

proc getFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_x", 2122427807)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc setFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_y", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value])

proc getFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_y", 2122427807)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc setFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_z", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value])

proc getFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_z", 2122427807)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

const Generic6DOFJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Generic6DOFJoint3D]): Table[string, string] = Generic6DOFJoint3D_vmap