{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

expandOnClassImported(VisualShaderNodeIntParameter, VisualShaderNodeParameter)

proc setHint*(self: VisualShaderNodeIntParameter; hint: VisualShaderNodeIntParameter_Hint): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_hint", 2540512075)
  methodbind.ptrcall(self, [getPtr hint], void)

proc getHint*(self: VisualShaderNodeIntParameter): VisualShaderNodeIntParameter_Hint =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_hint", 4250814924)
  methodbind.ptrcall(self, [], VisualShaderNodeIntParameter_Hint)

proc setMin*(self: VisualShaderNodeIntParameter; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_min", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getMin*(self: VisualShaderNodeIntParameter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_min", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMax*(self: VisualShaderNodeIntParameter; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_max", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getMax*(self: VisualShaderNodeIntParameter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_max", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStep*(self: VisualShaderNodeIntParameter; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_step", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getStep*(self: VisualShaderNodeIntParameter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_step", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setEnumNames*(self: VisualShaderNodeIntParameter; names: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_enum_names", 4015028928)
  methodbind.ptrcall(self, [getPtr names], void)

proc getEnumNames*(self: VisualShaderNodeIntParameter): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_enum_names", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setDefaultValueEnabled*(self: VisualShaderNodeIntParameter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultValueEnabled*(self: VisualShaderNodeIntParameter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "is_default_value_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultValue*(self: VisualShaderNodeIntParameter; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "set_default_value", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getDefaultValue*(self: VisualShaderNodeIntParameter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeIntParameter, "get_default_value", 3905245786)
  methodbind.ptrcall(self, [], int32)

template hint*(self: VisualShaderNodeIntParameter): untyped = self.getHint()
template `hint=`*(self: VisualShaderNodeIntParameter; value) = self.setHint(value)

template min*(self: VisualShaderNodeIntParameter): untyped = self.getMin()
template `min=`*(self: VisualShaderNodeIntParameter; value) = self.setMin(value)

template max*(self: VisualShaderNodeIntParameter): untyped = self.getMax()
template `max=`*(self: VisualShaderNodeIntParameter; value) = self.setMax(value)

template step*(self: VisualShaderNodeIntParameter): untyped = self.getStep()
template `step=`*(self: VisualShaderNodeIntParameter; value) = self.setStep(value)

template enumNames*(self: VisualShaderNodeIntParameter): untyped = self.getEnumNames()
template `enumNames=`*(self: VisualShaderNodeIntParameter; value) = self.setEnumNames(value)

template defaultValueEnabled*(self: VisualShaderNodeIntParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeIntParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeIntParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeIntParameter; value) = self.setDefaultValue(value)
