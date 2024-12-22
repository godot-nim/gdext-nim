{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Vector4_AXIS_X*: int = 0
template AXIS_X*(_: typedesc[Vector4]): int = Vector4_AXIS_X

const Vector4_AXIS_Y*: int = 1
template AXIS_Y*(_: typedesc[Vector4]): int = Vector4_AXIS_Y

const Vector4_AXIS_Z*: int = 2
template AXIS_Z*(_: typedesc[Vector4]): int = Vector4_AXIS_Z

const Vector4_AXIS_W*: int = 3
template AXIS_W*(_: typedesc[Vector4]): int = Vector4_AXIS_W

const Vector4_ZERO*: Vector4 = vector(0, 0, 0, 0)
template ZERO*(_: typedesc[Vector4]): Vector4 = Vector4_ZERO

const Vector4_ONE*: Vector4 = vector(1, 1, 1, 1)
template ONE*(_: typedesc[Vector4]): Vector4 = Vector4_ONE

const Vector4_INF*: Vector4 = vector(Inf, Inf, Inf, Inf)
template INF*(_: typedesc[Vector4]): Vector4 = Vector4_INF

var `==(Vector4 Variant)`: PtrOperatorEvaluator
var `!=(Vector4 Variant)`: PtrOperatorEvaluator
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
var `contains(Vector4 Dictionary)`: PtrOperatorEvaluator
var `contains(Vector4 Array)`: PtrOperatorEvaluator
var `contains(Vector4 PackedVector4Array)`: PtrOperatorEvaluator
proc `==`*(left: Vector4; right: Variant): bool = `==(Vector4 Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Vector4; right: Variant): bool = `!=(Vector4 Variant)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Vector4; right: Projection): Vector4 = `*(Vector4 Projection)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Vector4): bool = `contains(Vector4 Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Vector4): bool = `contains(Vector4 Array)`(getPtr right, getPtr left, addr result)
proc contains*(left: PackedVector4Array; right: Vector4): bool = `contains(Vector4 PackedVector4Array)`(getPtr right, getPtr left, addr result)
proc load_Vector4_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Vector4 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Vector4, VariantType_Nil)
  `!=(Vector4 Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Vector4, VariantType_Nil)
  `*(Vector4 Projection)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Vector4, VariantType_Projection)
  `contains(Vector4 Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector4, VariantType_Dictionary)
  `contains(Vector4 Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector4, VariantType_Array)
  `contains(Vector4 PackedVector4Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector4, VariantType_PackedVector4Array)

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
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight]
  `cubicInterpolate(Vector4 Vector4 Vector4 Vector4 Float)`(addr self, addr argArr[0], addr result, 4)
proc cubicInterpolateInTime*(self: Vector4; b: Vector4; preA: Vector4; postB: Vector4; weight: Float; bT: Float; preAT: Float; postBT: Float): Vector4 =
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight, getPtr bT, getPtr preAT, getPtr postBT]
  `cubicInterpolateInTime(Vector4 Vector4 Vector4 Vector4 Float Float Float Float)`(addr self, addr argArr[0], addr result, 7)
proc snappedf*(self: Vector4; step: Float): Vector4 =
  let argArr = [getPtr step]
  `snappedf(Vector4 Float)`(addr self, addr argArr[0], addr result, 1)
proc clampf*(self: Vector4; min: Float; max: Float): Vector4 =
  let argArr = [getPtr min, getPtr max]
  `clampf(Vector4 Float Float)`(addr self, addr argArr[0], addr result, 2)
proc inverse*(self: Vector4): Vector4 =
  `inverse(Vector4)`(addr self, nil, addr result, 0)
proc min*(self: Vector4; with: Vector4): Vector4 =
  let argArr = [getPtr with]
  `min(Vector4 Vector4)`(addr self, addr argArr[0], addr result, 1)
proc minf*(self: Vector4; with: Float): Vector4 =
  let argArr = [getPtr with]
  `minf(Vector4 Float)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Vector4; with: Vector4): Vector4 =
  let argArr = [getPtr with]
  `max(Vector4 Vector4)`(addr self, addr argArr[0], addr result, 1)
proc maxf*(self: Vector4; with: Float): Vector4 =
  let argArr = [getPtr with]
  `maxf(Vector4 Float)`(addr self, addr argArr[0], addr result, 1)

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