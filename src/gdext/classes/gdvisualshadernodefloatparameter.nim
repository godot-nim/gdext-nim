{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setHint*(self: VisualShaderNodeFloatParameter; hint: VisualShaderNodeFloatParameter_Hint): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_hint", 3712586466)
  methodbind.ptrcall(self, [getPtr hint])

proc getHint*(self: VisualShaderNodeFloatParameter): VisualShaderNodeFloatParameter_Hint =
  expandMethodBind(className VisualShaderNodeFloatParameter, "get_hint", 3042240429)
  var ret: encoded VisualShaderNodeFloatParameter_Hint
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeFloatParameter_Hint)

proc setMin*(self: VisualShaderNodeFloatParameter; value: Float): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_min", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getMin*(self: VisualShaderNodeFloatParameter): Float =
  expandMethodBind(className VisualShaderNodeFloatParameter, "get_min", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMax*(self: VisualShaderNodeFloatParameter; value: Float): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_max", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getMax*(self: VisualShaderNodeFloatParameter): Float =
  expandMethodBind(className VisualShaderNodeFloatParameter, "get_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setStep*(self: VisualShaderNodeFloatParameter; value: Float): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getStep*(self: VisualShaderNodeFloatParameter): Float =
  expandMethodBind(className VisualShaderNodeFloatParameter, "get_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDefaultValueEnabled*(self: VisualShaderNodeFloatParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_default_value_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDefaultValueEnabled*(self: VisualShaderNodeFloatParameter): bool =
  expandMethodBind(className VisualShaderNodeFloatParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeFloatParameter; value: Float): void =
  expandMethodBind(className VisualShaderNodeFloatParameter, "set_default_value", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getDefaultValue*(self: VisualShaderNodeFloatParameter): Float =
  expandMethodBind(className VisualShaderNodeFloatParameter, "get_default_value", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const VisualShaderNodeFloatParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFloatParameter]): Table[string, string] = VisualShaderNodeFloatParameter_vmap