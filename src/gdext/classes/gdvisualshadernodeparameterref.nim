{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setParameterName*(self: VisualShaderNodeParameterRef; name: String): void =
  expandMethodBind(className VisualShaderNodeParameterRef, "set_parameter_name", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getParameterName*(self: VisualShaderNodeParameterRef): String =
  expandMethodBind(className VisualShaderNodeParameterRef, "get_parameter_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template parameterName*(self: VisualShaderNodeParameterRef): untyped = self.getParameterName()
template `parameterName=`*(self: VisualShaderNodeParameterRef; value) = self.setParameterName(value)

template paramType*(self: VisualShaderNodeParameterRef): untyped = self.getParameterType()
template `paramType=`*(self: VisualShaderNodeParameterRef; value) = self.setParameterType(value)

const VisualShaderNodeParameterRef_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParameterRef]): Table[string, string] = VisualShaderNodeParameterRef_vmap