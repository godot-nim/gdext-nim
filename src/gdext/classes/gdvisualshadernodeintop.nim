{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeIntOp, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeIntOp; op: VisualShaderNodeIntOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntOp, "set_operator", 1677909323)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeIntOp): VisualShaderNodeIntOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntOp, "get_operator", 1236987913)
  methodbind.ptrcall(self, [], VisualShaderNodeIntOp_Operator)

template operator*(self: VisualShaderNodeIntOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeIntOp; value) = self.setOperator(value)
