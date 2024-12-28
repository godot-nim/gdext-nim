{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeUIntParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeUIntParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDefaultValueEnabled*(self: VisualShaderNodeUIntParameter): bool =
  expandMethodBind(className VisualShaderNodeUIntParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeUIntParameter; value: int32): void =
  expandMethodBind(className VisualShaderNodeUIntParameter, "set_default_value", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc getDefaultValue*(self: VisualShaderNodeUIntParameter): int32 =
  expandMethodBind(className VisualShaderNodeUIntParameter, "get_default_value", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template defaultValueEnabled*(self: VisualShaderNodeUIntParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeUIntParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeUIntParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeUIntParameter; value) = self.setDefaultValue(value)

const VisualShaderNodeUIntParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeUIntParameter]): Table[string, string] = VisualShaderNodeUIntParameter_vmap