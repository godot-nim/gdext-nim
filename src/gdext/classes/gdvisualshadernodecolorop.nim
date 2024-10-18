{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeColorOp; op: VisualShaderNodeColorOp_Operator): void =
  expandMethodBind(className VisualShaderNodeColorOp, "set_operator", 4260370673)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeColorOp): VisualShaderNodeColorOp_Operator =
  expandMethodBind(className VisualShaderNodeColorOp, "get_operator", 1950956529)
  var ret: encoded VisualShaderNodeColorOp_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeColorOp_Operator)

template operator*(self: VisualShaderNodeColorOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeColorOp; value) = self.setOperator(value)

const VisualShaderNodeColorOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeColorOp]): Table[string, string] = VisualShaderNodeColorOp_vmap