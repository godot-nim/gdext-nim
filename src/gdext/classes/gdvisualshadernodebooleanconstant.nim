{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeBooleanConstant; constant: bool): void =
  expandMethodBind(className VisualShaderNodeBooleanConstant, "set_constant", 2586408642)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeBooleanConstant): bool =
  expandMethodBind(className VisualShaderNodeBooleanConstant, "get_constant", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template constant*(self: VisualShaderNodeBooleanConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeBooleanConstant; value) = self.setConstant(value)

const VisualShaderNodeBooleanConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeBooleanConstant]): Table[string, string] = VisualShaderNodeBooleanConstant_vmap