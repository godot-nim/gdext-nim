{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeColorConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeColorConstant; constant: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorConstant, "set_constant", 2920490490)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeColorConstant): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorConstant, "get_constant", 3444240500)
  methodbind.ptrcall(self, [], Color)

template constant*(self: VisualShaderNodeColorConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeColorConstant; value) = self.setConstant(value)
