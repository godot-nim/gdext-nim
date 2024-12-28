{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method valueChanged*(self: Range; newValue: float64): void {.base.} = (discard)
proc valueChanged(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Range](p_instance).valueChanged(p_args[0].decode(float64))
template valueChanged_bind*(_: typedesc[Range]): ClassCallVirtual = valueChanged

proc getValue*(self: Range): float64 =
  expandMethodBind(className Range, "get_value", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getMin*(self: Range): float64 =
  expandMethodBind(className Range, "get_min", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getMax*(self: Range): float64 =
  expandMethodBind(className Range, "get_max", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getStep*(self: Range): float64 =
  expandMethodBind(className Range, "get_step", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getPage*(self: Range): float64 =
  expandMethodBind(className Range, "get_page", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getAsRatio*(self: Range): float64 =
  expandMethodBind(className Range, "get_as_ratio", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setValue*(self: Range; value: float64): void =
  expandMethodBind(className Range, "set_value", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc setValueNoSignal*(self: Range; value: float64): void =
  expandMethodBind(className Range, "set_value_no_signal", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc setMin*(self: Range; minimum: float64): void =
  expandMethodBind(className Range, "set_min", 373806689)
  methodbind.ptrcall(self, [getPtr minimum])

proc setMax*(self: Range; maximum: float64): void =
  expandMethodBind(className Range, "set_max", 373806689)
  methodbind.ptrcall(self, [getPtr maximum])

proc setStep*(self: Range; step: float64): void =
  expandMethodBind(className Range, "set_step", 373806689)
  methodbind.ptrcall(self, [getPtr step])

proc setPage*(self: Range; pagesize: float64): void =
  expandMethodBind(className Range, "set_page", 373806689)
  methodbind.ptrcall(self, [getPtr pagesize])

proc setAsRatio*(self: Range; value: float64): void =
  expandMethodBind(className Range, "set_as_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc setUseRoundedValues*(self: Range; enabled: bool): void =
  expandMethodBind(className Range, "set_use_rounded_values", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isUsingRoundedValues*(self: Range): bool =
  expandMethodBind(className Range, "is_using_rounded_values", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setExpRatio*(self: Range; enabled: bool): void =
  expandMethodBind(className Range, "set_exp_ratio", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isRatioExp*(self: Range): bool =
  expandMethodBind(className Range, "is_ratio_exp", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowGreater*(self: Range; allow: bool): void =
  expandMethodBind(className Range, "set_allow_greater", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

proc isGreaterAllowed*(self: Range): bool =
  expandMethodBind(className Range, "is_greater_allowed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowLesser*(self: Range; allow: bool): void =
  expandMethodBind(className Range, "set_allow_lesser", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

proc isLesserAllowed*(self: Range): bool =
  expandMethodBind(className Range, "is_lesser_allowed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc share*(self: Range; with: Node): void =
  expandMethodBind(className Range, "share", 1078189570)
  methodbind.ptrcall(self, [getPtr with])

proc unshare*(self: Range): void =
  expandMethodBind(className Range, "unshare", 3218959716)
  methodbind.ptrcall(self, [])

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

const Range_vmap =
  Control.vmap.concat toTable {
    "valuechanged" : "_value_changed",
    }
template vmap*(_: typedesc[Range]): Table[string, string] = Range_vmap

proc valueChanged*(self: Range; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("value_changed")
  let args = [value]
  self.emitSignal(signalname, args)

proc changed*(self: Range): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)