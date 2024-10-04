{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeVec4Constant; constant: Quaternion): void =
  expandMethodBind(className VisualShaderNodeVec4Constant, "set_constant", 1727505552)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeVec4Constant): Quaternion =
  expandMethodBind(className VisualShaderNodeVec4Constant, "get_constant", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

template constant*(self: VisualShaderNodeVec4Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec4Constant; value) = self.setConstant(value)

const VisualShaderNodeVec4Constant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec4Constant]): Table[string, string] = VisualShaderNodeVec4Constant_vmap