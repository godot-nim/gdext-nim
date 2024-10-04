{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param; value: Float): void =
  expandMethodBind(className ConeTwistJoint3D, "set_param", 1062470226)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParam*(self: ConeTwistJoint3D; param: ConeTwistJoint3D_Param): Float =
  expandMethodBind(className ConeTwistJoint3D, "get_param", 2928790850)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

template swingSpan*(self: ConeTwistJoint3D): untyped = self.getParam(0)
template `swingSpan=`*(self: ConeTwistJoint3D; value) = self.setParam(0, value)

template twistSpan*(self: ConeTwistJoint3D): untyped = self.getParam(1)
template `twistSpan=`*(self: ConeTwistJoint3D; value) = self.setParam(1, value)

template bias*(self: ConeTwistJoint3D): untyped = self.getParam(2)
template `bias=`*(self: ConeTwistJoint3D; value) = self.setParam(2, value)

template softness*(self: ConeTwistJoint3D): untyped = self.getParam(3)
template `softness=`*(self: ConeTwistJoint3D; value) = self.setParam(3, value)

template relaxation*(self: ConeTwistJoint3D): untyped = self.getParam(4)
template `relaxation=`*(self: ConeTwistJoint3D; value) = self.setParam(4, value)

const ConeTwistJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConeTwistJoint3D]): Table[string, string] = ConeTwistJoint3D_vmap