{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeColorConstant; constant: Color): void =
  expandMethodBind(className VisualShaderNodeColorConstant, "set_constant", 2920490490)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeColorConstant): Color =
  expandMethodBind(className VisualShaderNodeColorConstant, "get_constant", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

template constant*(self: VisualShaderNodeColorConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeColorConstant; value) = self.setConstant(value)

const VisualShaderNodeColorConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeColorConstant]): Table[string, string] = VisualShaderNodeColorConstant_vmap