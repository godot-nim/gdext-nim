{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOperator*(self: VisualShaderNodeTransformVecMult; op: VisualShaderNodeTransformVecMult_Operator): void =
  expandMethodBind(className VisualShaderNodeTransformVecMult, "set_operator", 1785665912)
  var `?param` = [getPtr op]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperator*(self: VisualShaderNodeTransformVecMult): VisualShaderNodeTransformVecMult_Operator =
  expandMethodBind(className VisualShaderNodeTransformVecMult, "get_operator", 1622088722)
  var ret: encoded VisualShaderNodeTransformVecMult_Operator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeTransformVecMult_Operator)

template operator*(self: VisualShaderNodeTransformVecMult): untyped = self.getOperator()
template `operator=`*(self: VisualShaderNodeTransformVecMult; value) = self.setOperator(value)

const VisualShaderNodeTransformVecMult_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformVecMult]): Table[string, string] = VisualShaderNodeTransformVecMult_vmap