{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeVec2Constant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeVec2Constant; constant: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec2Constant, "set_constant", 743155724)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeVec2Constant): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec2Constant, "get_constant", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template constant*(self: VisualShaderNodeVec2Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec2Constant; value) = self.setConstant(value)
