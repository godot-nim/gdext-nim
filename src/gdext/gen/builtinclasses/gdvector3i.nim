{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Vector3i_AXIS_X*: int = 0
template AXIS_X*(_: typedesc[Vector3i]): int = Vector3i_AXIS_X

const Vector3i_AXIS_Y*: int = 1
template AXIS_Y*(_: typedesc[Vector3i]): int = Vector3i_AXIS_Y

const Vector3i_AXIS_Z*: int = 2
template AXIS_Z*(_: typedesc[Vector3i]): int = Vector3i_AXIS_Z

const Vector3i_ZERO*: Vector3i = vectori(0, 0, 0)
template ZERO*(_: typedesc[Vector3i]): Vector3i = Vector3i_ZERO

const Vector3i_ONE*: Vector3i = vectori(1, 1, 1)
template ONE*(_: typedesc[Vector3i]): Vector3i = Vector3i_ONE

const Vector3i_MIN*: Vector3i = vectori(-2147483648, -2147483648, -2147483648)
template MIN*(_: typedesc[Vector3i]): Vector3i = Vector3i_MIN

const Vector3i_MAX*: Vector3i = vectori(2147483647, 2147483647, 2147483647)
template MAX*(_: typedesc[Vector3i]): Vector3i = Vector3i_MAX

const Vector3i_LEFT*: Vector3i = vectori(-1, 0, 0)
template LEFT*(_: typedesc[Vector3i]): Vector3i = Vector3i_LEFT

const Vector3i_RIGHT*: Vector3i = vectori(1, 0, 0)
template RIGHT*(_: typedesc[Vector3i]): Vector3i = Vector3i_RIGHT

const Vector3i_UP*: Vector3i = vectori(0, 1, 0)
template UP*(_: typedesc[Vector3i]): Vector3i = Vector3i_UP

const Vector3i_DOWN*: Vector3i = vectori(0, -1, 0)
template DOWN*(_: typedesc[Vector3i]): Vector3i = Vector3i_DOWN

const Vector3i_FORWARD*: Vector3i = vectori(0, 0, -1)
template FORWARD*(_: typedesc[Vector3i]): Vector3i = Vector3i_FORWARD

const Vector3i_BACK*: Vector3i = vectori(0, 0, 1)
template BACK*(_: typedesc[Vector3i]): Vector3i = Vector3i_BACK

var `==(Vector3i Variant)`: PtrOperatorEvaluator
var `!=(Vector3i Variant)`: PtrOperatorEvaluator
# `-(Vector3i)`
# `+(Vector3i)`
# `not(Vector3i)`
# `*(Vector3i Int)`
# `/(Vector3i Int)`
# `mod(Vector3i Int)`
# `*(Vector3i Float)`
# `/(Vector3i Float)`
# `==(Vector3i Vector3i)`
# `!=(Vector3i Vector3i)`
# `<(Vector3i Vector3i)`
# `<=(Vector3i Vector3i)`
# `>(Vector3i Vector3i)`
# `>=(Vector3i Vector3i)`
# `+(Vector3i Vector3i)`
# `-(Vector3i Vector3i)`
# `*(Vector3i Vector3i)`
# `/(Vector3i Vector3i)`
# `mod(Vector3i Vector3i)`
var `contains(Vector3i Dictionary)`: PtrOperatorEvaluator
var `contains(Vector3i Array)`: PtrOperatorEvaluator
proc `==`*(left: Vector3i; right: Variant): bool = `==(Vector3i Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Vector3i; right: Variant): bool = `!=(Vector3i Variant)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Vector3i): bool = `contains(Vector3i Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Vector3i): bool = `contains(Vector3i Array)`(getPtr right, getPtr left, addr result)
proc load_Vector3i_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Vector3i Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Vector3i, VariantType_Nil)
  `!=(Vector3i Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Vector3i, VariantType_Nil)
  `contains(Vector3i Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector3i, VariantType_Dictionary)
  `contains(Vector3i Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Vector3i, VariantType_Array)

# `minAxisIndex(Vector3i)`
# `maxAxisIndex(Vector3i)`
var `distanceTo(Vector3i Vector3i)`: PtrBuiltinMethod
var `distanceSquaredTo(Vector3i Vector3i)`: PtrBuiltinMethod
# `length(Vector3i)`
# `lengthSquared(Vector3i)`
# `sign(Vector3i)`
# `abs(Vector3i)`
# `clamp(Vector3i Vector3i Vector3i)`
var `clampi(Vector3i Int Int)`: PtrBuiltinMethod
# `snapped(Vector3i Vector3i)`
var `snappedi(Vector3i Int)`: PtrBuiltinMethod
var `min(Vector3i Vector3i)`: PtrBuiltinMethod
var `mini(Vector3i Int)`: PtrBuiltinMethod
var `max(Vector3i Vector3i)`: PtrBuiltinMethod
var `maxi(Vector3i Int)`: PtrBuiltinMethod

proc distanceTo*(self: Vector3i; to: Vector3i): Float =
  let argArr = [getPtr to]
  `distanceTo(Vector3i Vector3i)`(addr self, addr argArr[0], addr result, 1)
proc distanceSquaredTo*(self: Vector3i; to: Vector3i): Int =
  let argArr = [getPtr to]
  `distanceSquaredTo(Vector3i Vector3i)`(addr self, addr argArr[0], addr result, 1)
proc clampi*(self: Vector3i; min: Int; max: Int): Vector3i =
  let argArr = [getPtr min, getPtr max]
  `clampi(Vector3i Int Int)`(addr self, addr argArr[0], addr result, 2)
proc snappedi*(self: Vector3i; step: Int): Vector3i =
  let argArr = [getPtr step]
  `snappedi(Vector3i Int)`(addr self, addr argArr[0], addr result, 1)
proc min*(self: Vector3i; with: Vector3i): Vector3i =
  let argArr = [getPtr with]
  `min(Vector3i Vector3i)`(addr self, addr argArr[0], addr result, 1)
proc mini*(self: Vector3i; with: Int): Vector3i =
  let argArr = [getPtr with]
  `mini(Vector3i Int)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Vector3i; with: Vector3i): Vector3i =
  let argArr = [getPtr with]
  `max(Vector3i Vector3i)`(addr self, addr argArr[0], addr result, 1)
proc maxi*(self: Vector3i; with: Int): Vector3i =
  let argArr = [getPtr with]
  `maxi(Vector3i Int)`(addr self, addr argArr[0], addr result, 1)

proc load_Vector3i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `distanceTo(Vector3i Vector3i)` = load(VariantType_Vector3i, "distance_to", 1975170430)
  `distanceSquaredTo(Vector3i Vector3i)` = load(VariantType_Vector3i, "distance_squared_to", 2947717320)
  `clampi(Vector3i Int Int)` = load(VariantType_Vector3i, "clampi", 1077216921)
  `snappedi(Vector3i Int)` = load(VariantType_Vector3i, "snappedi", 2377625641)
  `min(Vector3i Vector3i)` = load(VariantType_Vector3i, "min", 1989319750)
  `mini(Vector3i Int)` = load(VariantType_Vector3i, "mini", 2377625641)
  `max(Vector3i Vector3i)` = load(VariantType_Vector3i, "max", 1989319750)
  `maxi(Vector3i Int)` = load(VariantType_Vector3i, "maxi", 2377625641)