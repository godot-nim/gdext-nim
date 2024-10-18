{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeVectorBase; `type`: VisualShaderNodeVectorBase_OpType): void =
  expandMethodBind(className VisualShaderNodeVectorBase, "set_op_type", 1692596998)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeVectorBase): VisualShaderNodeVectorBase_OpType =
  expandMethodBind(className VisualShaderNodeVectorBase, "get_op_type", 2568738462)
  var ret: encoded VisualShaderNodeVectorBase_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeVectorBase_OpType)

template opType*(self: VisualShaderNodeVectorBase): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeVectorBase; value) = self.setOpType(value)

const VisualShaderNodeVectorBase_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorBase]): Table[string, string] = VisualShaderNodeVectorBase_vmap