{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeBillboard, VisualShaderNode)

proc setBillboardType*(self: VisualShaderNodeBillboard; billboardType: VisualShaderNodeBillboard_BillboardType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBillboard, "set_billboard_type", 1227463289)
  methodbind.ptrcall(self, [getPtr billboardType], void)

proc getBillboardType*(self: VisualShaderNodeBillboard): VisualShaderNodeBillboard_BillboardType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBillboard, "get_billboard_type", 3724188517)
  methodbind.ptrcall(self, [], VisualShaderNodeBillboard_BillboardType)

proc setKeepScaleEnabled*(self: VisualShaderNodeBillboard; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBillboard, "set_keep_scale_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isKeepScaleEnabled*(self: VisualShaderNodeBillboard): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBillboard, "is_keep_scale_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template billboardType*(self: VisualShaderNodeBillboard): untyped = self.getBillboardType()
template `billboardType=`*(self: VisualShaderNodeBillboard; value) = self.setBillboardType(value)

template keepScale*(self: VisualShaderNodeBillboard): untyped = self.isKeepScaleEnabled()
template `keepScale=`*(self: VisualShaderNodeBillboard; value) = self.setKeepScaleEnabled(value)
