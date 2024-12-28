{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeVec2Parameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeVec2Parameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDefaultValueEnabled*(self: VisualShaderNodeVec2Parameter): bool =
  expandMethodBind(className VisualShaderNodeVec2Parameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeVec2Parameter; value: Vector2): void =
  expandMethodBind(className VisualShaderNodeVec2Parameter, "set_default_value", 743155724)
  methodbind.ptrcall(self, [getPtr value])

proc getDefaultValue*(self: VisualShaderNodeVec2Parameter): Vector2 =
  expandMethodBind(className VisualShaderNodeVec2Parameter, "get_default_value", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template defaultValueEnabled*(self: VisualShaderNodeVec2Parameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeVec2Parameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeVec2Parameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeVec2Parameter; value) = self.setDefaultValue(value)

const VisualShaderNodeVec2Parameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec2Parameter]): Table[string, string] = VisualShaderNodeVec2Parameter_vmap