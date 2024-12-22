{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_x", 2018184242)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_x", 2599835054)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_y", 2018184242)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_y", 2599835054)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_param_z", 2018184242)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  expandMethodBind(className Generic6DOFJoint3D, "get_param_z", 2599835054)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_x", 2451594564)
  var `?param` = [getPtr flag, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_x", 2122427807)
  var `?param` = [getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_y", 2451594564)
  var `?param` = [getPtr flag, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_y", 2122427807)
  var `?param` = [getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  expandMethodBind(className Generic6DOFJoint3D, "set_flag_z", 2451594564)
  var `?param` = [getPtr flag, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  expandMethodBind(className Generic6DOFJoint3D, "get_flag_z", 2122427807)
  var `?param` = [getPtr flag]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const Generic6DOFJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Generic6DOFJoint3D]): Table[string, string] = Generic6DOFJoint3D_vmap