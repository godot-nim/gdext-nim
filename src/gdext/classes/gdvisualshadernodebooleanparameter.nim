{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeBooleanParameter, VisualShaderNodeParameter)

proc setDefaultValueEnabled*(self: VisualShaderNodeBooleanParameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeBooleanParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanParameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeBooleanParameter; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanParameter, "set_default_value", 2586408642)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeBooleanParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeBooleanParameter, "get_default_value", 36873697)
  methodbind.ptrcall(self, [], bool)

template defaultValueEnabled*(self: VisualShaderNodeBooleanParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeBooleanParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeBooleanParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeBooleanParameter; value) = self.setDefaultValue(value)
