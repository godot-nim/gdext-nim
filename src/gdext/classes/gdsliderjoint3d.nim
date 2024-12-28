{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: SliderJoint3D; param: SliderJoint3D_Param; value: Float): void =
  expandMethodBind(className SliderJoint3D, "set_param", 918243683)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParam*(self: SliderJoint3D; param: SliderJoint3D_Param): Float =
  expandMethodBind(className SliderJoint3D, "get_param", 959925627)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

const SliderJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SliderJoint3D]): Table[string, string] = SliderJoint3D_vmap