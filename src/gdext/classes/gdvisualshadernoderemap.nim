{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeRemap, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeRemap; opType: VisualShaderNodeRemap_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeRemap, "set_op_type", 1703697889)
  methodbind.ptrcall(self, [getPtr opType], void)

proc getOpType*(self: VisualShaderNodeRemap): VisualShaderNodeRemap_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeRemap, "get_op_type", 1678380563)
  methodbind.ptrcall(self, [], VisualShaderNodeRemap_OpType)

template opType*(self: VisualShaderNodeRemap): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeRemap; value) = self.setOpType(value)
