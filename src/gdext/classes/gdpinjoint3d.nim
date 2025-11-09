{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

expandOnClassImported(PinJoint3D, Joint3D)

proc setParam*(self: PinJoint3D; param: PinJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint3D, "set_param", 2059913726)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParam*(self: PinJoint3D; param: PinJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PinJoint3D, "get_param", 1758438771)
  methodbind.ptrcall(self, [getPtr param], Float)
