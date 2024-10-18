{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeFloatOp; op: VisualShaderNodeFloatOp_Operator): void =
  expandMethodBind(className VisualShaderNodeFloatOp, "set_operator", 2488468047)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeFloatOp): VisualShaderNodeFloatOp_Operator =
  expandMethodBind(className VisualShaderNodeFloatOp, "get_operator", 1867979390)
  var ret: encoded VisualShaderNodeFloatOp_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeFloatOp_Operator)

template operator*(self: VisualShaderNodeFloatOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeFloatOp; value) = self.setOperator(value)

const VisualShaderNodeFloatOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFloatOp]): Table[string, string] = VisualShaderNodeFloatOp_vmap