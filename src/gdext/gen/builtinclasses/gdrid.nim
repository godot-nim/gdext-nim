{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(RID Variant)`: PtrOperatorEvaluator
var `!=(RID Variant)`: PtrOperatorEvaluator
var `not(RID)`: PtrOperatorEvaluator
var `==(RID RID)`: PtrOperatorEvaluator
var `!=(RID RID)`: PtrOperatorEvaluator
var `<(RID RID)`: PtrOperatorEvaluator
var `<=(RID RID)`: PtrOperatorEvaluator
var `>(RID RID)`: PtrOperatorEvaluator
var `>=(RID RID)`: PtrOperatorEvaluator
proc `==`*(left: RID; right: Variant): bool = `==(RID Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: RID; right: Variant): bool = `!=(RID Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: RID): bool = `not(RID)`(getPtr left, nil, addr result)
proc `==`*(left: RID; right: RID): bool = `==(RID RID)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: RID; right: RID): bool = `!=(RID RID)`(getPtr left, getPtr right, addr result)
proc `<`*(left: RID; right: RID): bool = `<(RID RID)`(getPtr left, getPtr right, addr result)
proc `<=`*(left: RID; right: RID): bool = `<=(RID RID)`(getPtr left, getPtr right, addr result)
proc `>`*(left: RID; right: RID): bool = `>(RID RID)`(getPtr left, getPtr right, addr result)
proc `>=`*(left: RID; right: RID): bool = `>=(RID RID)`(getPtr left, getPtr right, addr result)
proc load_RID_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(RID Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_RID, VariantType_Nil)
  `!=(RID Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_RID, VariantType_Nil)
  `not(RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_RID, VariantType_Nil)
  `==(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_RID, VariantType_RID)
  `!=(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_RID, VariantType_RID)
  `<(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Less, VariantType_RID, VariantType_RID)
  `<=(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_LessEqual, VariantType_RID, VariantType_RID)
  `>(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Greater, VariantType_RID, VariantType_RID)
  `>=(RID RID)` = interface_variantGetPtrOperatorEvaluator(VariantOP_GreaterEqual, VariantType_RID, VariantType_RID)

var `isValid(RID)`: PtrBuiltinMethod
var `getId(RID)`: PtrBuiltinMethod

proc isValid*(self: RID): bool =
  `isValid(RID)`(addr self, nil, addr result, 0)
proc getId*(self: RID): Int =
  `getId(RID)`(addr self, nil, addr result, 0)

proc load_RID_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isValid(RID)` = load(VariantType_RID, "is_valid", 3918633141)
  `getId(RID)` = load(VariantType_RID, "get_id", 3173160232)