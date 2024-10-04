{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeColorParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeColorParameter, "set_default_value_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDefaultValueEnabled*(self: VisualShaderNodeColorParameter): bool =
  expandMethodBind(className VisualShaderNodeColorParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeColorParameter; value: Color): void =
  expandMethodBind(className VisualShaderNodeColorParameter, "set_default_value", 2920490490)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultValue*(self: VisualShaderNodeColorParameter): Color =
  expandMethodBind(className VisualShaderNodeColorParameter, "get_default_value", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

template defaultValueEnabled*(self: VisualShaderNodeColorParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeColorParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeColorParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeColorParameter; value) = self.setDefaultValue(value)

const VisualShaderNodeColorParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeColorParameter]): Table[string, string] = VisualShaderNodeColorParameter_vmap