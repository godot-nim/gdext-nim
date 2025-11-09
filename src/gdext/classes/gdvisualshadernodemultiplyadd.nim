{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeMultiplyAdd, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeMultiplyAdd; `type`: VisualShaderNodeMultiplyAdd_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeMultiplyAdd, "set_op_type", 1409862380)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getOpType*(self: VisualShaderNodeMultiplyAdd): VisualShaderNodeMultiplyAdd_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeMultiplyAdd, "get_op_type", 2823201991)
  methodbind.ptrcall(self, [], VisualShaderNodeMultiplyAdd_OpType)

template opType*(self: VisualShaderNodeMultiplyAdd): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeMultiplyAdd; value) = self.setOpType(value)
