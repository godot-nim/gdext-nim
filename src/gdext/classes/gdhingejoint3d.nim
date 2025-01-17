{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint3d; export gdjoint3d

proc setParam*(self: HingeJoint3D; param: HingeJoint3D_Param; value: Float): void =
  expandMethodBind(className HingeJoint3D, "set_param", 3082977519)
  methodbind.ptrcall(self, [getPtr param, getPtr value])

proc getParam*(self: HingeJoint3D; param: HingeJoint3D_Param): Float =
  expandMethodBind(className HingeJoint3D, "get_param", 4066002676)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr param], addr ret)
  (addr ret).decode_result(Float)

proc setFlag*(self: HingeJoint3D; flag: HingeJoint3D_Flag; enabled: bool): void =
  expandMethodBind(className HingeJoint3D, "set_flag", 1083494620)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled])

proc getFlag*(self: HingeJoint3D; flag: HingeJoint3D_Flag): bool =
  expandMethodBind(className HingeJoint3D, "get_flag", 2841369610)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

const HingeJoint3D_vmap =
  Joint3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HingeJoint3D]): Table[string, string] = HingeJoint3D_vmap