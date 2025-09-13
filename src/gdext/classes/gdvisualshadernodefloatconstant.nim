{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeFloatConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeFloatConstant; constant: Float): void =
  expandMethodBind(className VisualShaderNodeFloatConstant, "set_constant", 373806689)
  methodbind.ptrcall(self, [getPtr constant])

proc getConstant*(self: VisualShaderNodeFloatConstant): Float =
  expandMethodBind(className VisualShaderNodeFloatConstant, "get_constant", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template constant*(self: VisualShaderNodeFloatConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeFloatConstant; value) = self.setConstant(value)
