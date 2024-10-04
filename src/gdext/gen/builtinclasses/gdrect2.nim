{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Rect2 Variant)`: PtrOperatorEvaluator
var `!=(Rect2 Variant)`: PtrOperatorEvaluator
var `not(Rect2)`: PtrOperatorEvaluator
var `==(Rect2 Rect2)`: PtrOperatorEvaluator
var `!=(Rect2 Rect2)`: PtrOperatorEvaluator
var `*(Rect2 Transform2D)`: PtrOperatorEvaluator
var `contains(Rect2 Dictionary)`: PtrOperatorEvaluator
var `contains(Rect2 Array)`: PtrOperatorEvaluator
proc `==`*(left: Rect2; right: Variant): bool = `==(Rect2 Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Rect2; right: Variant): bool = `!=(Rect2 Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Rect2): bool = `not(Rect2)`(getPtr left, nil, addr result)
proc `==`*(left: Rect2; right: Rect2): bool = `==(Rect2 Rect2)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Rect2; right: Rect2): bool = `!=(Rect2 Rect2)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Rect2; right: Transform2D): Rect2 = `*(Rect2 Transform2D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Rect2): bool = `contains(Rect2 Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Rect2): bool = `contains(Rect2 Array)`(getPtr right, getPtr left, addr result)
proc load_Rect2_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Rect2 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Rect2, VariantType_Nil)
  `!=(Rect2 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Rect2, VariantType_Nil)
  `not(Rect2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Rect2, VariantType_Nil)
  `==(Rect2 Rect2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Rect2, VariantType_Rect2)
  `!=(Rect2 Rect2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Rect2, VariantType_Rect2)
  `*(Rect2 Transform2D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Rect2, VariantType_Transform2D)
  `contains(Rect2 Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Rect2, VariantType_Dictionary)
  `contains(Rect2 Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Rect2, VariantType_Array)

var `getCenter(Rect2)`: PtrBuiltinMethod
var `getArea(Rect2)`: PtrBuiltinMethod
var `hasArea(Rect2)`: PtrBuiltinMethod
var `hasPoint(Rect2 Vector2)`: PtrBuiltinMethod
var `isEqualApprox(Rect2 Rect2)`: PtrBuiltinMethod
var `isFinite(Rect2)`: PtrBuiltinMethod
var `intersects(Rect2 Rect2 bool)`: PtrBuiltinMethod
var `encloses(Rect2 Rect2)`: PtrBuiltinMethod
var `intersection(Rect2 Rect2)`: PtrBuiltinMethod
var `merge(Rect2 Rect2)`: PtrBuiltinMethod
var `expand(Rect2 Vector2)`: PtrBuiltinMethod
var `grow(Rect2 Float)`: PtrBuiltinMethod
var `growSide(Rect2 Int Float)`: PtrBuiltinMethod
var `growIndividual(Rect2 Float Float Float Float)`: PtrBuiltinMethod
var `abs(Rect2)`: PtrBuiltinMethod

proc getCenter*(self: Rect2): Vector2 =
  `getCenter(Rect2)`(addr self, nil, addr result, 0)
proc getArea*(self: Rect2): Float =
  `getArea(Rect2)`(addr self, nil, addr result, 0)
proc hasArea*(self: Rect2): bool =
  `hasArea(Rect2)`(addr self, nil, addr result, 0)
proc hasPoint*(self: Rect2; point: Vector2): bool =
  let argArr = [getPtr point]
  `hasPoint(Rect2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc isEqualApprox*(self: Rect2; rect: Rect2): bool =
  let argArr = [getPtr rect]
  `isEqualApprox(Rect2 Rect2)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: Rect2): bool =
  `isFinite(Rect2)`(addr self, nil, addr result, 0)
proc intersects*(self: Rect2; b: Rect2; includeBorders: bool = false): bool =
  let argArr = [getPtr b, getPtr includeBorders]
  `intersects(Rect2 Rect2 bool)`(addr self, addr argArr[0], addr result, 2)
proc encloses*(self: Rect2; b: Rect2): bool =
  let argArr = [getPtr b]
  `encloses(Rect2 Rect2)`(addr self, addr argArr[0], addr result, 1)
proc intersection*(self: Rect2; b: Rect2): Rect2 =
  let argArr = [getPtr b]
  `intersection(Rect2 Rect2)`(addr self, addr argArr[0], addr result, 1)
proc merge*(self: Rect2; b: Rect2): Rect2 =
  let argArr = [getPtr b]
  `merge(Rect2 Rect2)`(addr self, addr argArr[0], addr result, 1)
proc expand*(self: Rect2; to: Vector2): Rect2 =
  let argArr = [getPtr to]
  `expand(Rect2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc grow*(self: Rect2; amount: Float): Rect2 =
  let argArr = [getPtr amount]
  `grow(Rect2 Float)`(addr self, addr argArr[0], addr result, 1)
proc growSide*(self: Rect2; side: Int; amount: Float): Rect2 =
  let argArr = [getPtr side, getPtr amount]
  `growSide(Rect2 Int Float)`(addr self, addr argArr[0], addr result, 2)
proc growIndividual*(self: Rect2; left: Float; top: Float; right: Float; bottom: Float): Rect2 =
  let argArr = [getPtr left, getPtr top, getPtr right, getPtr bottom]
  `growIndividual(Rect2 Float Float Float Float)`(addr self, addr argArr[0], addr result, 4)
proc abs*(self: Rect2): Rect2 =
  `abs(Rect2)`(addr self, nil, addr result, 0)

proc load_Rect2_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `getCenter(Rect2)` = load(VariantType_Rect2, "get_center", 2428350749)
  `getArea(Rect2)` = load(VariantType_Rect2, "get_area", 466405837)
  `hasArea(Rect2)` = load(VariantType_Rect2, "has_area", 3918633141)
  `hasPoint(Rect2 Vector2)` = load(VariantType_Rect2, "has_point", 3190634762)
  `isEqualApprox(Rect2 Rect2)` = load(VariantType_Rect2, "is_equal_approx", 1908192260)
  `isFinite(Rect2)` = load(VariantType_Rect2, "is_finite", 3918633141)
  `intersects(Rect2 Rect2 bool)` = load(VariantType_Rect2, "intersects", 819294880)
  `encloses(Rect2 Rect2)` = load(VariantType_Rect2, "encloses", 1908192260)
  `intersection(Rect2 Rect2)` = load(VariantType_Rect2, "intersection", 2282977743)
  `merge(Rect2 Rect2)` = load(VariantType_Rect2, "merge", 2282977743)
  `expand(Rect2 Vector2)` = load(VariantType_Rect2, "expand", 293272265)
  `grow(Rect2 Float)` = load(VariantType_Rect2, "grow", 39664498)
  `growSide(Rect2 Int Float)` = load(VariantType_Rect2, "grow_side", 4177736158)
  `growIndividual(Rect2 Float Float Float Float)` = load(VariantType_Rect2, "grow_individual", 3203390369)
  `abs(Rect2)` = load(VariantType_Rect2, "abs", 3107653634)