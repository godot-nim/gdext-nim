# `==(Rect2i Variant)`
# `!=(Rect2i Variant)`
var `not(Rect2i)`: PtrOperatorEvaluator
# `==(Rect2i Rect2i)`
# `!=(Rect2i Rect2i)`
# `in(Rect2i Dictionary)`
# `in(Rect2i Array)`
func `not`*(left: Rect2i): bool = {.noSideEffect.}: `not(Rect2i)`(getPtr left, nil, addr result)
proc load_Rect2i_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Rect2i)` = load(opNot, VariantType_Rect2i, VariantType_Nil)

var `getCenter(Rect2i)`: PtrBuiltinMethod
var `getArea(Rect2i)`: PtrBuiltinMethod
var `hasArea(Rect2i)`: PtrBuiltinMethod
var `hasPoint(Rect2i Vector2i)`: PtrBuiltinMethod
var `intersects(Rect2i Rect2i)`: PtrBuiltinMethod
var `encloses(Rect2i Rect2i)`: PtrBuiltinMethod
var `intersection(Rect2i Rect2i)`: PtrBuiltinMethod
var `merge(Rect2i Rect2i)`: PtrBuiltinMethod
var `expand(Rect2i Vector2i)`: PtrBuiltinMethod
var `grow(Rect2i Int)`: PtrBuiltinMethod
var `growSide(Rect2i Int Int)`: PtrBuiltinMethod
var `growIndividual(Rect2i Int Int Int Int)`: PtrBuiltinMethod
var `abs(Rect2i)`: PtrBuiltinMethod

proc getCenter*(self: Rect2i): Vector2i =
  `getCenter(Rect2i)`.call(addr self, [], addr result)
proc getArea*(self: Rect2i): Int =
  `getArea(Rect2i)`.call(addr self, [], addr result)
proc hasArea*(self: Rect2i): bool =
  `hasArea(Rect2i)`.call(addr self, [], addr result)
proc hasPoint*(self: Rect2i; point: Vector2i): bool =
  `hasPoint(Rect2i Vector2i)`.call(addr self, [getPtr point], addr result)
proc intersects*(self: Rect2i; b: Rect2i): bool =
  `intersects(Rect2i Rect2i)`.call(addr self, [getPtr b], addr result)
proc encloses*(self: Rect2i; b: Rect2i): bool =
  `encloses(Rect2i Rect2i)`.call(addr self, [getPtr b], addr result)
proc intersection*(self: Rect2i; b: Rect2i): Rect2i =
  `intersection(Rect2i Rect2i)`.call(addr self, [getPtr b], addr result)
proc merge*(self: Rect2i; b: Rect2i): Rect2i =
  `merge(Rect2i Rect2i)`.call(addr self, [getPtr b], addr result)
proc expand*(self: Rect2i; to: Vector2i): Rect2i =
  `expand(Rect2i Vector2i)`.call(addr self, [getPtr to], addr result)
proc grow*(self: Rect2i; amount: Int): Rect2i =
  `grow(Rect2i Int)`.call(addr self, [getPtr amount], addr result)
proc growSide*(self: Rect2i; side: Int; amount: Int): Rect2i =
  `growSide(Rect2i Int Int)`.call(addr self, [getPtr side, getPtr amount], addr result)
proc growIndividual*(self: Rect2i; left: Int; top: Int; right: Int; bottom: Int): Rect2i =
  `growIndividual(Rect2i Int Int Int Int)`.call(addr self, [getPtr left, getPtr top, getPtr right, getPtr bottom], addr result)
proc abs*(self: Rect2i): Rect2i =
  `abs(Rect2i)`.call(addr self, [], addr result)

proc load_Rect2i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `getCenter(Rect2i)` = load(VariantType_Rect2i, "get_center", 3444277866)
  `getArea(Rect2i)` = load(VariantType_Rect2i, "get_area", 3173160232)
  `hasArea(Rect2i)` = load(VariantType_Rect2i, "has_area", 3918633141)
  `hasPoint(Rect2i Vector2i)` = load(VariantType_Rect2i, "has_point", 328189994)
  `intersects(Rect2i Rect2i)` = load(VariantType_Rect2i, "intersects", 3434691493)
  `encloses(Rect2i Rect2i)` = load(VariantType_Rect2i, "encloses", 3434691493)
  `intersection(Rect2i Rect2i)` = load(VariantType_Rect2i, "intersection", 717431873)
  `merge(Rect2i Rect2i)` = load(VariantType_Rect2i, "merge", 717431873)
  `expand(Rect2i Vector2i)` = load(VariantType_Rect2i, "expand", 1355196872)
  `grow(Rect2i Int)` = load(VariantType_Rect2i, "grow", 1578070074)
  `growSide(Rect2i Int Int)` = load(VariantType_Rect2i, "grow_side", 3191154199)
  `growIndividual(Rect2i Int Int Int Int)` = load(VariantType_Rect2i, "grow_individual", 1893743416)
  `abs(Rect2i)` = load(VariantType_Rect2i, "abs", 1469025700)
