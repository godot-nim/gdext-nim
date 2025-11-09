{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeVectorBase, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeVectorBase; `type`: VisualShaderNodeVectorBase_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorBase, "set_op_type", 1692596998)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getOpType*(self: VisualShaderNodeVectorBase): VisualShaderNodeVectorBase_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVectorBase, "get_op_type", 2568738462)
  methodbind.ptrcall(self, [], VisualShaderNodeVectorBase_OpType)

template opType*(self: VisualShaderNodeVectorBase): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeVectorBase; value) = self.setOpType(value)
