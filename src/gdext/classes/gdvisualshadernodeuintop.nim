{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeUIntOp, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeUIntOp; op: VisualShaderNodeUIntOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntOp, "set_operator", 3463048345)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeUIntOp): VisualShaderNodeUIntOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntOp, "get_operator", 256631461)
  methodbind.ptrcall(self, [], VisualShaderNodeUIntOp_Operator)

template operator*(self: VisualShaderNodeUIntOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeUIntOp; value) = self.setOperator(value)
