{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Float Variant)`: PtrOperatorEvaluator
var `!=(Float Variant)`: PtrOperatorEvaluator
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
var `contains(Float Dictionary)`: PtrOperatorEvaluator
var `contains(Float Array)`: PtrOperatorEvaluator
var `contains(Float PackedByteArray)`: PtrOperatorEvaluator
var `contains(Float PackedInt32Array)`: PtrOperatorEvaluator
var `contains(Float PackedInt64Array)`: PtrOperatorEvaluator
var `contains(Float PackedFloat32Array)`: PtrOperatorEvaluator
var `contains(Float PackedFloat64Array)`: PtrOperatorEvaluator
proc `==`*(left: Float; right: Variant): bool = `==(Float Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Float; right: Variant): bool = `!=(Float Variant)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Float; right: Variant): bool = `and(Float Variant)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Float; right: Variant): bool = `or(Float Variant)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Float; right: Variant): bool = `xor(Float Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Float): bool = `not(Float)`(getPtr left, nil, addr result)
proc `and`*(left: Float; right: bool): bool = `and(Float bool)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Float; right: bool): bool = `or(Float bool)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Float; right: bool): bool = `xor(Float bool)`(getPtr left, getPtr right, addr result)
proc `**`*(left: Float; right: Int): Float = `**(Float Int)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Float; right: Int): bool = `and(Float Int)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Float; right: Int): bool = `or(Float Int)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Float; right: Int): bool = `xor(Float Int)`(getPtr left, getPtr right, addr result)
proc `**`*(left: Float; right: Float): Float = `**(Float Float)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Float; right: Float): bool = `and(Float Float)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Float; right: Float): bool = `or(Float Float)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Float; right: Float): bool = `xor(Float Float)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Float; right: Quaternion): Quaternion = `*(Float Quaternion)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Float; right: Color): Color = `*(Float Color)`(getPtr left, getPtr right, addr result)
proc `and`*(left: Float; right: Object): bool = `and(Float Object)`(getPtr left, getPtr right, addr result)
proc `or`*(left: Float; right: Object): bool = `or(Float Object)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: Float; right: Object): bool = `xor(Float Object)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Float): bool = `contains(Float Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Float): bool = `contains(Float Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedByteArray; right: Float): bool = `contains(Float PackedByteArray)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedInt32Array; right: Float): bool = `contains(Float PackedInt32Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedInt64Array; right: Float): bool = `contains(Float PackedInt64Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedFloat32Array; right: Float): bool = `contains(Float PackedFloat32Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedFloat64Array; right: Float): bool = `contains(Float PackedFloat64Array)`(getPtr right, getPtr left, addr result)
proc load_Float_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Float Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Float, VariantType_Nil)
  `!=(Float Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Float, VariantType_Nil)
  `and(Float Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Float, VariantType_Nil)
  `or(Float Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Float, VariantType_Nil)
  `xor(Float Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Float, VariantType_Nil)
  `not(Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Float, VariantType_Nil)
  `and(Float bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Float, VariantType_bool)
  `or(Float bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Float, VariantType_bool)
  `xor(Float bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Float, VariantType_bool)
  `**(Float Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Power, VariantType_Float, VariantType_Int)
  `and(Float Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Float, VariantType_Int)
  `or(Float Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Float, VariantType_Int)
  `xor(Float Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Float, VariantType_Int)
  `**(Float Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Power, VariantType_Float, VariantType_Float)
  `and(Float Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Float, VariantType_Float)
  `or(Float Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Float, VariantType_Float)
  `xor(Float Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Float, VariantType_Float)
  `*(Float Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Float, VariantType_Quaternion)
  `*(Float Color)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Float, VariantType_Color)
  `and(Float Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_Float, VariantType_Object)
  `or(Float Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_Float, VariantType_Object)
  `xor(Float Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_Float, VariantType_Object)
  `contains(Float Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_Dictionary)
  `contains(Float Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_Array)
  `contains(Float PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_PackedByteArray)
  `contains(Float PackedInt32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_PackedInt32Array)
  `contains(Float PackedInt64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_PackedInt64Array)
  `contains(Float PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_PackedFloat32Array)
  `contains(Float PackedFloat64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Float, VariantType_PackedFloat64Array)