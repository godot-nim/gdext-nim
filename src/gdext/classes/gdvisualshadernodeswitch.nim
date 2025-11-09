{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeSwitch, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeSwitch; `type`: VisualShaderNodeSwitch_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSwitch, "set_op_type", 510471861)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getOpType*(self: VisualShaderNodeSwitch): VisualShaderNodeSwitch_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeSwitch, "get_op_type", 2517845071)
  methodbind.ptrcall(self, [], VisualShaderNodeSwitch_OpType)

template opType*(self: VisualShaderNodeSwitch): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeSwitch; value) = self.setOpType(value)
