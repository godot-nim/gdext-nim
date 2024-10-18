{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeMultiplyAdd; `type`: VisualShaderNodeMultiplyAdd_OpType): void =
  expandMethodBind(className VisualShaderNodeMultiplyAdd, "set_op_type", 1409862380)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeMultiplyAdd): VisualShaderNodeMultiplyAdd_OpType =
  expandMethodBind(className VisualShaderNodeMultiplyAdd, "get_op_type", 2823201991)
  var ret: encoded VisualShaderNodeMultiplyAdd_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeMultiplyAdd_OpType)

template opType*(self: VisualShaderNodeMultiplyAdd): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeMultiplyAdd; value) = self.setOpType(value)

const VisualShaderNodeMultiplyAdd_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeMultiplyAdd]): Table[string, string] = VisualShaderNodeMultiplyAdd_vmap