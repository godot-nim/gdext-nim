{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

expandOnClassImported(HingeJoint3D, Joint3D)

proc setParam*(self: HingeJoint3D; param: HingeJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HingeJoint3D, "set_param", 3082977519)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParam*(self: HingeJoint3D; param: HingeJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HingeJoint3D, "get_param", 4066002676)
  methodbind.ptrcall(self, [getPtr param], Float)

proc setFlag*(self: HingeJoint3D; flag: HingeJoint3D_Flag; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HingeJoint3D, "set_flag", 1083494620)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled], void)

proc getFlag*(self: HingeJoint3D; flag: HingeJoint3D_Flag): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HingeJoint3D, "get_flag", 2841369610)
  methodbind.ptrcall(self, [getPtr flag], bool)
