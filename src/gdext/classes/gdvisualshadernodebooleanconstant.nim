{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeBooleanConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeBooleanConstant; constant: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanConstant, "set_constant", 2586408642)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeBooleanConstant): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanConstant, "get_constant", 36873697)
  methodbind.ptrcall(self, [], bool)

template constant*(self: VisualShaderNodeBooleanConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeBooleanConstant; value) = self.setConstant(value)
