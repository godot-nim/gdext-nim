{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeRemap; opType: VisualShaderNodeRemap_OpType): void =
  expandMethodBind(className VisualShaderNodeRemap, "set_op_type", 1703697889)
  methodbind.ptrcall(self, [getPtr opType])

proc getOpType*(self: VisualShaderNodeRemap): VisualShaderNodeRemap_OpType =
  expandMethodBind(className VisualShaderNodeRemap, "get_op_type", 1678380563)
  var ret: encoded VisualShaderNodeRemap_OpType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeRemap_OpType)

template opType*(self: VisualShaderNodeRemap): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeRemap; value) = self.setOpType(value)
