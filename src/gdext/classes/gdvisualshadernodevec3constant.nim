{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeVec3Constant; constant: Vector3): void =
  expandMethodBind(className VisualShaderNodeVec3Constant, "set_constant", 3460891852)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeVec3Constant): Vector3 =
  expandMethodBind(className VisualShaderNodeVec3Constant, "get_constant", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

template constant*(self: VisualShaderNodeVec3Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec3Constant; value) = self.setConstant(value)

const VisualShaderNodeVec3Constant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec3Constant]): Table[string, string] = VisualShaderNodeVec3Constant_vmap