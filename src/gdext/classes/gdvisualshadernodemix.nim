{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeMix; opType: VisualShaderNodeMix_OpType): void =
  expandMethodBind(className VisualShaderNodeMix, "set_op_type", 3397501671)
  methodbind.ptrcall(self, [getPtr opType])

proc getOpType*(self: VisualShaderNodeMix): VisualShaderNodeMix_OpType =
  expandMethodBind(className VisualShaderNodeMix, "get_op_type", 4013957297)
  var ret: encoded VisualShaderNodeMix_OpType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeMix_OpType)

template opType*(self: VisualShaderNodeMix): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeMix; value) = self.setOpType(value)

const VisualShaderNodeMix_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeMix]): Table[string, string] = VisualShaderNodeMix_vmap