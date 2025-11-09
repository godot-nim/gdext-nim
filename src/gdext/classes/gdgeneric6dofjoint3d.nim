{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

expandOnClassImported(Generic6DOFJoint3D, Joint3D)

proc setParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_param_x", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParamX*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_param_x", 2599835054)
  methodbind.ptrcall(self, [getPtr param], Float)

proc setParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_param_y", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParamY*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_param_y", 2599835054)
  methodbind.ptrcall(self, [getPtr param], Float)

proc setParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_param_z", 2018184242)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParamZ*(self: Generic6DOFJoint3D; param: Generic6DOFJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_param_z", 2599835054)
  methodbind.ptrcall(self, [getPtr param], Float)

proc setFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_flag_x", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value], void)

proc getFlagX*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_flag_x", 2122427807)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc setFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_flag_y", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value], void)

proc getFlagY*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_flag_y", 2122427807)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc setFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "set_flag_z", 2451594564)
  methodbind.ptrcall(self, [getPtr flag, getPtr value], void)

proc getFlagZ*(self: Generic6DOFJoint3D; flag: Generic6DOFJoint3D_Flag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Generic6DOFJoint3D, "get_flag_z", 2122427807)
  methodbind.ptrcall(self, [getPtr flag], bool)
