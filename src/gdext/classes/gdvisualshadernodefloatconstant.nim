{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeFloatConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeFloatConstant; constant: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatConstant, "set_constant", 373806689)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeFloatConstant): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatConstant, "get_constant", 1740695150)
  methodbind.ptrcall(self, [], Float)

template constant*(self: VisualShaderNodeFloatConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeFloatConstant; value) = self.setConstant(value)
