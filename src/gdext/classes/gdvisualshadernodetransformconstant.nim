{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeTransformConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeTransformConstant; constant: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformConstant, "set_constant", 2952846383)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeTransformConstant): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformConstant, "get_constant", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

template constant*(self: VisualShaderNodeTransformConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeTransformConstant; value) = self.setConstant(value)
