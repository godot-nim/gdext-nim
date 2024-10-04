{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setVaryingName*(self: VisualShaderNodeVarying; name: String): void =
  expandMethodBind(className VisualShaderNodeVarying, "set_varying_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVaryingName*(self: VisualShaderNodeVarying): String =
  expandMethodBind(className VisualShaderNodeVarying, "get_varying_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setVaryingType*(self: VisualShaderNodeVarying; `type`: VisualShader_VaryingType): void =
  expandMethodBind(className VisualShaderNodeVarying, "set_varying_type", 3565867981)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVaryingType*(self: VisualShaderNodeVarying): VisualShader_VaryingType =
  expandMethodBind(className VisualShaderNodeVarying, "get_varying_type", 523183580)
  var ret: encoded VisualShader_VaryingType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShader_VaryingType)

template varyingName*(self: VisualShaderNodeVarying): untyped = self.getVaryingName()
template `varyingName=`*(self: VisualShaderNodeVarying; value) = self.setVaryingName(value)

template varyingType*(self: VisualShaderNodeVarying): untyped = self.getVaryingType()
template `varyingType=`*(self: VisualShaderNodeVarying; value) = self.setVaryingType(value)

const VisualShaderNodeVarying_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVarying]): Table[string, string] = VisualShaderNodeVarying_vmap