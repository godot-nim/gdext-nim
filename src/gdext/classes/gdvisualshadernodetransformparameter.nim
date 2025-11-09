{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeTransformParameter, VisualShaderNodeParameter)

proc setDefaultValueEnabled*(self: VisualShaderNodeTransformParameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeTransformParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformParameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeTransformParameter; value: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformParameter, "set_default_value", 2952846383)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeTransformParameter): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTransformParameter, "get_default_value", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

template defaultValueEnabled*(self: VisualShaderNodeTransformParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeTransformParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeTransformParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeTransformParameter; value) = self.setDefaultValue(value)
