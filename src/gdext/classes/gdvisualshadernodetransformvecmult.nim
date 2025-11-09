{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeTransformVecMult, VisualShaderNode)

proc setOperator*(self: VisualShaderNodeTransformVecMult; op: VisualShaderNodeTransformVecMult_Operator): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformVecMult, "set_operator", 1785665912)
  methodbind.ptrcall(self, [getPtr op], void)

proc getOperator*(self: VisualShaderNodeTransformVecMult): VisualShaderNodeTransformVecMult_Operator =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformVecMult, "get_operator", 1622088722)
  methodbind.ptrcall(self, [], VisualShaderNodeTransformVecMult_Operator)

template operator*(self: VisualShaderNodeTransformVecMult): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeTransformVecMult; value) = self.setOperator(value)
