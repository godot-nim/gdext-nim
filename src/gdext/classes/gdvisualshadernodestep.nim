{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeStep; opType: VisualShaderNodeStep_OpType): void =
  expandMethodBind(className VisualShaderNodeStep, "set_op_type", 715172489)
  var `?param` = [getPtr opType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeStep): VisualShaderNodeStep_OpType =
  expandMethodBind(className VisualShaderNodeStep, "get_op_type", 3274022781)
  var ret: encoded VisualShaderNodeStep_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeStep_OpType)

template opType*(self: VisualShaderNodeStep): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeStep; value) = self.setOpType(value)

const VisualShaderNodeStep_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeStep]): Table[string, string] = VisualShaderNodeStep_vmap