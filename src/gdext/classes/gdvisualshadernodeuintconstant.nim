{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

expandOnClassImported(VisualShaderNodeUIntConstant, VisualShaderNodeConstant)

proc setConstant*(self: VisualShaderNodeUIntConstant; constant: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntConstant, "set_constant", 1286410249)
  methodbind.ptrcall(self, [getPtr constant], void)

proc getConstant*(self: VisualShaderNodeUIntConstant): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntConstant, "get_constant", 3905245786)
  methodbind.ptrcall(self, [], int32)

template constant*(self: VisualShaderNodeUIntConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeUIntConstant; value) = self.setConstant(value)
