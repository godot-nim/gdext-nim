# constant values

# const Vector3i_Zero: Vector3i = vector3i(0, 0, 0)
# template Zero*(_: typedesc[Vector3i]): Vector3i = Vector3i_Zero

# const Vector3i_One: Vector3i = vector3i(1, 1, 1)
# template One*(_: typedesc[Vector3i]): Vector3i = Vector3i_One

# const Vector3i_Min: Vector3i = vector3i(-2147483648, -2147483648, -2147483648)
# template Min*(_: typedesc[Vector3i]): Vector3i = Vector3i_Min

# const Vector3i_Max: Vector3i = vector3i(2147483647, 2147483647, 2147483647)
# template Max*(_: typedesc[Vector3i]): Vector3i = Vector3i_Max

const Vector3i_Left: Vector3i = vector3i(-1, 0, 0)
template Left*(_: typedesc[Vector3i]): Vector3i = Vector3i_Left

const Vector3i_Right: Vector3i = vector3i(1, 0, 0)
template Right*(_: typedesc[Vector3i]): Vector3i = Vector3i_Right

const Vector3i_Up: Vector3i = vector3i(0, 1, 0)
template Up*(_: typedesc[Vector3i]): Vector3i = Vector3i_Up

const Vector3i_Down: Vector3i = vector3i(0, -1, 0)
template Down*(_: typedesc[Vector3i]): Vector3i = Vector3i_Down

const Vector3i_Forward: Vector3i = vector3i(0, 0, -1)
template Forward*(_: typedesc[Vector3i]): Vector3i = Vector3i_Forward

const Vector3i_Back: Vector3i = vector3i(0, 0, 1)
template Back*(_: typedesc[Vector3i]): Vector3i = Vector3i_Back

# `==(Vector3i Variant)`
# `!=(Vector3i Variant)`
# `-(Vector3i)`
# `+(Vector3i)`
# `not(Vector3i)`
# `*(Vector3i Int)`
# `/(Vector3i Int)`
# `%(Vector3i Int)`
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
# `%(Vector3i Vector3i)`
# `in(Vector3i Dictionary)`
# `in(Vector3i Array)`

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
  `distanceTo(Vector3i Vector3i)`.call(addr self, [getPtr to], addr result)
proc distanceSquaredTo*(self: Vector3i; to: Vector3i): Int =
  `distanceSquaredTo(Vector3i Vector3i)`.call(addr self, [getPtr to], addr result)
proc clampi*(self: Vector3i; min: Int; max: Int): Vector3i =
  `clampi(Vector3i Int Int)`.call(addr self, [getPtr min, getPtr max], addr result)
proc snappedi*(self: Vector3i; step: Int): Vector3i =
  `snappedi(Vector3i Int)`.call(addr self, [getPtr step], addr result)
proc min*(self: Vector3i; with: Vector3i): Vector3i =
  `min(Vector3i Vector3i)`.call(addr self, [getPtr with], addr result)
proc mini*(self: Vector3i; with: Int): Vector3i =
  `mini(Vector3i Int)`.call(addr self, [getPtr with], addr result)
proc max*(self: Vector3i; with: Vector3i): Vector3i =
  `max(Vector3i Vector3i)`.call(addr self, [getPtr with], addr result)
proc maxi*(self: Vector3i; with: Int): Vector3i =
  `maxi(Vector3i Int)`.call(addr self, [getPtr with], addr result)

proc load_Vector3i_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `distanceTo(Vector3i Vector3i)` = load(VariantType_Vector3i, "distance_to", 1975170430)
  `distanceSquaredTo(Vector3i Vector3i)` = load(VariantType_Vector3i, "distance_squared_to", 2947717320)
  `clampi(Vector3i Int Int)` = load(VariantType_Vector3i, "clampi", 1077216921)
  `snappedi(Vector3i Int)` = load(VariantType_Vector3i, "snappedi", 2377625641)
  `min(Vector3i Vector3i)` = load(VariantType_Vector3i, "min", 1989319750)
  `mini(Vector3i Int)` = load(VariantType_Vector3i, "mini", 2377625641)
  `max(Vector3i Vector3i)` = load(VariantType_Vector3i, "max", 1989319750)
  `maxi(Vector3i Int)` = load(VariantType_Vector3i, "maxi", 2377625641)
