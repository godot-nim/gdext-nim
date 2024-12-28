{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param; value: Float): void =
  expandMethodBind(className ConeTwistJoint3D, "set_param", 1062470226)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param): Float =
  expandMethodBind(className ConeTwistJoint3D, "get_param", 2928790850)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

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

const ConeTwistJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConeTwistJoint3D]): Table[string, string] = ConeTwistJoint3D_vmap