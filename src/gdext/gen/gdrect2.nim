# `==(Rect2 Variant)`
# `!=(Rect2 Variant)`
var `not(Rect2)`: PtrOperatorEvaluator
# `==(Rect2 Rect2)`
# `!=(Rect2 Rect2)`
var `*(Rect2 Transform2D)`: PtrOperatorEvaluator
# `in(Rect2 Dictionary)`
# `in(Rect2 Array)`
func `not`*(left: Rect2): bool = {.noSideEffect.}: `not(Rect2)`(getPtr left, nil, addr result)
func `*`*(left: Rect2; right: Transform2D): Rect2 = {.noSideEffect.}: `*(Rect2 Transform2D)`(getPtr left, getPtr right, addr result)
proc load_Rect2_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Rect2)` = load(opNot, VariantType_Rect2, VariantType_Nil)
  `*(Rect2 Transform2D)` = load(opMultiply, VariantType_Rect2, VariantType_Transform2D)

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
var `getSupport(Rect2 Vector2)`: PtrBuiltinMethod
var `grow(Rect2 Float)`: PtrBuiltinMethod
var `growSide(Rect2 Int Float)`: PtrBuiltinMethod
var `growIndividual(Rect2 Float Float Float Float)`: PtrBuiltinMethod
var `abs(Rect2)`: PtrBuiltinMethod

proc getCenter*(self: Rect2): Vector2 =
  `getCenter(Rect2)`.call(addr self, [], addr result)
proc getArea*(self: Rect2): Float =
  `getArea(Rect2)`.call(addr self, [], addr result)
proc hasArea*(self: Rect2): bool =
  `hasArea(Rect2)`.call(addr self, [], addr result)
proc hasPoint*(self: Rect2; point: Vector2): bool =
  `hasPoint(Rect2 Vector2)`.call(addr self, [getPtr point], addr result)
proc isEqualApprox*(self: Rect2; rect: Rect2): bool =
  `isEqualApprox(Rect2 Rect2)`.call(addr self, [getPtr rect], addr result)
proc isFinite*(self: Rect2): bool =
  `isFinite(Rect2)`.call(addr self, [], addr result)
proc intersects*(self: Rect2; b: Rect2; includeBorders: bool = false): bool =
  `intersects(Rect2 Rect2 bool)`.call(addr self, [getPtr b, getPtr includeBorders], addr result)
proc encloses*(self: Rect2; b: Rect2): bool =
  `encloses(Rect2 Rect2)`.call(addr self, [getPtr b], addr result)
proc intersection*(self: Rect2; b: Rect2): Rect2 =
  `intersection(Rect2 Rect2)`.call(addr self, [getPtr b], addr result)
proc merge*(self: Rect2; b: Rect2): Rect2 =
  `merge(Rect2 Rect2)`.call(addr self, [getPtr b], addr result)
proc expand*(self: Rect2; to: Vector2): Rect2 =
  `expand(Rect2 Vector2)`.call(addr self, [getPtr to], addr result)
proc getSupport*(self: Rect2; direction: Vector2): Vector2 =
  `getSupport(Rect2 Vector2)`.call(addr self, [getPtr direction], addr result)
proc grow*(self: Rect2; amount: Float): Rect2 =
  `grow(Rect2 Float)`.call(addr self, [getPtr amount], addr result)
proc growSide*(self: Rect2; side: Int; amount: Float): Rect2 =
  `growSide(Rect2 Int Float)`.call(addr self, [getPtr side, getPtr amount], addr result)
proc growIndividual*(self: Rect2; left: Float; top: Float; right: Float; bottom: Float): Rect2 =
  `growIndividual(Rect2 Float Float Float Float)`.call(addr self, [getPtr left, getPtr top, getPtr right, getPtr bottom], addr result)
proc abs*(self: Rect2): Rect2 =
  `abs(Rect2)`.call(addr self, [], addr result)

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
  `getSupport(Rect2 Vector2)` = load(VariantType_Rect2, "get_support", 2026743667)
  `grow(Rect2 Float)` = load(VariantType_Rect2, "grow", 39664498)
  `growSide(Rect2 Int Float)` = load(VariantType_Rect2, "grow_side", 4177736158)
  `growIndividual(Rect2 Float Float Float Float)` = load(VariantType_Rect2, "grow_individual", 3203390369)
  `abs(Rect2)` = load(VariantType_Rect2, "abs", 3107653634)
