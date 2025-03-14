# `==(Int Variant)`
# `!=(Int Variant)`
# `-(Int)`
# `+(Int)`
# `not(Int)`
var `and(Int Variant)`: PtrOperatorEvaluator
var `or(Int Variant)`: PtrOperatorEvaluator
var `xor(Int Variant)`: PtrOperatorEvaluator
# `not(Int)`
var `and(Int bool)`: PtrOperatorEvaluator
var `or(Int bool)`: PtrOperatorEvaluator
var `xor(Int bool)`: PtrOperatorEvaluator
# `==(Int Int)`
# `!=(Int Int)`
# `<(Int Int)`
# `<=(Int Int)`
# `>(Int Int)`
# `>=(Int Int)`
# `+(Int Int)`
# `-(Int Int)`
# `*(Int Int)`
# `/(Int Int)`
# `%(Int Int)`
var `**(Int Int)`: PtrOperatorEvaluator
# `shl(Int Int)`
# `shr(Int Int)`
# `and(Int Int)`
# `or(Int Int)`
# `xor(Int Int)`
# `and(Int Int)`
# `or(Int Int)`
# `xor(Int Int)`
# `==(Int Float)`
# `!=(Int Float)`
# `<(Int Float)`
# `<=(Int Float)`
# `>(Int Float)`
# `>=(Int Float)`
# `+(Int Float)`
# `-(Int Float)`
# `*(Int Float)`
# `/(Int Float)`
var `**(Int Float)`: PtrOperatorEvaluator
var `and(Int Float)`: PtrOperatorEvaluator
var `or(Int Float)`: PtrOperatorEvaluator
var `xor(Int Float)`: PtrOperatorEvaluator
# `*(Int Vector2)`
# `*(Int Vector2i)`
# `*(Int Vector3)`
# `*(Int Vector3i)`
# `*(Int Vector4)`
# `*(Int Vector4i)`
var `*(Int Quaternion)`: PtrOperatorEvaluator
var `*(Int Color)`: PtrOperatorEvaluator
var `and(Int Object)`: PtrOperatorEvaluator
var `or(Int Object)`: PtrOperatorEvaluator
var `xor(Int Object)`: PtrOperatorEvaluator
# `in(Int Dictionary)`
# `in(Int Array)`
# `in(Int PackedByteArray)`
# `in(Int PackedInt32Array)`
# `in(Int PackedInt64Array)`
# `in(Int PackedFloat32Array)`
# `in(Int PackedFloat64Array)`
func `and`*(left: Int; right: Variant): bool = {.noSideEffect.}: `and(Int Variant)`(getPtr left, getPtr right, addr result)
func `or`*(left: Int; right: Variant): bool = {.noSideEffect.}: `or(Int Variant)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Int; right: Variant): bool = {.noSideEffect.}: `xor(Int Variant)`(getPtr left, getPtr right, addr result)
func `and`*(left: Int; right: bool): bool = {.noSideEffect.}: `and(Int bool)`(getPtr left, getPtr right, addr result)
func `or`*(left: Int; right: bool): bool = {.noSideEffect.}: `or(Int bool)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Int; right: bool): bool = {.noSideEffect.}: `xor(Int bool)`(getPtr left, getPtr right, addr result)
func `**`*(left: Int; right: Int): Int = {.noSideEffect.}: `**(Int Int)`(getPtr left, getPtr right, addr result)
func `**`*(left: Int; right: Float): Float = {.noSideEffect.}: `**(Int Float)`(getPtr left, getPtr right, addr result)
func `and`*(left: Int; right: Float): bool = {.noSideEffect.}: `and(Int Float)`(getPtr left, getPtr right, addr result)
func `or`*(left: Int; right: Float): bool = {.noSideEffect.}: `or(Int Float)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Int; right: Float): bool = {.noSideEffect.}: `xor(Int Float)`(getPtr left, getPtr right, addr result)
func `*`*(left: Int; right: Quaternion): Quaternion = {.noSideEffect.}: `*(Int Quaternion)`(getPtr left, getPtr right, addr result)
func `*`*(left: Int; right: Color): Color = {.noSideEffect.}: `*(Int Color)`(getPtr left, getPtr right, addr result)
func `and`*(left: Int; right: Object): bool = {.noSideEffect.}: `and(Int Object)`(getPtr left, getPtr right, addr result)
func `or`*(left: Int; right: Object): bool = {.noSideEffect.}: `or(Int Object)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Int; right: Object): bool = {.noSideEffect.}: `xor(Int Object)`(getPtr left, getPtr right, addr result)
proc load_Int_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `and(Int Variant)` = load(opAnd, VariantType_Int, VariantType_Nil)
  `or(Int Variant)` = load(opOr, VariantType_Int, VariantType_Nil)
  `xor(Int Variant)` = load(opXor, VariantType_Int, VariantType_Nil)
  `and(Int bool)` = load(opAnd, VariantType_Int, VariantType_bool)
  `or(Int bool)` = load(opOr, VariantType_Int, VariantType_bool)
  `xor(Int bool)` = load(opXor, VariantType_Int, VariantType_bool)
  `**(Int Int)` = load(opPower, VariantType_Int, VariantType_Int)
  `**(Int Float)` = load(opPower, VariantType_Int, VariantType_Float)
  `and(Int Float)` = load(opAnd, VariantType_Int, VariantType_Float)
  `or(Int Float)` = load(opOr, VariantType_Int, VariantType_Float)
  `xor(Int Float)` = load(opXor, VariantType_Int, VariantType_Float)
  `*(Int Quaternion)` = load(opMultiply, VariantType_Int, VariantType_Quaternion)
  `*(Int Color)` = load(opMultiply, VariantType_Int, VariantType_Color)
  `and(Int Object)` = load(opAnd, VariantType_Int, VariantType_Object)
  `or(Int Object)` = load(opOr, VariantType_Int, VariantType_Object)
  `xor(Int Object)` = load(opXor, VariantType_Int, VariantType_Object)