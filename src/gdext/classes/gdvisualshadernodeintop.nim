{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeIntOp; op: VisualShaderNodeIntOp_Operator): void =
  expandMethodBind(className VisualShaderNodeIntOp, "set_operator", 1677909323)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeIntOp): VisualShaderNodeIntOp_Operator =
  expandMethodBind(className VisualShaderNodeIntOp, "get_operator", 1236987913)
  var ret: encoded VisualShaderNodeIntOp_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeIntOp_Operator)

template operator*(self: VisualShaderNodeIntOp): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeIntOp; value) = self.setOperator(value)

const VisualShaderNodeIntOp_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIntOp]): Table[string, string] = VisualShaderNodeIntOp_vmap