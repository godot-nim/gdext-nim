{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeClamp, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeClamp; opType: VisualShaderNodeClamp_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeClamp, "set_op_type", 405010749)
  methodbind.ptrcall(self, [getPtr opType], void)

proc getOpType*(self: VisualShaderNodeClamp): VisualShaderNodeClamp_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeClamp, "get_op_type", 233276050)
  methodbind.ptrcall(self, [], VisualShaderNodeClamp_OpType)

template opType*(self: VisualShaderNodeClamp): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeClamp; value) = self.setOpType(value)
