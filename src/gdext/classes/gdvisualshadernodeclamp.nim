{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeClamp; opType: VisualShaderNodeClamp_OpType): void =
  expandMethodBind(className VisualShaderNodeClamp, "set_op_type", 405010749)
  var `?param` = [getPtr opType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeClamp): VisualShaderNodeClamp_OpType =
  expandMethodBind(className VisualShaderNodeClamp, "get_op_type", 233276050)
  var ret: encoded VisualShaderNodeClamp_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeClamp_OpType)

template opType*(self: VisualShaderNodeClamp): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeClamp; value) = self.setOpType(value)

const VisualShaderNodeClamp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeClamp]): Table[string, string] = VisualShaderNodeClamp_vmap