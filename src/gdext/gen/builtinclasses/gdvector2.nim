{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Vector2_AXIS_X*: int = 0
template AXIS_X*(_: typedesc[Vector2]): int = Vector2_AXIS_X

const Vector2_AXIS_Y*: int = 1
template AXIS_Y*(_: typedesc[Vector2]): int = Vector2_AXIS_Y

const Vector2_ZERO*: Vector2 = vector(0, 0)
template ZERO*(_: typedesc[Vector2]): Vector2 = Vector2_ZERO

const Vector2_ONE*: Vector2 = vector(1, 1)
template ONE*(_: typedesc[Vector2]): Vector2 = Vector2_ONE

const Vector2_INF*: Vector2 = vector(Inf, Inf)
template INF*(_: typedesc[Vector2]): Vector2 = Vector2_INF

const Vector2_LEFT*: Vector2 = vector(-1, 0)
template LEFT*(_: typedesc[Vector2]): Vector2 = Vector2_LEFT

const Vector2_RIGHT*: Vector2 = vector(1, 0)
template RIGHT*(_: typedesc[Vector2]): Vector2 = Vector2_RIGHT

const Vector2_UP*: Vector2 = vector(0, -1)
template UP*(_: typedesc[Vector2]): Vector2 = Vector2_UP

const Vector2_DOWN*: Vector2 = vector(0, 1)
template DOWN*(_: typedesc[Vector2]): Vector2 = Vector2_DOWN

var `==(Vector2 Variant)`: PtrOperatorEvaluator
var `!=(Vector2 Variant)`: PtrOperatorEvaluator
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
var `contains(Vector2 Dictionary)`: PtrOperatorEvaluator
var `contains(Vector2 Array)`: PtrOperatorEvaluator
var `contains(Vector2 PackedVector2Array)`: PtrOperatorEvaluator
proc `==`*(left: Vector2; right: Variant): bool = `==(Vector2 Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Vector2; right: Variant): bool = `!=(Vector2 Variant)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Vector2; right: Transform2D): Vector2 = `*(Vector2 Transform2D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Vector2): bool = `contains(Vector2 Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Vector2): bool = `contains(Vector2 Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedVector2Array; right: Vector2): bool = `contains(Vector2 PackedVector2Array)`(getPtr right, getPtr left, addr result)
proc load_Vector2_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Vector2 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Vector2, VariantType_Nil)
  `!=(Vector2 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Vector2, VariantType_Nil)
  `*(Vector2 Transform2D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Vector2, VariantType_Transform2D)
  `contains(Vector2 Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector2, VariantType_Dictionary)
  `contains(Vector2 Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector2, VariantType_Array)
  `contains(Vector2 PackedVector2Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector2, VariantType_PackedVector2Array)

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
  let argArr = [getPtr length]
  `limitLength(Vector2 Float)`(addr self, addr argArr[0], addr result, 1)
proc project*(self: Vector2; b: Vector2): Vector2 =
  let argArr = [getPtr b]
  `project(Vector2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc slerp*(self: Vector2; to: Vector2; weight: Float): Vector2 =
  let argArr = [getPtr to, getPtr weight]
  `slerp(Vector2 Vector2 Float)`(addr self, addr argArr[0], addr result, 2)
proc cubicInterpolate*(self: Vector2; b: Vector2; preA: Vector2; postB: Vector2; weight: Float): Vector2 =
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight]
  `cubicInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`(addr self, addr argArr[0], addr result, 4)
proc cubicInterpolateInTime*(self: Vector2; b: Vector2; preA: Vector2; postB: Vector2; weight: Float; bT: Float; preAT: Float; postBT: Float): Vector2 =
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight, getPtr bT, getPtr preAT, getPtr postBT]
  `cubicInterpolateInTime(Vector2 Vector2 Vector2 Vector2 Float Float Float Float)`(addr self, addr argArr[0], addr result, 7)
proc bezierInterpolate*(self: Vector2; control1: Vector2; control2: Vector2; `end`: Vector2; t: Float): Vector2 =
  let argArr = [getPtr control1, getPtr control2, getPtr `end`, getPtr t]
  `bezierInterpolate(Vector2 Vector2 Vector2 Vector2 Float)`(addr self, addr argArr[0], addr result, 4)
proc bezierDerivative*(self: Vector2; control1: Vector2; control2: Vector2; `end`: Vector2; t: Float): Vector2 =
  let argArr = [getPtr control1, getPtr control2, getPtr `end`, getPtr t]
  `bezierDerivative(Vector2 Vector2 Vector2 Vector2 Float)`(addr self, addr argArr[0], addr result, 4)
proc rotated*(self: Vector2; angle: Float): Vector2 =
  let argArr = [getPtr angle]
  `rotated(Vector2 Float)`(addr self, addr argArr[0], addr result, 1)
proc orthogonal*(self: Vector2): Vector2 =
  `orthogonal(Vector2)`(addr self, nil, addr result, 0)
proc bounce*(self: Vector2; n: Vector2): Vector2 =
  let argArr = [getPtr n]
  `bounce(Vector2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc reflect*(self: Vector2; line: Vector2): Vector2 =
  let argArr = [getPtr line]
  `reflect(Vector2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc clampf*(self: Vector2; min: Float; max: Float): Vector2 =
  let argArr = [getPtr min, getPtr max]
  `clampf(Vector2 Float Float)`(addr self, addr argArr[0], addr result, 2)
proc snappedf*(self: Vector2; step: Float): Vector2 =
  let argArr = [getPtr step]
  `snappedf(Vector2 Float)`(addr self, addr argArr[0], addr result, 1)
proc min*(self: Vector2; with: Vector2): Vector2 =
  let argArr = [getPtr with]
  `min(Vector2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc minf*(self: Vector2; with: Float): Vector2 =
  let argArr = [getPtr with]
  `minf(Vector2 Float)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Vector2; with: Vector2): Vector2 =
  let argArr = [getPtr with]
  `max(Vector2 Vector2)`(addr self, addr argArr[0], addr result, 1)
proc maxf*(self: Vector2; with: Float): Vector2 =
  let argArr = [getPtr with]
  `maxf(Vector2 Float)`(addr self, addr argArr[0], addr result, 1)

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