# constant values

const Vector2i_Zero: Vector2i = vector2i(0, 0)
template Zero*(_: typedesc[Vector2i]): Vector2i = Vector2i_Zero

const Vector2i_One: Vector2i = vector2i(1, 1)
template One*(_: typedesc[Vector2i]): Vector2i = Vector2i_One

const Vector2i_Min: Vector2i = vector2i(-2147483648, -2147483648)
template Min*(_: typedesc[Vector2i]): Vector2i = Vector2i_Min

const Vector2i_Max: Vector2i = vector2i(2147483647, 2147483647)
template Max*(_: typedesc[Vector2i]): Vector2i = Vector2i_Max

const Vector2i_Left: Vector2i = vector2i(-1, 0)
template Left*(_: typedesc[Vector2i]): Vector2i = Vector2i_Left

const Vector2i_Right: Vector2i = vector2i(1, 0)
template Right*(_: typedesc[Vector2i]): Vector2i = Vector2i_Right

const Vector2i_Up: Vector2i = vector2i(0, -1)
template Up*(_: typedesc[Vector2i]): Vector2i = Vector2i_Up

const Vector2i_Down: Vector2i = vector2i(0, 1)
template Down*(_: typedesc[Vector2i]): Vector2i = Vector2i_Down

# `==(Vector2i Variant)`
# `!=(Vector2i Variant)`
# `-(Vector2i)`
# `+(Vector2i)`
# `not(Vector2i)`
# `*(Vector2i Int)`
# `/(Vector2i Int)`
# `%(Vector2i Int)`
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
# `%(Vector2i Vector2i)`
# `in(Vector2i Dictionary)`
# `in(Vector2i Array)`

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
  `distanceTo(Vector2i Vector2i)`.call(addr self, [getPtr to], addr result)
proc distanceSquaredTo*(self: Vector2i; to: Vector2i): Int =
  `distanceSquaredTo(Vector2i Vector2i)`.call(addr self, [getPtr to], addr result)
proc clampi*(self: Vector2i; min: Int; max: Int): Vector2i =
  `clampi(Vector2i Int Int)`.call(addr self, [getPtr min, getPtr max], addr result)
proc snappedi*(self: Vector2i; step: Int): Vector2i =
  `snappedi(Vector2i Int)`.call(addr self, [getPtr step], addr result)
proc min*(self: Vector2i; with: Vector2i): Vector2i =
  `min(Vector2i Vector2i)`.call(addr self, [getPtr with], addr result)
proc mini*(self: Vector2i; with: Int): Vector2i =
  `mini(Vector2i Int)`.call(addr self, [getPtr with], addr result)
proc max*(self: Vector2i; with: Vector2i): Vector2i =
  `max(Vector2i Vector2i)`.call(addr self, [getPtr with], addr result)
proc maxi*(self: Vector2i; with: Int): Vector2i =
  `maxi(Vector2i Int)`.call(addr self, [getPtr with], addr result)

proc load_Vector2i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `distanceTo(Vector2i Vector2i)` = load(VariantType_Vector2i, "distance_to", 707501214)
  `distanceSquaredTo(Vector2i Vector2i)` = load(VariantType_Vector2i, "distance_squared_to", 1130029528)
  `clampi(Vector2i Int Int)` = load(VariantType_Vector2i, "clampi", 3686769569)
  `snappedi(Vector2i Int)` = load(VariantType_Vector2i, "snappedi", 2161988953)
  `min(Vector2i Vector2i)` = load(VariantType_Vector2i, "min", 1735278196)
  `mini(Vector2i Int)` = load(VariantType_Vector2i, "mini", 2161988953)
  `max(Vector2i Vector2i)` = load(VariantType_Vector2i, "max", 1735278196)
  `maxi(Vector2i Int)` = load(VariantType_Vector2i, "maxi", 2161988953)
