{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParameter, VisualShaderNode)

proc setParameterName*(self: VisualShaderNodeParameter; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameter, "set_parameter_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getParameterName*(self: VisualShaderNodeParameter): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameter, "get_parameter_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setQualifier*(self: VisualShaderNodeParameter; qualifier: VisualShaderNodeParameter_Qualifier): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameter, "set_qualifier", 1276489447)
  methodbind.ptrcall(self, [getPtr qualifier], void)

proc getQualifier*(self: VisualShaderNodeParameter): VisualShaderNodeParameter_Qualifier =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameter, "get_qualifier", 3558406205)
  methodbind.ptrcall(self, [], VisualShaderNodeParameter_Qualifier)

template parameterName*(self: VisualShaderNodeParameter): untyped = self.getParameterName()
template `parameterName=`*(self: VisualShaderNodeParameter; value) = self.setParameterName(value)

template qualifier*(self: VisualShaderNodeParameter): untyped = self.getQualifier()
template `qualifier=`*(self: VisualShaderNodeParameter; value) = self.setQualifier(value)
