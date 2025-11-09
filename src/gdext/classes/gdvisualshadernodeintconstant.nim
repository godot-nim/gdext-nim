{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeIntConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeIntConstant; constant: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntConstant, "set_constant", 1286410249)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeIntConstant): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntConstant, "get_constant", 3905245786)
  methodbind.ptrcall(self, [], int32)

template constant*(self: VisualShaderNodeIntConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeIntConstant; value) = self.setConstant(value)
