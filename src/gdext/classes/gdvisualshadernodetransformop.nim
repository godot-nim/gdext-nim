{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeTransformOp, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeTransformOp; op: VisualShaderNodeTransformOp_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformOp, "set_operator", 2287310733)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeTransformOp): VisualShaderNodeTransformOp_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformOp, "get_operator", 1238663601)
  methodbind.ptrcall(self, [], VisualShaderNodeTransformOp_Operator)

template operator*(self: VisualShaderNodeTransformOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeTransformOp; value) = self.setOperator(value)
