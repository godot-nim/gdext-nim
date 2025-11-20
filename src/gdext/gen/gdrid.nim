# `==(RID Variant)`
# `!=(RID Variant)`
var `not(RID)`: PtrOperatorEvaluator
var `==(RID RID)`: PtrOperatorEvaluator
# `!=(RID RID)`
var `<(RID RID)`: PtrOperatorEvaluator
var `<=(RID RID)`: PtrOperatorEvaluator
# `>(RID RID)`
# `>=(RID RID)`
# `in(RID Dictionary)`
# `in(RID Array)`
func `not`*(left: RID): bool = {.noSideEffect.}: `not(RID)`(getPtr left, nil, addr result)
func `==`*(left: RID; right: RID): bool = {.noSideEffect.}: `==(RID RID)`(getPtr left, getPtr right, addr result)
func `<`*(left: RID; right: RID): bool = {.noSideEffect.}: `<(RID RID)`(getPtr left, getPtr right, addr result)
func `<=`*(left: RID; right: RID): bool = {.noSideEffect.}: `<=(RID RID)`(getPtr left, getPtr right, addr result)
proc load_RID_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(RID)` = load(opNot, VariantType_RID, VariantType_Nil)
  `==(RID RID)` = load(opEqual, VariantType_RID, VariantType_RID)
  `<(RID RID)` = load(opLess, VariantType_RID, VariantType_RID)
  `<=(RID RID)` = load(opLessEqual, VariantType_RID, VariantType_RID)

var `isValid(RID)`: PtrBuiltinMethod
var `getId(RID)`: PtrBuiltinMethod

proc isValid*(self: RID): bool =
  `isValid(RID)`.call(addr self, [], addr result)
proc getId*(self: RID): Int =
  `getId(RID)`.call(addr self, [], addr result)

proc load_RID_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isValid(RID)` = load(VariantType_RID, "is_valid", 3918633141)
  `getId(RID)` = load(VariantType_RID, "get_id", 3173160232)
