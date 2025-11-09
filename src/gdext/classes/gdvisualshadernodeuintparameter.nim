{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeUIntParameter, VisualShaderNodeParameter)

proc setDefaultValueEnabled*(self: VisualShaderNodeUIntParameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeUIntParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntParameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeUIntParameter; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntParameter, "set_default_value", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeUIntParameter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeUIntParameter, "get_default_value", 3905245786)
  methodbind.ptrcall(self, [], int32)

template defaultValueEnabled*(self: VisualShaderNodeUIntParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeUIntParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeUIntParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeUIntParameter; value) = self.setDefaultValue(value)
