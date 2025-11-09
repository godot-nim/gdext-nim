{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParameterRef, VisualShaderNode)

proc setParameterName*(self: VisualShaderNodeParameterRef; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameterRef, "set_parameter_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getParameterName*(self: VisualShaderNodeParameterRef): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParameterRef, "get_parameter_name", 201670096)
  methodbind.ptrcall(self, [], String)

template parameterName*(self: VisualShaderNodeParameterRef): untyped = self.getParameterName()
template `parameterName=`*(self: VisualShaderNodeParameterRef; value) = self.setParameterName(value)

template paramType*(self: VisualShaderNodeParameterRef): untyped = self.getParameterType()
template `paramType=`*(self: VisualShaderNodeParameterRef; value) = self.setParameterType(value)
