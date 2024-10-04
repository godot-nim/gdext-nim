{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(bool Variant)`: PtrOperatorEvaluator
var `!=(bool Variant)`: PtrOperatorEvaluator
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
var `contains(bool Dictionary)`: PtrOperatorEvaluator
var `contains(bool Array)`: PtrOperatorEvaluator
proc `==`*(left: bool; right: Variant): bool = `==(bool Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: bool; right: Variant): bool = `!=(bool Variant)`(getPtr left, getPtr right, addr result)
proc `and`*(left: bool; right: Int): bool = `and(bool Int)`(getPtr left, getPtr right, addr result)
proc `or`*(left: bool; right: Int): bool = `or(bool Int)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: bool; right: Int): bool = `xor(bool Int)`(getPtr left, getPtr right, addr result)
proc `and`*(left: bool; right: Float): bool = `and(bool Float)`(getPtr left, getPtr right, addr result)
proc `or`*(left: bool; right: Float): bool = `or(bool Float)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: bool; right: Float): bool = `xor(bool Float)`(getPtr left, getPtr right, addr result)
proc `and`*(left: bool; right: Object): bool = `and(bool Object)`(getPtr left, getPtr right, addr result)
proc `or`*(left: bool; right: Object): bool = `or(bool Object)`(getPtr left, getPtr right, addr result)
proc `xor`*(left: bool; right: Object): bool = `xor(bool Object)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: bool): bool = `contains(bool Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: bool): bool = `contains(bool Array)`(getPtr right, getPtr left, addr result)
proc load_bool_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(bool Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_bool, VariantType_Nil)
  `!=(bool Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_bool, VariantType_Nil)
  `and(bool Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_bool, VariantType_Int)
  `or(bool Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_bool, VariantType_Int)
  `xor(bool Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_bool, VariantType_Int)
  `and(bool Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_bool, VariantType_Float)
  `or(bool Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_bool, VariantType_Float)
  `xor(bool Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_bool, VariantType_Float)
  `and(bool Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_And, VariantType_bool, VariantType_Object)
  `or(bool Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Or, VariantType_bool, VariantType_Object)
  `xor(bool Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Xor, VariantType_bool, VariantType_Object)
  `contains(bool Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_bool, VariantType_Dictionary)
  `contains(bool Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_bool, VariantType_Array)