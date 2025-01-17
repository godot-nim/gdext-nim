{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setParameterName*(self: VisualShaderNodeParameter; name: String): void =
  expandMethodBind(className VisualShaderNodeParameter, "set_parameter_name", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getParameterName*(self: VisualShaderNodeParameter): String =
  expandMethodBind(className VisualShaderNodeParameter, "get_parameter_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setQualifier*(self: VisualShaderNodeParameter; qualifier: VisualShaderNodeParameter_Qualifier): void =
  expandMethodBind(className VisualShaderNodeParameter, "set_qualifier", 1276489447)
  methodbind.ptrcall(self, [getPtr qualifier])

proc getQualifier*(self: VisualShaderNodeParameter): VisualShaderNodeParameter_Qualifier =
  expandMethodBind(className VisualShaderNodeParameter, "get_qualifier", 3558406205)
  var ret: encoded VisualShaderNodeParameter_Qualifier
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeParameter_Qualifier)

template parameterName*(self: VisualShaderNodeParameter): untyped = self.getParameterName()
template `parameterName=`*(self: VisualShaderNodeParameter; value) = self.setParameterName(value)

template qualifier*(self: VisualShaderNodeParameter): untyped = self.getQualifier()
template `qualifier=`*(self: VisualShaderNodeParameter; value) = self.setQualifier(value)

const VisualShaderNodeParameter_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParameter]): Table[string, string] = VisualShaderNodeParameter_vmap