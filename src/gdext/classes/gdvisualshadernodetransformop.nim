{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeTransformOp; op: VisualShaderNodeTransformOp_Operator): void =
  expandMethodBind(className VisualShaderNodeTransformOp, "set_operator", 2287310733)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeTransformOp): VisualShaderNodeTransformOp_Operator =
  expandMethodBind(className VisualShaderNodeTransformOp, "get_operator", 1238663601)
  var ret: encoded VisualShaderNodeTransformOp_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTransformOp_Operator)

template operator*(self: VisualShaderNodeTransformOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeTransformOp; value) = self.setOperator(value)

const VisualShaderNodeTransformOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformOp]): Table[string, string] = VisualShaderNodeTransformOp_vmap