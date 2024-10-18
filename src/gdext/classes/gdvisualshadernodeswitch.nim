{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeSwitch; `type`: VisualShaderNodeSwitch_OpType): void =
  expandMethodBind(className VisualShaderNodeSwitch, "set_op_type", 510471861)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeSwitch): VisualShaderNodeSwitch_OpType =
  expandMethodBind(className VisualShaderNodeSwitch, "get_op_type", 2517845071)
  var ret: encoded VisualShaderNodeSwitch_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeSwitch_OpType)

template opType*(self: VisualShaderNodeSwitch): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeSwitch; value) = self.setOpType(value)

const VisualShaderNodeSwitch_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeSwitch]): Table[string, string] = VisualShaderNodeSwitch_vmap