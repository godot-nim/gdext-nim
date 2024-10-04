{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeBooleanParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeBooleanParameter, "set_default_value_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDefaultValueEnabled*(self: VisualShaderNodeBooleanParameter): bool =
  expandMethodBind(className VisualShaderNodeBooleanParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeBooleanParameter; value: bool): void =
  expandMethodBind(className VisualShaderNodeBooleanParameter, "set_default_value", 2586408642)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultValue*(self: VisualShaderNodeBooleanParameter): bool =
  expandMethodBind(className VisualShaderNodeBooleanParameter, "get_default_value", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template defaultValueEnabled*(self: VisualShaderNodeBooleanParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeBooleanParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeBooleanParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeBooleanParameter; value) = self.setDefaultValue(value)

const VisualShaderNodeBooleanParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeBooleanParameter]): Table[string, string] = VisualShaderNodeBooleanParameter_vmap