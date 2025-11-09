{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeFloatOp, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeFloatOp; op: VisualShaderNodeFloatOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatOp, "set_operator", 2488468047)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeFloatOp): VisualShaderNodeFloatOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatOp, "get_operator", 1867979390)
  methodbind.ptrcall(self, [], VisualShaderNodeFloatOp_Operator)

template operator*(self: VisualShaderNodeFloatOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeFloatOp; value) = self.setOperator(value)
