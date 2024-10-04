{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparameter; export gdvisualshadernodeparameter

proc setHint*(self: VisualShaderNodeIntParameter; hint: VisualShaderNodeIntParameter_Hint): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_hint", 2540512075)
  var `?param` = [getPtr hint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHint*(self: VisualShaderNodeIntParameter): VisualShaderNodeIntParameter_Hint =
  expandMethodBind(className VisualShaderNodeIntParameter, "get_hint", 4250814924)
  var ret: encoded VisualShaderNodeIntParameter_Hint
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeIntParameter_Hint)

proc setMin*(self: VisualShaderNodeIntParameter; value: int32): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_min", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMin*(self: VisualShaderNodeIntParameter): int32 =
  expandMethodBind(className VisualShaderNodeIntParameter, "get_min", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMax*(self: VisualShaderNodeIntParameter; value: int32): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_max", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMax*(self: VisualShaderNodeIntParameter): int32 =
  expandMethodBind(className VisualShaderNodeIntParameter, "get_max", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setStep*(self: VisualShaderNodeIntParameter; value: int32): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_step", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStep*(self: VisualShaderNodeIntParameter): int32 =
  expandMethodBind(className VisualShaderNodeIntParameter, "get_step", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDefaultValueEnabled*(self: VisualShaderNodeIntParameter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_default_value_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDefaultValueEnabled*(self: VisualShaderNodeIntParameter): bool =
  expandMethodBind(className VisualShaderNodeIntParameter, "is_default_value_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDefaultValue*(self: VisualShaderNodeIntParameter; value: int32): void =
  expandMethodBind(className VisualShaderNodeIntParameter, "set_default_value", 1286410249)
  var `?param` = [getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultValue*(self: VisualShaderNodeIntParameter): int32 =
  expandMethodBind(className VisualShaderNodeIntParameter, "get_default_value", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template hint*(self: VisualShaderNodeIntParameter): untyped = self.getHint()
template `hint=`*(self: VisualShaderNodeIntParameter; value) = self.setHint(value)

template min*(self: VisualShaderNodeIntParameter): untyped = self.getMin()
template `min=`*(self: VisualShaderNodeIntParameter; value) = self.setMin(value)

template max*(self: VisualShaderNodeIntParameter): untyped = self.getMax()
template `max=`*(self: VisualShaderNodeIntParameter; value) = self.setMax(value)

template step*(self: VisualShaderNodeIntParameter): untyped = self.getStep()
template `step=`*(self: VisualShaderNodeIntParameter; value) = self.setStep(value)

template defaultValueEnabled*(self: VisualShaderNodeIntParameter): untyped = self.isDefaultValueEnabled()
template `defaultValueEnabled=`*(self: VisualShaderNodeIntParameter; value) = self.setDefaultValueEnabled(value)

template defaultValue*(self: VisualShaderNodeIntParameter): untyped = self.getDefaultValue()
template `defaultValue=`*(self: VisualShaderNodeIntParameter; value) = self.setDefaultValue(value)

const VisualShaderNodeIntParameter_vmap =
  VisualShaderNodeParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeIntParameter]): Table[string, string] = VisualShaderNodeIntParameter_vmap