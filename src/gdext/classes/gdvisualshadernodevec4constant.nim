{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeVec4Constant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeVec4Constant; constant: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec4Constant, "set_constant", 1727505552)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeVec4Constant): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec4Constant, "get_constant", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

template constant*(self: VisualShaderNodeVec4Constant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeVec4Constant; value) = self.setConstant(value)

template constantV4*(self: VisualShaderNodeVec4Constant): untyped = self.getConstantV4()
template `constantV4=`*(self: VisualShaderNodeVec4Constant; value) = self.setConstantV4(value)
