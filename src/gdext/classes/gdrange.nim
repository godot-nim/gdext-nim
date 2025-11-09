{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(Range, Control)

method valueChanged*(self: Range; newValue: float64): void {.base.} = (discard)
proc registerVirtual_valueChanged*[T: Range](Self: typedesc[T]) =
  Self.vmethods[newStringName"_value_changed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Range](p_instance).valueChanged(p_args[0].decode(float64))

proc getValue*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_value", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getMin*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_min", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getMax*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_max", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getStep*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_step", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getPage*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_page", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getAsRatio*(self: Range): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "get_as_ratio", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setValue*(self: Range; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_value", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc setValueNoSignal*(self: Range; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_value_no_signal", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc setMin*(self: Range; minimum: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_min", 373806689)
  methodbind.ptrcall(self, [getPtr minimum], void)

proc setMax*(self: Range; maximum: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_max", 373806689)
  methodbind.ptrcall(self, [getPtr maximum], void)

proc setStep*(self: Range; step: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr step], void)

proc setPage*(self: Range; pagesize: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_page", 373806689)
  methodbind.ptrcall(self, [getPtr pagesize], void)

proc setAsRatio*(self: Range; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_as_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc setUseRoundedValues*(self: Range; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_use_rounded_values", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingRoundedValues*(self: Range): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "is_using_rounded_values", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setExpRatio*(self: Range; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_exp_ratio", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRatioExp*(self: Range): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "is_ratio_exp", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowGreater*(self: Range; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_allow_greater", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc isGreaterAllowed*(self: Range): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "is_greater_allowed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowLesser*(self: Range; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "set_allow_lesser", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc isLesserAllowed*(self: Range): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "is_lesser_allowed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc share*(self: Range; with: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "share", 1078189570)
  methodbind.ptrcall(self, [getPtr with], void)

proc unshare*(self: Range): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Range, "unshare", 3218959716)
  methodbind.ptrcall(self, [], void)

template minValue*(self: Range): untyped = self.getMin()
template `minValue=`*(self: Range; value) = self.setMin(value)

template maxValue*(self: Range): untyped = self.getMax()
template `maxValue=`*(self: Range; value) = self.setMax(value)

template step*(self: Range): untyped = self.getStep()
template `step=`*(self: Range; value) = self.setStep(value)

template page*(self: Range): untyped = self.getPage()
template `page=`*(self: Range; value) = self.setPage(value)

template value*(self: Range): untyped = self.getValue()
template `value=`*(self: Range; value) = self.setValue(value)

template ratio*(self: Range): untyped = self.getAsRatio()
template `ratio=`*(self: Range; value) = self.setAsRatio(value)

template expEdit*(self: Range): untyped = self.isRatioExp()
template `expEdit=`*(self: Range; value) = self.setExpRatio(value)

template rounded*(self: Range): untyped = self.isUsingRoundedValues()
template `rounded=`*(self: Range; value) = self.setUseRoundedValues(value)

template allowGreater*(self: Range): untyped = self.isGreaterAllowed()
template `allowGreater=`*(self: Range; value) = self.setAllowGreater(value)

template allowLesser*(self: Range): untyped = self.isLesserAllowed()
template `allowLesser=`*(self: Range; value) = self.setAllowLesser(value)
