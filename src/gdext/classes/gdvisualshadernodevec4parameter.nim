{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeVec4Parameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeVec4Parameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDefaultValueEnabled*(self: VisualShaderNodeVec4Parameter): bool =
  expandMethodBind(className VisualShaderNodeVec4Parameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeVec4Parameter; value: Vector4): void =
  expandMethodBind(className VisualShaderNodeVec4Parameter, "set_default_value", 643568085)
  methodbind.ptrcall(self, [getPtr value])

proc getDefaultValue*(self: VisualShaderNodeVec4Parameter): Vector4 =
  expandMethodBind(className VisualShaderNodeVec4Parameter, "get_default_value", 2435802345)
  var ret: encoded Vector4
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector4)

template defaultValueEnabled*(self: VisualShaderNodeVec4Parameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeVec4Parameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeVec4Parameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeVec4Parameter; value) = self.setDefaultValue(value)

const VisualShaderNodeVec4Parameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec4Parameter]): Table[string, string] = VisualShaderNodeVec4Parameter_vmap