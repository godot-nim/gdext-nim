{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Vector2i_AxisX*: int = 0
template AxisX*(_: typedesc[Vector2i]): int = Vector2i_AxisX

const Vector2i_AxisY*: int = 1
template AxisY*(_: typedesc[Vector2i]): int = Vector2i_AxisY

const Vector2i_Zero*: Vector2i = vectori(0, 0)
template Zero*(_: typedesc[Vector2i]): Vector2i = Vector2i_Zero

const Vector2i_One*: Vector2i = vectori(1, 1)
template One*(_: typedesc[Vector2i]): Vector2i = Vector2i_One

const Vector2i_Min*: Vector2i = vectori(-2147483648, -2147483648)
template Min*(_: typedesc[Vector2i]): Vector2i = Vector2i_Min

const Vector2i_Max*: Vector2i = vectori(2147483647, 2147483647)
template Max*(_: typedesc[Vector2i]): Vector2i = Vector2i_Max

const Vector2i_Left*: Vector2i = vectori(-1, 0)
template Left*(_: typedesc[Vector2i]): Vector2i = Vector2i_Left

const Vector2i_Right*: Vector2i = vectori(1, 0)
template Right*(_: typedesc[Vector2i]): Vector2i = Vector2i_Right

const Vector2i_Up*: Vector2i = vectori(0, -1)
template Up*(_: typedesc[Vector2i]): Vector2i = Vector2i_Up

const Vector2i_Down*: Vector2i = vectori(0, 1)
template Down*(_: typedesc[Vector2i]): Vector2i = Vector2i_Down

var `==(Vector2i Variant)`: PtrOperatorEvaluator
var `!=(Vector2i Variant)`: PtrOperatorEvaluator
# `-(Vector2i)`
# `+(Vector2i)`
# `not(Vector2i)`
# `*(Vector2i Int)`
# `/(Vector2i Int)`
# `mod(Vector2i Int)`
# `*(Vector2i Float)`
# `/(Vector2i Float)`
# `==(Vector2i Vector2i)`
# `!=(Vector2i Vector2i)`
# `<(Vector2i Vector2i)`
# `<=(Vector2i Vector2i)`
# `>(Vector2i Vector2i)`
# `>=(Vector2i Vector2i)`
# `+(Vector2i Vector2i)`
# `-(Vector2i Vector2i)`
# `*(Vector2i Vector2i)`
# `/(Vector2i Vector2i)`
# `mod(Vector2i Vector2i)`
var `contains(Vector2i Dictionary)`: PtrOperatorEvaluator
var `contains(Vector2i Array)`: PtrOperatorEvaluator
proc `==`*(left: Vector2i; right: Variant): bool = `==(Vector2i Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Vector2i; right: Variant): bool = `!=(Vector2i Variant)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Vector2i): bool = `contains(Vector2i Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Vector2i): bool = `contains(Vector2i Array)`(getPtr right, getPtr left, addr result)
proc load_Vector2i_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Vector2i Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Vector2i, VariantType_Nil)
  `!=(Vector2i Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Vector2i, VariantType_Nil)
  `contains(Vector2i Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector2i, VariantType_Dictionary)
  `contains(Vector2i Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector2i, VariantType_Array)

# `aspect(Vector2i)`
# `maxAxisIndex(Vector2i)`
# `minAxisIndex(Vector2i)`
var `distanceTo(Vector2i Vector2i)`: PtrBuiltinMethod
var `distanceSquaredTo(Vector2i Vector2i)`: PtrBuiltinMethod
# `length(Vector2i)`
# `lengthSquared(Vector2i)`
# `sign(Vector2i)`
# `abs(Vector2i)`
# `clamp(Vector2i Vector2i Vector2i)`
var `clampi(Vector2i Int Int)`: PtrBuiltinMethod
# `snapped(Vector2i Vector2i)`
var `snappedi(Vector2i Int)`: PtrBuiltinMethod
var `min(Vector2i Vector2i)`: PtrBuiltinMethod
var `mini(Vector2i Int)`: PtrBuiltinMethod
var `max(Vector2i Vector2i)`: PtrBuiltinMethod
var `maxi(Vector2i Int)`: PtrBuiltinMethod

proc distanceTo*(self: Vector2i; to: Vector2i): Float =
  let argArr = [getPtr to]
  `distanceTo(Vector2i Vector2i)`(addr self, addr argArr[0], addr result, 1)
proc distanceSquaredTo*(self: Vector2i; to: Vector2i): Int =
  let argArr = [getPtr to]
  `distanceSquaredTo(Vector2i Vector2i)`(addr self, addr argArr[0], addr result, 1)
proc clampi*(self: Vector2i; min: Int; max: Int): Vector2i =
  let argArr = [getPtr min, getPtr max]
  `clampi(Vector2i Int Int)`(addr self, addr argArr[0], addr result, 2)
proc snappedi*(self: Vector2i; step: Int): Vector2i =
  let argArr = [getPtr step]
  `snappedi(Vector2i Int)`(addr self, addr argArr[0], addr result, 1)
proc min*(self: Vector2i; with: Vector2i): Vector2i =
  let argArr = [getPtr with]
  `min(Vector2i Vector2i)`(addr self, addr argArr[0], addr result, 1)
proc mini*(self: Vector2i; with: Int): Vector2i =
  let argArr = [getPtr with]
  `mini(Vector2i Int)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Vector2i; with: Vector2i): Vector2i =
  let argArr = [getPtr with]
  `max(Vector2i Vector2i)`(addr self, addr argArr[0], addr result, 1)
proc maxi*(self: Vector2i; with: Int): Vector2i =
  let argArr = [getPtr with]
  `maxi(Vector2i Int)`(addr self, addr argArr[0], addr result, 1)

proc load_Vector2i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `distanceTo(Vector2i Vector2i)` = load(VariantType_Vector2i, "distance_to", 707501214)
  `distanceSquaredTo(Vector2i Vector2i)` = load(VariantType_Vector2i, "distance_squared_to", 1130029528)
  `clampi(Vector2i Int Int)` = load(VariantType_Vector2i, "clampi", 3686769569)
  `snappedi(Vector2i Int)` = load(VariantType_Vector2i, "snappedi", 2161988953)
  `min(Vector2i Vector2i)` = load(VariantType_Vector2i, "min", 1735278196)
  `mini(Vector2i Int)` = load(VariantType_Vector2i, "mini", 2161988953)
  `max(Vector2i Vector2i)` = load(VariantType_Vector2i, "max", 1735278196)
  `maxi(Vector2i Int)` = load(VariantType_Vector2i, "maxi", 2161988953)