{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeVec3Parameter, VisualShaderNodeParameter)

proc setDefaultValueEnabled*(self: VisualShaderNodeVec3Parameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Parameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeVec3Parameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Parameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeVec3Parameter; value: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Parameter, "set_default_value", 3460891852)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeVec3Parameter): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeVec3Parameter, "get_default_value", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

template defaultValueEnabled*(self: VisualShaderNodeVec3Parameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeVec3Parameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeVec3Parameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeVec3Parameter; value) = self.setDefaultValue(value)
