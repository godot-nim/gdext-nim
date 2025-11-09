{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeMix, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeMix; opType: VisualShaderNodeMix_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeMix, "set_op_type", 3397501671)
  methodbind.ptrcall(self, [getPtr opType], void)

proc getOpType*(self: VisualShaderNodeMix): VisualShaderNodeMix_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeMix, "get_op_type", 4013957297)
  methodbind.ptrcall(self, [], VisualShaderNodeMix_OpType)

template opType*(self: VisualShaderNodeMix): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeMix; value) = self.setOpType(value)
