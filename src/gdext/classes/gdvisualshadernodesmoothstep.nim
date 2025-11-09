{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeSmoothStep, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeSmoothStep; opType: VisualShaderNodeSmoothStep_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSmoothStep, "set_op_type", 2427426148)
  methodbind.ptrcall(self, [getPtr opType], void)

proc getOpType*(self: VisualShaderNodeSmoothStep): VisualShaderNodeSmoothStep_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSmoothStep, "get_op_type", 359640855)
  methodbind.ptrcall(self, [], VisualShaderNodeSmoothStep_OpType)

template opType*(self: VisualShaderNodeSmoothStep): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeSmoothStep; value) = self.setOpType(value)
