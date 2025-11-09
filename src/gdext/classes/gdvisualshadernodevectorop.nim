{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

expandOnClassImported(VisualShaderNodeVectorOp, VisualShaderNodeVectorBase)

proc setOperator*(self: VisualShaderNodeVectorOp; op: VisualShaderNodeVectorOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorOp, "set_operator", 3371507302)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeVectorOp): VisualShaderNodeVectorOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorOp, "get_operator", 11793929)
  methodbind.ptrcall(self, [], VisualShaderNodeVectorOp_Operator)

template operator*(self: VisualShaderNodeVectorOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeVectorOp; value) = self.setOperator(value)
