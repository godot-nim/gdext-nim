{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

expandOnClassImported(SliderJoint3D, Joint3D)

proc setParam*(self: SliderJoint3D; param: SliderJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SliderJoint3D, "set_param", 918243683)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParam*(self: SliderJoint3D; param: SliderJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SliderJoint3D, "get_param", 959925627)
  methodbind.ptrcall(self, [getPtr param], Float)
