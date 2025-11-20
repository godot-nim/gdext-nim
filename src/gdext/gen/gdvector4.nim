# constant values

# const Vector4_Zero: Vector4 = vector4(0, 0, 0, 0)
# template Zero*(_: typedesc[Vector4]): Vector4 = Vector4_Zero

# const Vector4_One: Vector4 = vector4(1, 1, 1, 1)
# template One*(_: typedesc[Vector4]): Vector4 = Vector4_One

# const Vector4_Inf: Vector4 = vector4(real_elem system.Inf, real_elem system.Inf, real_elem system.Inf, real_elem system.Inf)
# template Inf*(_: typedesc[Vector4]): Vector4 = Vector4_Inf

# `==(Vector4 Variant)`
# `!=(Vector4 Variant)`
# `-(Vector4)`
# `+(Vector4)`
# `not(Vector4)`
# `*(Vector4 Int)`
# `/(Vector4 Int)`
# `*(Vector4 Float)`
# `/(Vector4 Float)`
# `==(Vector4 Vector4)`
# `!=(Vector4 Vector4)`
# `<(Vector4 Vector4)`
# `<=(Vector4 Vector4)`
# `>(Vector4 Vector4)`
# `>=(Vector4 Vector4)`
# `+(Vector4 Vector4)`
# `-(Vector4 Vector4)`
# `*(Vector4 Vector4)`
# `/(Vector4 Vector4)`
var `*(Vector4 Projection)`: PtrOperatorEvaluator
# `in(Vector4 Dictionary)`
# `in(Vector4 Array)`
# `in(Vector4 PackedVector4Array)`
func `*`*(left: Vector4; right: Projection): Vector4 = {.noSideEffect.}: `*(Vector4 Projection)`(getPtr left, getPtr right, addr result)
proc load_Vector4_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `*(Vector4 Projection)` = load(opMultiply, VariantType_Vector4, VariantType_Projection)

# `minAxisIndex(Vector4)`
# `maxAxisIndex(Vector4)`
# `length(Vector4)`
# `lengthSquared(Vector4)`
# `abs(Vector4)`
# `sign(Vector4)`
# `floor(Vector4)`
# `ceil(Vector4)`
# `round(Vector4)`
# `lerp(Vector4 Vector4 Float)`
var `cubicInterpolate(Vector4 Vector4 Vector4 Vector4 Float)`: PtrBuiltinMethod
var `cubicInterpolateInTime(Vector4 Vector4 Vector4 Vector4 Float Float Float Float)`: PtrBuiltinMethod
# `posmod(Vector4 Float)`
# `posmodv(Vector4 Vector4)`
# `snapped(Vector4 Vector4)`
var `snappedf(Vector4 Float)`: PtrBuiltinMethod
# `clamp(Vector4 Vector4 Vector4)`
var `clampf(Vector4 Float Float)`: PtrBuiltinMethod
# `normalized(Vector4)`
# `isNormalized(Vector4)`
# `directionTo(Vector4 Vector4)`
# `distanceTo(Vector4 Vector4)`
# `distanceSquaredTo(Vector4 Vector4)`
# `dot(Vector4 Vector4)`
var `inverse(Vector4)`: PtrBuiltinMethod
# `isEqualApprox(Vector4 Vector4)`
# `isZeroApprox(Vector4)`
# `isFinite(Vector4)`
var `min(Vector4 Vector4)`: PtrBuiltinMethod
var `minf(Vector4 Float)`: PtrBuiltinMethod
var `max(Vector4 Vector4)`: PtrBuiltinMethod
var `maxf(Vector4 Float)`: PtrBuiltinMethod

proc cubicInterpolate*(self: Vector4; b: Vector4; preA: Vector4; postB: Vector4; weight: Float): Vector4 =
  `cubicInterpolate(Vector4 Vector4 Vector4 Vector4 Float)`.call(addr self, [getPtr b, getPtr preA, getPtr postB, getPtr weight], addr result)
proc cubicInterpolateInTime*(self: Vector4; b: Vector4; preA: Vector4; postB: Vector4; weight: Float; bT: Float; preAT: Float; postBT: Float): Vector4 =
  `cubicInterpolateInTime(Vector4 Vector4 Vector4 Vector4 Float Float Float Float)`.call(addr self, [getPtr b, getPtr preA, getPtr postB, getPtr weight, getPtr bT, getPtr preAT, getPtr postBT], addr result)
proc snappedf*(self: Vector4; step: Float): Vector4 =
  `snappedf(Vector4 Float)`.call(addr self, [getPtr step], addr result)
proc clampf*(self: Vector4; min: Float; max: Float): Vector4 =
  `clampf(Vector4 Float Float)`.call(addr self, [getPtr min, getPtr max], addr result)
proc inverse*(self: Vector4): Vector4 =
  `inverse(Vector4)`.call(addr self, [], addr result)
proc min*(self: Vector4; with: Vector4): Vector4 =
  `min(Vector4 Vector4)`.call(addr self, [getPtr with], addr result)
proc minf*(self: Vector4; with: Float): Vector4 =
  `minf(Vector4 Float)`.call(addr self, [getPtr with], addr result)
proc max*(self: Vector4; with: Vector4): Vector4 =
  `max(Vector4 Vector4)`.call(addr self, [getPtr with], addr result)
proc maxf*(self: Vector4; with: Float): Vector4 =
  `maxf(Vector4 Float)`.call(addr self, [getPtr with], addr result)

proc load_Vector4_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `cubicInterpolate(Vector4 Vector4 Vector4 Vector4 Float)` = load(VariantType_Vector4, "cubic_interpolate", 726768410)
  `cubicInterpolateInTime(Vector4 Vector4 Vector4 Vector4 Float Float Float Float)` = load(VariantType_Vector4, "cubic_interpolate_in_time", 681631873)
  `snappedf(Vector4 Float)` = load(VariantType_Vector4, "snappedf", 3129671720)
  `clampf(Vector4 Float Float)` = load(VariantType_Vector4, "clampf", 4072091586)
  `inverse(Vector4)` = load(VariantType_Vector4, "inverse", 80860099)
  `min(Vector4 Vector4)` = load(VariantType_Vector4, "min", 2031281584)
  `minf(Vector4 Float)` = load(VariantType_Vector4, "minf", 3129671720)
  `max(Vector4 Vector4)` = load(VariantType_Vector4, "max", 2031281584)
  `maxf(Vector4 Float)` = load(VariantType_Vector4, "maxf", 3129671720)
