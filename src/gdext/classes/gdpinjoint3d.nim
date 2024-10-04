{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: PinJoint3D; param: PinJoint3D_Param; value: Float): void =
  expandMethodBind(className PinJoint3D, "set_param", 2059913726)
  var `?param` = [getPtr param, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParam*(self: PinJoint3D; param: PinJoint3D_Param): Float =
  expandMethodBind(className PinJoint3D, "get_param", 1758438771)
  var `?param` = [getPtr param]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

const PinJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PinJoint3D]): Table[string, string] = PinJoint3D_vmap