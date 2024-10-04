{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setDefaultValueEnabled*(self: VisualShaderNodeVec3Parameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeVec3Parameter, "set_default_value_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDefaultValueEnabled*(self: VisualShaderNodeVec3Parameter): bool =
  expandMethodBind(className VisualShaderNodeVec3Parameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeVec3Parameter; value: Vector3): void =
  expandMethodBind(className VisualShaderNodeVec3Parameter, "set_default_value", 3460891852)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultValue*(self: VisualShaderNodeVec3Parameter): Vector3 =
  expandMethodBind(className VisualShaderNodeVec3Parameter, "get_default_value", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

template defaultValueEnabled*(self: VisualShaderNodeVec3Parameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeVec3Parameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeVec3Parameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeVec3Parameter; value) = self.setDefaultValue(value)

const VisualShaderNodeVec3Parameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVec3Parameter]): Table[string, string] = VisualShaderNodeVec3Parameter_vmap