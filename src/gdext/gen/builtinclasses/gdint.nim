{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Int Variant)`: PtrOperatorEvaluator
var `!=(Int Variant)`: PtrOperatorEvaluator
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
# `mod(Int Int)`
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
var `contains(Int Dictionary)`: PtrOperatorEvaluator
var `contains(Int Array)`: PtrOperatorEvaluator
var `contains(Int PackedByteArray)`: PtrOperatorEvaluator
var `contains(Int PackedInt32Array)`: PtrOperatorEvaluator
var `contains(Int PackedInt64Array)`: PtrOperatorEvaluator
var `contains(Int PackedFloat32Array)`: PtrOperatorEvaluator
var `contains(Int PackedFloat64Array)`: PtrOperatorEvaluator
proc `==`*(left: Int; right: Variant): bool = `==(Int Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Int; right: Variant): bool = `!=(Int Variant)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Int; right: Variant): bool = `and(Int Variant)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Int; right: Variant): bool = `or(Int Variant)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Int; right: Variant): bool = `xor(Int Variant)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Int; right: bool): bool = `and(Int bool)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Int; right: bool): bool = `or(Int bool)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Int; right: bool): bool = `xor(Int bool)`(getPtr left, getPtr right, addr result)
proc `**`*(left: Int; right: Int): Int = `**(Int Int)`(getPtr left, getPtr right, addr result)
proc `**`*(left: Int; right: Float): Float = `**(Int Float)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Int; right: Float): bool = `and(Int Float)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Int; right: Float): bool = `or(Int Float)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Int; right: Float): bool = `xor(Int Float)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Int; right: Quaternion): Quaternion = `*(Int Quaternion)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Int; right: Color): Color = `*(Int Color)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Int; right: Object): bool = `and(Int Object)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Int; right: Object): bool = `or(Int Object)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Int; right: Object): bool = `xor(Int Object)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Int): bool = `contains(Int Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Int): bool = `contains(Int Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedByteArray; right: Int): bool = `contains(Int PackedByteArray)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedInt32Array; right: Int): bool = `contains(Int PackedInt32Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedInt64Array; right: Int): bool = `contains(Int PackedInt64Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedFloat32Array; right: Int): bool = `contains(Int PackedFloat32Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedFloat64Array; right: Int): bool = `contains(Int PackedFloat64Array)`(getPtr right, getPtr left, addr result)
proc load_Int_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Int Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Int, VariantType_Nil)
  `!=(Int Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Int, VariantType_Nil)
  `and(Int Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Int, VariantType_Nil)
  `or(Int Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Int, VariantType_Nil)
  `xor(Int Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Int, VariantType_Nil)
  `and(Int bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Int, VariantType_bool)
  `or(Int bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Int, VariantType_bool)
  `xor(Int bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Int, VariantType_bool)
  `**(Int Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Power, VariantType_Int, VariantType_Int)
  `**(Int Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Power, VariantType_Int, VariantType_Float)
  `and(Int Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Int, VariantType_Float)
  `or(Int Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Int, VariantType_Float)
  `xor(Int Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Int, VariantType_Float)
  `*(Int Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Int, VariantType_Quaternion)
  `*(Int Color)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Int, VariantType_Color)
  `and(Int Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Int, VariantType_Object)
  `or(Int Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Int, VariantType_Object)
  `xor(Int Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Int, VariantType_Object)
  `contains(Int Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_Dictionary)
  `contains(Int Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_Array)
  `contains(Int PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_PackedByteArray)
  `contains(Int PackedInt32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_PackedInt32Array)
  `contains(Int PackedInt64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_PackedInt64Array)
  `contains(Int PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_PackedFloat32Array)
  `contains(Int PackedFloat64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Int, VariantType_PackedFloat64Array)