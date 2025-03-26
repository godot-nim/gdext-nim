# `==(Float Variant)`
# `!=(Float Variant)`
# `-(Float)`
# `+(Float)`
var `and(Float Variant)`: PtrOperatorEvaluator
var `or(Float Variant)`: PtrOperatorEvaluator
var `xor(Float Variant)`: PtrOperatorEvaluator
var `not(Float)`: PtrOperatorEvaluator
var `and(Float bool)`: PtrOperatorEvaluator
var `or(Float bool)`: PtrOperatorEvaluator
var `xor(Float bool)`: PtrOperatorEvaluator
# `==(Float Int)`
# `!=(Float Int)`
# `<(Float Int)`
# `<=(Float Int)`
# `>(Float Int)`
# `>=(Float Int)`
# `+(Float Int)`
# `-(Float Int)`
# `*(Float Int)`
# `/(Float Int)`
var `**(Float Int)`: PtrOperatorEvaluator
var `and(Float Int)`: PtrOperatorEvaluator
var `or(Float Int)`: PtrOperatorEvaluator
var `xor(Float Int)`: PtrOperatorEvaluator
# `==(Float Float)`
# `!=(Float Float)`
# `<(Float Float)`
# `<=(Float Float)`
# `>(Float Float)`
# `>=(Float Float)`
# `+(Float Float)`
# `-(Float Float)`
# `*(Float Float)`
# `/(Float Float)`
var `**(Float Float)`: PtrOperatorEvaluator
var `and(Float Float)`: PtrOperatorEvaluator
var `or(Float Float)`: PtrOperatorEvaluator
var `xor(Float Float)`: PtrOperatorEvaluator
# `*(Float Vector2)`
# `*(Float Vector2i)`
# `*(Float Vector3)`
# `*(Float Vector3i)`
# `*(Float Vector4)`
# `*(Float Vector4i)`
var `*(Float Quaternion)`: PtrOperatorEvaluator
var `*(Float Color)`: PtrOperatorEvaluator
var `and(Float Object)`: PtrOperatorEvaluator
var `or(Float Object)`: PtrOperatorEvaluator
var `xor(Float Object)`: PtrOperatorEvaluator
# `in(Float Dictionary)`
# `in(Float Array)`
# `in(Float PackedByteArray)`
# `in(Float PackedInt32Array)`
# `in(Float PackedInt64Array)`
# `in(Float PackedFloat32Array)`
# `in(Float PackedFloat64Array)`
func `and`*(left: Float; right: Variant): bool = {.noSideEffect.}: `and(Float Variant)`(getPtr left, getPtr right, addr result)
func `or`*(left: Float; right: Variant): bool = {.noSideEffect.}: `or(Float Variant)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Float; right: Variant): bool = {.noSideEffect.}: `xor(Float Variant)`(getPtr left, getPtr right, addr result)
func `not`*(left: Float): bool = {.noSideEffect.}: `not(Float)`(getPtr left, nil, addr result)
func `and`*(left: Float; right: bool): bool = {.noSideEffect.}: `and(Float bool)`(getPtr left, getPtr right, addr result)
func `or`*(left: Float; right: bool): bool = {.noSideEffect.}: `or(Float bool)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Float; right: bool): bool = {.noSideEffect.}: `xor(Float bool)`(getPtr left, getPtr right, addr result)
func `**`*(left: Float; right: Int): Float = {.noSideEffect.}: `**(Float Int)`(getPtr left, getPtr right, addr result)
func `and`*(left: Float; right: Int): bool = {.noSideEffect.}: `and(Float Int)`(getPtr left, getPtr right, addr result)
func `or`*(left: Float; right: Int): bool = {.noSideEffect.}: `or(Float Int)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Float; right: Int): bool = {.noSideEffect.}: `xor(Float Int)`(getPtr left, getPtr right, addr result)
func `**`*(left: Float; right: Float): Float = {.noSideEffect.}: `**(Float Float)`(getPtr left, getPtr right, addr result)
func `and`*(left: Float; right: Float): bool = {.noSideEffect.}: `and(Float Float)`(getPtr left, getPtr right, addr result)
func `or`*(left: Float; right: Float): bool = {.noSideEffect.}: `or(Float Float)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Float; right: Float): bool = {.noSideEffect.}: `xor(Float Float)`(getPtr left, getPtr right, addr result)
func `*`*(left: Float; right: Quaternion): Quaternion = {.noSideEffect.}: `*(Float Quaternion)`(getPtr left, getPtr right, addr result)
func `*`*(left: Float; right: Color): Color = {.noSideEffect.}: `*(Float Color)`(getPtr left, getPtr right, addr result)
func `and`*(left: Float; right: Object): bool = {.noSideEffect.}: `and(Float Object)`(getPtr left, getPtr right, addr result)
func `or`*(left: Float; right: Object): bool = {.noSideEffect.}: `or(Float Object)`(getPtr left, getPtr right, addr result)
func `xor`*(left: Float; right: Object): bool = {.noSideEffect.}: `xor(Float Object)`(getPtr left, getPtr right, addr result)
proc load_Float_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `and(Float Variant)` = load(opAnd, VariantType_Float, VariantType_Nil)
  `or(Float Variant)` = load(opOr, VariantType_Float, VariantType_Nil)
  `xor(Float Variant)` = load(opXor, VariantType_Float, VariantType_Nil)
  `not(Float)` = load(opNot, VariantType_Float, VariantType_Nil)
  `and(Float bool)` = load(opAnd, VariantType_Float, VariantType_bool)
  `or(Float bool)` = load(opOr, VariantType_Float, VariantType_bool)
  `xor(Float bool)` = load(opXor, VariantType_Float, VariantType_bool)
  `**(Float Int)` = load(opPower, VariantType_Float, VariantType_Int)
  `and(Float Int)` = load(opAnd, VariantType_Float, VariantType_Int)
  `or(Float Int)` = load(opOr, VariantType_Float, VariantType_Int)
  `xor(Float Int)` = load(opXor, VariantType_Float, VariantType_Int)
  `**(Float Float)` = load(opPower, VariantType_Float, VariantType_Float)
  `and(Float Float)` = load(opAnd, VariantType_Float, VariantType_Float)
  `or(Float Float)` = load(opOr, VariantType_Float, VariantType_Float)
  `xor(Float Float)` = load(opXor, VariantType_Float, VariantType_Float)
  `*(Float Quaternion)` = load(opMultiply, VariantType_Float, VariantType_Quaternion)
  `*(Float Color)` = load(opMultiply, VariantType_Float, VariantType_Color)
  `and(Float Object)` = load(opAnd, VariantType_Float, VariantType_Object)
  `or(Float Object)` = load(opOr, VariantType_Float, VariantType_Object)
  `xor(Float Object)` = load(opXor, VariantType_Float, VariantType_Object)
