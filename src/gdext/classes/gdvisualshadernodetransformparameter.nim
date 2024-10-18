{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeTransformParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeTransformParameter, "set_default_value_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDefaultValueEnabled*(self: VisualShaderNodeTransformParameter): bool =
  expandMethodBind(className VisualShaderNodeTransformParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeTransformParameter; value: Transform3D): void =
  expandMethodBind(className VisualShaderNodeTransformParameter, "set_default_value", 2952846383)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultValue*(self: VisualShaderNodeTransformParameter): Transform3D =
  expandMethodBind(className VisualShaderNodeTransformParameter, "get_default_value", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

template defaultValueEnabled*(self: VisualShaderNodeTransformParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeTransformParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeTransformParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeTransformParameter; value) = self.setDefaultValue(value)

const VisualShaderNodeTransformParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformParameter]): Table[string, string] = VisualShaderNodeTransformParameter_vmap