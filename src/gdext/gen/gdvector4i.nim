# constant values

const Vector4i_Zero: Vector4i = vector4i(0, 0, 0, 0)
template Zero*(_: typedesc[Vector4i]): Vector4i = Vector4i_Zero

const Vector4i_One: Vector4i = vector4i(1, 1, 1, 1)
template One*(_: typedesc[Vector4i]): Vector4i = Vector4i_One

const Vector4i_Min: Vector4i = vector4i(-2147483648, -2147483648, -2147483648, -2147483648)
template Min*(_: typedesc[Vector4i]): Vector4i = Vector4i_Min

const Vector4i_Max: Vector4i = vector4i(2147483647, 2147483647, 2147483647, 2147483647)
template Max*(_: typedesc[Vector4i]): Vector4i = Vector4i_Max

# `==(Vector4i Variant)`
# `!=(Vector4i Variant)`
# `-(Vector4i)`
# `+(Vector4i)`
# `not(Vector4i)`
# `*(Vector4i Int)`
# `/(Vector4i Int)`
# `%(Vector4i Int)`
# `*(Vector4i Float)`
# `/(Vector4i Float)`
# `==(Vector4i Vector4i)`
# `!=(Vector4i Vector4i)`
# `<(Vector4i Vector4i)`
# `<=(Vector4i Vector4i)`
# `>(Vector4i Vector4i)`
# `>=(Vector4i Vector4i)`
# `+(Vector4i Vector4i)`
# `-(Vector4i Vector4i)`
# `*(Vector4i Vector4i)`
# `/(Vector4i Vector4i)`
# `%(Vector4i Vector4i)`
# `in(Vector4i Dictionary)`
# `in(Vector4i Array)`

# `minAxisIndex(Vector4i)`
# `maxAxisIndex(Vector4i)`
# `length(Vector4i)`
# `lengthSquared(Vector4i)`
# `sign(Vector4i)`
# `abs(Vector4i)`
# `clamp(Vector4i Vector4i Vector4i)`
var `clampi(Vector4i Int Int)`: PtrBuiltinMethod
# `snapped(Vector4i Vector4i)`
var `snappedi(Vector4i Int)`: PtrBuiltinMethod
var `min(Vector4i Vector4i)`: PtrBuiltinMethod
var `mini(Vector4i Int)`: PtrBuiltinMethod
var `max(Vector4i Vector4i)`: PtrBuiltinMethod
var `maxi(Vector4i Int)`: PtrBuiltinMethod
var `distanceTo(Vector4i Vector4i)`: PtrBuiltinMethod
var `distanceSquaredTo(Vector4i Vector4i)`: PtrBuiltinMethod

proc clampi*(self: Vector4i; min: Int; max: Int): Vector4i =
  let argArr = [getPtr min, getPtr max]
  `clampi(Vector4i Int Int)`(addr self, addr argArr[0], addr result, 2)
proc snappedi*(self: Vector4i; step: Int): Vector4i =
  let argArr = [getPtr step]
  `snappedi(Vector4i Int)`(addr self, addr argArr[0], addr result, 1)
proc min*(self: Vector4i; with: Vector4i): Vector4i =
  let argArr = [getPtr with]
  `min(Vector4i Vector4i)`(addr self, addr argArr[0], addr result, 1)
proc mini*(self: Vector4i; with: Int): Vector4i =
  let argArr = [getPtr with]
  `mini(Vector4i Int)`(addr self, addr argArr[0], addr result, 1)
proc max*(self: Vector4i; with: Vector4i): Vector4i =
  let argArr = [getPtr with]
  `max(Vector4i Vector4i)`(addr self, addr argArr[0], addr result, 1)
proc maxi*(self: Vector4i; with: Int): Vector4i =
  let argArr = [getPtr with]
  `maxi(Vector4i Int)`(addr self, addr argArr[0], addr result, 1)
proc distanceTo*(self: Vector4i; to: Vector4i): Float =
  let argArr = [getPtr to]
  `distanceTo(Vector4i Vector4i)`(addr self, addr argArr[0], addr result, 1)
proc distanceSquaredTo*(self: Vector4i; to: Vector4i): Int =
  let argArr = [getPtr to]
  `distanceSquaredTo(Vector4i Vector4i)`(addr self, addr argArr[0], addr result, 1)

proc load_Vector4i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `clampi(Vector4i Int Int)` = load(VariantType_Vector4i, "clampi", 2994578256)
  `snappedi(Vector4i Int)` = load(VariantType_Vector4i, "snappedi", 1476494415)
  `min(Vector4i Vector4i)` = load(VariantType_Vector4i, "min", 1181693102)
  `mini(Vector4i Int)` = load(VariantType_Vector4i, "mini", 1476494415)
  `max(Vector4i Vector4i)` = load(VariantType_Vector4i, "max", 1181693102)
  `maxi(Vector4i Int)` = load(VariantType_Vector4i, "maxi", 1476494415)
  `distanceTo(Vector4i Vector4i)` = load(VariantType_Vector4i, "distance_to", 3446086573)
  `distanceSquaredTo(Vector4i Vector4i)` = load(VariantType_Vector4i, "distance_squared_to", 346708794)
