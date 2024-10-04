{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setBillboardType*(self: VisualShaderNodeBillboard; billboardType: VisualShaderNodeBillboard_BillboardType): void =
  expandMethodBind(className VisualShaderNodeBillboard, "set_billboard_type", 1227463289)
  var `?param` = [getPtr billboardType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBillboardType*(self: VisualShaderNodeBillboard): VisualShaderNodeBillboard_BillboardType =
  expandMethodBind(className VisualShaderNodeBillboard, "get_billboard_type", 3724188517)
  var ret: encoded VisualShaderNodeBillboard_BillboardType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeBillboard_BillboardType)

proc setKeepScaleEnabled*(self: VisualShaderNodeBillboard; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeBillboard, "set_keep_scale_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isKeepScaleEnabled*(self: VisualShaderNodeBillboard): bool =
  expandMethodBind(className VisualShaderNodeBillboard, "is_keep_scale_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template billboardType*(self: VisualShaderNodeBillboard): untyped = self.getBillboardType()
template `billboardType=`*(self: VisualShaderNodeBillboard; value) = self.setBillboardType(value)

template keepScale*(self: VisualShaderNodeBillboard): untyped = self.isKeepScaleEnabled()
template `keepScale=`*(self: VisualShaderNodeBillboard; value) = self.setKeepScaleEnabled(value)

const VisualShaderNodeBillboard_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeBillboard]): Table[string, string] = VisualShaderNodeBillboard_vmap