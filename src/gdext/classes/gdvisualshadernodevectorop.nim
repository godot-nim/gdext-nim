{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

proc setOperator*(self: VisualShaderNodeVectorOp; op: VisualShaderNodeVectorOp_Operator): void =
  expandMethodBind(className VisualShaderNodeVectorOp, "set_operator", 3371507302)
  methodbind.ptrcall(self, [getPtr op])

proc getOperator*(self: VisualShaderNodeVectorOp): VisualShaderNodeVectorOp_Operator =
  expandMethodBind(className VisualShaderNodeVectorOp, "get_operator", 11793929)
  var ret: encoded VisualShaderNodeVectorOp_Operator
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeVectorOp_Operator)

template operator*(self: VisualShaderNodeVectorOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeVectorOp; value) = self.setOperator(value)

const VisualShaderNodeVectorOp_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorOp]): Table[string, string] = VisualShaderNodeVectorOp_vmap