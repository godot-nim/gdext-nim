{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeIntOp; op: VisualShaderNodeIntOp_Operator): void =
  expandMethodBind(className VisualShaderNodeIntOp, "set_operator", 1677909323)
  methodbind.ptrcall(self, [getPtr op])

proc getOperator*(self: VisualShaderNodeIntOp): VisualShaderNodeIntOp_Operator =
  expandMethodBind(className VisualShaderNodeIntOp, "get_operator", 1236987913)
  var ret: encoded VisualShaderNodeIntOp_Operator
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeIntOp_Operator)

template operator*(self: VisualShaderNodeIntOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeIntOp; value) = self.setOperator(value)

const VisualShaderNodeIntOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIntOp]): Table[string, string] = VisualShaderNodeIntOp_vmap