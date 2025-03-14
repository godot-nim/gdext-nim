# `==(bool Variant)`
# `!=(bool Variant)`
# `and(bool Variant)`
# `or(bool Variant)`
# `xor(bool Variant)`
# `not(bool)`
# `==(bool bool)`
# `!=(bool bool)`
# `<(bool bool)`
# `>(bool bool)`
# `and(bool bool)`
# `or(bool bool)`
# `xor(bool bool)`
var `and(bool Int)`: PtrOperatorEvaluator
var `or(bool Int)`: PtrOperatorEvaluator
var `xor(bool Int)`: PtrOperatorEvaluator
var `and(bool Float)`: PtrOperatorEvaluator
var `or(bool Float)`: PtrOperatorEvaluator
var `xor(bool Float)`: PtrOperatorEvaluator
var `and(bool Object)`: PtrOperatorEvaluator
var `or(bool Object)`: PtrOperatorEvaluator
var `xor(bool Object)`: PtrOperatorEvaluator
# `in(bool Dictionary)`
# `in(bool Array)`
func `and`*(left: bool; right: Int): bool = {.noSideEffect.}: `and(bool Int)`(getPtr left, getPtr right, addr result)
func `or`*(left: bool; right: Int): bool = {.noSideEffect.}: `or(bool Int)`(getPtr left, getPtr right, addr result)
func `xor`*(left: bool; right: Int): bool = {.noSideEffect.}: `xor(bool Int)`(getPtr left, getPtr right, addr result)
func `and`*(left: bool; right: Float): bool = {.noSideEffect.}: `and(bool Float)`(getPtr left, getPtr right, addr result)
func `or`*(left: bool; right: Float): bool = {.noSideEffect.}: `or(bool Float)`(getPtr left, getPtr right, addr result)
func `xor`*(left: bool; right: Float): bool = {.noSideEffect.}: `xor(bool Float)`(getPtr left, getPtr right, addr result)
func `and`*(left: bool; right: Object): bool = {.noSideEffect.}: `and(bool Object)`(getPtr left, getPtr right, addr result)
func `or`*(left: bool; right: Object): bool = {.noSideEffect.}: `or(bool Object)`(getPtr left, getPtr right, addr result)
func `xor`*(left: bool; right: Object): bool = {.noSideEffect.}: `xor(bool Object)`(getPtr left, getPtr right, addr result)
proc load_bool_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `and(bool Int)` = load(opAnd, VariantType_bool, VariantType_Int)
  `or(bool Int)` = load(opOr, VariantType_bool, VariantType_Int)
  `xor(bool Int)` = load(opXor, VariantType_bool, VariantType_Int)
  `and(bool Float)` = load(opAnd, VariantType_bool, VariantType_Float)
  `or(bool Float)` = load(opOr, VariantType_bool, VariantType_Float)
  `xor(bool Float)` = load(opXor, VariantType_bool, VariantType_Float)
  `and(bool Object)` = load(opAnd, VariantType_bool, VariantType_Object)
  `or(bool Object)` = load(opOr, VariantType_bool, VariantType_Object)
  `xor(bool Object)` = load(opXor, VariantType_bool, VariantType_Object)