{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeVec4Constant; constant: Quaternion): void =
  expandMethodBind(className VisualShaderNodeVec4Constant, "set_constant", 1727505552)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeVec4Constant): Quaternion =
  expandMethodBind(className VisualShaderNodeVec4Constant, "get_constant", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Quaternion)

template constant*(self: VisualShaderNodeVec4Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec4Constant; value) = self.setConstant(value)

const VisualShaderNodeVec4Constant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec4Constant]): Table[string, string] = VisualShaderNodeVec4Constant_vmap