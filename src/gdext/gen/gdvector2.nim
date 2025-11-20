# constant values

# const Vector2_Zero: Vector2 = vector2(0, 0)
# template Zero*(_: typedesc[Vector2]): Vector2 = Vector2_Zero

# const Vector2_One: Vector2 = vector2(1, 1)
# template One*(_: typedesc[Vector2]): Vector2 = Vector2_One

# const Vector2_Inf: Vector2 = vector2(real_elem system.Inf, real_elem system.Inf)
# template Inf*(_: typedesc[Vector2]): Vector2 = Vector2_Inf

const Vector2_Left: Vector2 = vector2(-1, 0)
template Left*(_: typedesc[Vector2]): Vector2 = Vector2_Left

const Vector2_Right: Vector2 = vector2(1, 0)
template Right*(_: typedesc[Vector2]): Vector2 = Vector2_Right

const Vector2_Up: Vector2 = vector2(0, -1)
template Up*(_: typedesc[Vector2]): Vector2 = Vector2_Up

const Vector2_Down: Vector2 = vector2(0, 1)
template Down*(_: typedesc[Vector2]): Vector2 = Vector2_Down

# `==(Vector2 Variant)`
# `!=(Vector2 Variant)`
# `-(Vector2)`
# `+(Vector2)`
# `not(Vector2)`
# `*(Vector2 Int)`
# `/(Vector2 Int)`
# `*(Vector2 Float)`
# `/(Vector2 Float)`
# `==(Vector2 Vector2)`
# `!=(Vector2 Vector2)`
# `<(Vector2 Vector2)`
# `<=(Vector2 Vector2)`
# `>(Vector2 Vector2)`
# `>=(Vector2 Vector2)`
# `+(Vector2 Vector2)`
# `-(Vector2 Vector2)`
# `*(Vector2 Vector2)`
# `/(Vector2 Vector2)`
var `*(Vector2 Transform2D)`: PtrOperatorEvaluator
# `in(Vector2 Dictionary)`
# `in(Vector2 Array)`
# `in(Vector2 PackedVector2Array)`
func `*`*(left: Vector2; right: Transform2D): Vector2 = {.noSideEffect.}: `*(Vector2 Transform2D)`(getPtr left, getPtr right, addr result)
proc load_Vector2_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `*(Vector2 Transform2D)` = load(opMultiply, VariantType_Vector2, VariantType_Transform2D)

# `angle(Vector2)`
# `angleTo(Vector2 Vector2)`
# `angleToPoint(Vector2 Vector2)`
# `directionTo(Vector2 Vector2)`
# `distanceTo(Vector2 Vector2)`
# `distanceSquaredTo(Vector2 Vector2)`
# `length(Vector2)`
# `lengthSquared(Vector2)`
var `limitLength(Vector2 Float)`: PtrBuiltinMethod
# `normalized(Vector2)`
# `isNormalized(Vector2)`
# `isEqualApprox(Vector2 Vector2)`
# `isZeroApprox(Vector2)`
# `isFinite(Vector2)`
# `posmod(Vector2 Float)`
# `posmodv(Vector2 Vector2)`
var `project(Vector2 Vector2)`: PtrBuiltinMethod
# `lerp(Vector2 Vector2 Float)`
var `slerp(Vector2 Vector2 Float)`: PtrBuiltinMethod
var `cubicInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`: PtrBuiltinMethod
var `cubicInterpolateInTime(Vector2 Vector2 Vector2 Vector2 Float Float Float Float)`: PtrBuiltinMethod
var `bezierInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`: PtrBuiltinMethod
var `bezierDerivative(Vector2 Vector2 Vector2 Vector2 Float)`: PtrBuiltinMethod
# `maxAxisIndex(Vector2)`
# `minAxisIndex(Vector2)`
# `moveToward(Vector2 Vector2 Float)`
var `rotated(Vector2 Float)`: PtrBuiltinMethod
var `orthogonal(Vector2)`: PtrBuiltinMethod
# `floor(Vector2)`
# `ceil(Vector2)`
# `round(Vector2)`
# `aspect(Vector2)`
# `dot(Vector2 Vector2)`
# `slide(Vector2 Vector2)`
var `bounce(Vector2 Vector2)`: PtrBuiltinMethod
var `reflect(Vector2 Vector2)`: PtrBuiltinMethod
# `cross(Vector2 Vector2)`
# `abs(Vector2)`
# `sign(Vector2)`
# `clamp(Vector2 Vector2 Vector2)`
var `clampf(Vector2 Float Float)`: PtrBuiltinMethod
# `snapped(Vector2 Vector2)`
var `snappedf(Vector2 Float)`: PtrBuiltinMethod
var `min(Vector2 Vector2)`: PtrBuiltinMethod
var `minf(Vector2 Float)`: PtrBuiltinMethod
var `max(Vector2 Vector2)`: PtrBuiltinMethod
var `maxf(Vector2 Float)`: PtrBuiltinMethod
# `fromAngle(Vector2 Float)`

proc limitLength*(self: Vector2; length: Float = 1.0): Vector2 =
  `limitLength(Vector2 Float)`.call(addr self, [getPtr length], addr result)
proc project*(self: Vector2; b: Vector2): Vector2 =
  `project(Vector2 Vector2)`.call(addr self, [getPtr b], addr result)
proc slerp*(self: Vector2; to: Vector2; weight: Float): Vector2 =
  `slerp(Vector2 Vector2 Float)`.call(addr self, [getPtr to, getPtr weight], addr result)
proc cubicInterpolate*(self: Vector2; b: Vector2; preA: Vector2; postB: Vector2; weight: Float): Vector2 =
  `cubicInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`.call(addr self, [getPtr b, getPtr preA, getPtr postB, getPtr weight], addr result)
proc cubicInterpolateInTime*(self: Vector2; b: Vector2; preA: Vector2; postB: Vector2; weight: Float; bT: Float; preAT: Float; postBT: Float): Vector2 =
  `cubicInterpolateInTime(Vector2 Vector2 Vector2 Vector2 Float Float Float Float)`.call(addr self, [getPtr b, getPtr preA, getPtr postB, getPtr weight, getPtr bT, getPtr preAT, getPtr postBT], addr result)
proc bezierInterpolate*(self: Vector2; control1: Vector2; control2: Vector2; `end`: Vector2; t: Float): Vector2 =
  `bezierInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`.call(addr self, [getPtr control1, getPtr control2, getPtr `end`, getPtr t], addr result)
proc bezierDerivative*(self: Vector2; control1: Vector2; control2: Vector2; `end`: Vector2; t: Float): Vector2 =
  `bezierDerivative(Vector2 Vector2 Vector2 Vector2 Float)`.call(addr self, [getPtr control1, getPtr control2, getPtr `end`, getPtr t], addr result)
proc rotated*(self: Vector2; angle: Float): Vector2 =
  `rotated(Vector2 Float)`.call(addr self, [getPtr angle], addr result)
proc orthogonal*(self: Vector2): Vector2 =
  `orthogonal(Vector2)`.call(addr self, [], addr result)
proc bounce*(self: Vector2; n: Vector2): Vector2 =
  `bounce(Vector2 Vector2)`.call(addr self, [getPtr n], addr result)
proc reflect*(self: Vector2; line: Vector2): Vector2 =
  `reflect(Vector2 Vector2)`.call(addr self, [getPtr line], addr result)
proc clampf*(self: Vector2; min: Float; max: Float): Vector2 =
  `clampf(Vector2 Float Float)`.call(addr self, [getPtr min, getPtr max], addr result)
proc snappedf*(self: Vector2; step: Float): Vector2 =
  `snappedf(Vector2 Float)`.call(addr self, [getPtr step], addr result)
proc min*(self: Vector2; with: Vector2): Vector2 =
  `min(Vector2 Vector2)`.call(addr self, [getPtr with], addr result)
proc minf*(self: Vector2; with: Float): Vector2 =
  `minf(Vector2 Float)`.call(addr self, [getPtr with], addr result)
proc max*(self: Vector2; with: Vector2): Vector2 =
  `max(Vector2 Vector2)`.call(addr self, [getPtr with], addr result)
proc maxf*(self: Vector2; with: Float): Vector2 =
  `maxf(Vector2 Float)`.call(addr self, [getPtr with], addr result)

proc load_Vector2_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `limitLength(Vector2 Float)` = load(VariantType_Vector2, "limit_length", 2544004089)
  `project(Vector2 Vector2)` = load(VariantType_Vector2, "project", 2026743667)
  `slerp(Vector2 Vector2 Float)` = load(VariantType_Vector2, "slerp", 4250033116)
  `cubicInterpolate(Vector2 Vector2 Vector2 Vector2 Float)` = load(VariantType_Vector2, "cubic_interpolate", 193522989)
  `cubicInterpolateInTime(Vector2 Vector2 Vector2 Vector2 Float Float Float Float)` = load(VariantType_Vector2, "cubic_interpolate_in_time", 1957055074)
  `bezierInterpolate(Vector2 Vector2 Vector2 Vector2 Float)` = load(VariantType_Vector2, "bezier_interpolate", 193522989)
  `bezierDerivative(Vector2 Vector2 Vector2 Vector2 Float)` = load(VariantType_Vector2, "bezier_derivative", 193522989)
  `rotated(Vector2 Float)` = load(VariantType_Vector2, "rotated", 2544004089)
  `orthogonal(Vector2)` = load(VariantType_Vector2, "orthogonal", 2428350749)
  `bounce(Vector2 Vector2)` = load(VariantType_Vector2, "bounce", 2026743667)
  `reflect(Vector2 Vector2)` = load(VariantType_Vector2, "reflect", 2026743667)
  `clampf(Vector2 Float Float)` = load(VariantType_Vector2, "clampf", 3464402636)
  `snappedf(Vector2 Float)` = load(VariantType_Vector2, "snappedf", 2544004089)
  `min(Vector2 Vector2)` = load(VariantType_Vector2, "min", 2026743667)
  `minf(Vector2 Float)` = load(VariantType_Vector2, "minf", 2544004089)
  `max(Vector2 Vector2)` = load(VariantType_Vector2, "max", 2026743667)
  `maxf(Vector2 Float)` = load(VariantType_Vector2, "maxf", 2544004089)
