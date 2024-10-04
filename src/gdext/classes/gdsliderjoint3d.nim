{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: SliderJoint3D; param: SliderJoint3D_Param; value: Float): void =
  expandMethodBind(className SliderJoint3D, "set_param", 918243683)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParam*(self: SliderJoint3D; param: SliderJoint3D_Param): Float =
  expandMethodBind(className SliderJoint3D, "get_param", 959925627)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

const SliderJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SliderJoint3D]): Table[string, string] = SliderJoint3D_vmap