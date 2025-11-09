{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

expandOnClassImported(ConeTwistJoint3D, Joint3D)

proc setParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConeTwistJoint3D, "set_param", 1062470226)
  methodbind.ptrcall(self, [getPtr param, getPtr value], void)

proc getParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConeTwistJoint3D, "get_param", 2928790850)
  methodbind.ptrcall(self, [getPtr param], Float)

template swingSpan*(self: ConeTwistJoint3D): untyped = self.getParam(ConeTwistJoint3D_Param(0))
template `swingSpan=`*(self: ConeTwistJoint3D; value) = self.setParam(ConeTwistJoint3D_Param(0), value)

template twistSpan*(self: ConeTwistJoint3D): untyped = self.getParam(ConeTwistJoint3D_Param(1))
template `twistSpan=`*(self: ConeTwistJoint3D; value) = self.setParam(ConeTwistJoint3D_Param(1), value)

template bias*(self: ConeTwistJoint3D): untyped = self.getParam(ConeTwistJoint3D_Param(2))
template `bias=`*(self: ConeTwistJoint3D; value) = self.setParam(ConeTwistJoint3D_Param(2), value)

template softness*(self: ConeTwistJoint3D): untyped = self.getParam(ConeTwistJoint3D_Param(3))
template `softness=`*(self: ConeTwistJoint3D; value) = self.setParam(ConeTwistJoint3D_Param(3), value)

template relaxation*(self: ConeTwistJoint3D): untyped = self.getParam(ConeTwistJoint3D_Param(4))
template `relaxation=`*(self: ConeTwistJoint3D; value) = self.setParam(ConeTwistJoint3D_Param(4), value)
