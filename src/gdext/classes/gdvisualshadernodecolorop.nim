{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeColorOp, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeColorOp; op: VisualShaderNodeColorOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorOp, "set_operator", 4260370673)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeColorOp): VisualShaderNodeColorOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeColorOp, "get_operator", 1950956529)
  methodbind.ptrcall(self, [], VisualShaderNodeColorOp_Operator)

template operator*(self: VisualShaderNodeColorOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeColorOp; value) = self.setOperator(value)
