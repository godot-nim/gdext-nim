{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeStep, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeStep; opType: VisualShaderNodeStep_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeStep, "set_op_type", 715172489)
  methodbind.ptrcall(self, [getPtr opType], void)

proc getOpType*(self: VisualShaderNodeStep): VisualShaderNodeStep_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeStep, "get_op_type", 3274022781)
  methodbind.ptrcall(self, [], VisualShaderNodeStep_OpType)

template opType*(self: VisualShaderNodeStep): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeStep; value) = self.setOpType(value)
