{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeFloatParameter, VisualShaderNodeParameter)

proc setHint*(self: VisualShaderNodeFloatParameter; hint: VisualShaderNodeFloatParameter_Hint): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_hint", 3712586466)
  methodbind.ptrcall(self, [getPtr hint], void)

proc getHint*(self: VisualShaderNodeFloatParameter): VisualShaderNodeFloatParameter_Hint =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "get_hint", 3042240429)
  methodbind.ptrcall(self, [], VisualShaderNodeFloatParameter_Hint)

proc setMin*(self: VisualShaderNodeFloatParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_min", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getMin*(self: VisualShaderNodeFloatParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "get_min", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMax*(self: VisualShaderNodeFloatParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_max", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getMax*(self: VisualShaderNodeFloatParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "get_max", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setStep*(self: VisualShaderNodeFloatParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getStep*(self: VisualShaderNodeFloatParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "get_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDefaultValueEnabled*(self: VisualShaderNodeFloatParameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeFloatParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeFloatParameter; value: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "set_default_value", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeFloatParameter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeFloatParameter, "get_default_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

template hint*(self: VisualShaderNodeFloatParameter): untyped = self.getHint()
template `hint=`*(self: VisualShaderNodeFloatParameter; value) = self.setHint(value)

template min*(self: VisualShaderNodeFloatParameter): untyped = self.getMin()
template `min=`*(self: VisualShaderNodeFloatParameter; value) = self.setMin(value)

template max*(self: VisualShaderNodeFloatParameter): untyped = self.getMax()
template `max=`*(self: VisualShaderNodeFloatParameter; value) = self.setMax(value)

template step*(self: VisualShaderNodeFloatParameter): untyped = self.getStep()
template `step=`*(self: VisualShaderNodeFloatParameter; value) = self.setStep(value)

template defaultValueEnabled*(self: VisualShaderNodeFloatParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeFloatParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeFloatParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeFloatParameter; value) = self.setDefaultValue(value)
