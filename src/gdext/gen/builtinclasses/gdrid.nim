{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Rid Variant)`: PtrOperatorEvaluator
var `!=(Rid Variant)`: PtrOperatorEvaluator
var `not(Rid)`: PtrOperatorEvaluator
var `==(Rid Rid)`: PtrOperatorEvaluator
var `!=(Rid Rid)`: PtrOperatorEvaluator
var `<(Rid Rid)`: PtrOperatorEvaluator
var `<=(Rid Rid)`: PtrOperatorEvaluator
var `>(Rid Rid)`: PtrOperatorEvaluator
var `>=(Rid Rid)`: PtrOperatorEvaluator
proc `==`*(left: Rid; right: Variant): bool = `==(Rid Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Rid; right: Variant): bool = `!=(Rid Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Rid): bool = `not(Rid)`(getPtr left, nil, addr result)
proc `==`*(left: Rid; right: Rid): bool = `==(Rid Rid)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Rid; right: Rid): bool = `!=(Rid Rid)`(getPtr left, getPtr right, addr result)
proc `<`*(left: Rid; right: Rid): bool = `<(Rid Rid)`(getPtr left, getPtr right, addr result)
proc `<=`*(left: Rid; right: Rid): bool = `<=(Rid Rid)`(getPtr left, getPtr right, addr result)
proc `>`*(left: Rid; right: Rid): bool = `>(Rid Rid)`(getPtr left, getPtr right, addr result)
proc `>=`*(left: Rid; right: Rid): bool = `>=(Rid Rid)`(getPtr left, getPtr right, addr result)
proc load_Rid_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Rid Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Rid, VariantType_Nil)
  `!=(Rid Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Rid, VariantType_Nil)
  `not(Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Rid, VariantType_Nil)
  `==(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Rid, VariantType_Rid)
  `!=(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Rid, VariantType_Rid)
  `<(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Less, VariantType_Rid, VariantType_Rid)
  `<=(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_LessEqual, VariantType_Rid, VariantType_Rid)
  `>(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Greater, VariantType_Rid, VariantType_Rid)
  `>=(Rid Rid)` = interface_variantGetPtrOperatorEvaluator(VariantOP_GreaterEqual, VariantType_Rid, VariantType_Rid)

var `isValid(Rid)`: PtrBuiltinMethod
var `getId(Rid)`: PtrBuiltinMethod

proc isValid*(self: Rid): bool =
  `isValid(Rid)`(addr self, nil, addr result, 0)
proc getId*(self: Rid): Int =
  `getId(Rid)`(addr self, nil, addr result, 0)

proc load_Rid_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `isValid(Rid)` = load(VariantType_Rid, "is_valid", 3918633141)
  `getId(Rid)` = load(VariantType_Rid, "get_id", 3173160232)