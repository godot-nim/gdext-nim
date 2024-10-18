{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeUIntOp; op: VisualShaderNodeUIntOp_Operator): void =
  expandMethodBind(className VisualShaderNodeUIntOp, "set_operator", 3463048345)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeUIntOp): VisualShaderNodeUIntOp_Operator =
  expandMethodBind(className VisualShaderNodeUIntOp, "get_operator", 256631461)
  var ret: encoded VisualShaderNodeUIntOp_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeUIntOp_Operator)

template operator*(self: VisualShaderNodeUIntOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeUIntOp; value) = self.setOperator(value)

const VisualShaderNodeUIntOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUIntOp]): Table[string, string] = VisualShaderNodeUIntOp_vmap