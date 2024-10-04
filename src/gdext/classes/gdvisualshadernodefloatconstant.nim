{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeFloatConstant; constant: Float): void =
  expandMethodBind(className VisualShaderNodeFloatConstant, "set_constant", 373806689)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeFloatConstant): Float =
  expandMethodBind(className VisualShaderNodeFloatConstant, "get_constant", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template constant*(self: VisualShaderNodeFloatConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeFloatConstant; value) = self.setConstant(value)

const VisualShaderNodeFloatConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFloatConstant]): Table[string, string] = VisualShaderNodeFloatConstant_vmap