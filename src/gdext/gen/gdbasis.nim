# constant values

const Basis_Identity: Basis = basis(1, 0, 0, 0, 1, 0, 0, 0, 1)
template Identity*(_: typedesc[Basis]): Basis = Basis_Identity

const Basis_FlipX: Basis = basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)
template FlipX*(_: typedesc[Basis]): Basis = Basis_FlipX

const Basis_FlipY: Basis = basis(1, 0, 0, 0, -1, 0, 0, 0, 1)
template FlipY*(_: typedesc[Basis]): Basis = Basis_FlipY

const Basis_FlipZ: Basis = basis(1, 0, 0, 0, 1, 0, 0, 0, -1)
template FlipZ*(_: typedesc[Basis]): Basis = Basis_FlipZ

# `==(Basis Variant)`
# `!=(Basis Variant)`
var `not(Basis)`: PtrOperatorEvaluator
var `*(Basis Int)`: PtrOperatorEvaluator
var `/(Basis Int)`: PtrOperatorEvaluator
var `*(Basis Float)`: PtrOperatorEvaluator
var `/(Basis Float)`: PtrOperatorEvaluator
var `*(Basis Vector3)`: PtrOperatorEvaluator
# `==(Basis Basis)`
# `!=(Basis Basis)`
var `*(Basis Basis)`: PtrOperatorEvaluator
# `in(Basis Dictionary)`
# `in(Basis Array)`
func `not`*(left: Basis): bool = {.noSideEffect.}: `not(Basis)`(getPtr left, nil, addr result)
func `*`*(left: Basis; right: Int): Basis = {.noSideEffect.}: `*(Basis Int)`(getPtr left, getPtr right, addr result)
func `/`*(left: Basis; right: Int): Basis = {.noSideEffect.}: `/(Basis Int)`(getPtr left, getPtr right, addr result)
func `*`*(left: Basis; right: Float): Basis = {.noSideEffect.}: `*(Basis Float)`(getPtr left, getPtr right, addr result)
func `/`*(left: Basis; right: Float): Basis = {.noSideEffect.}: `/(Basis Float)`(getPtr left, getPtr right, addr result)
func `*`*(left: Basis; right: Vector3): Vector3 = {.noSideEffect.}: `*(Basis Vector3)`(getPtr left, getPtr right, addr result)
func `*`*(left: Basis; right: Basis): Basis = {.noSideEffect.}: `*(Basis Basis)`(getPtr left, getPtr right, addr result)
proc load_Basis_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Basis)` = load(opNot, VariantType_Basis, VariantType_Nil)
  `*(Basis Int)` = load(opMultiply, VariantType_Basis, VariantType_Int)
  `/(Basis Int)` = load(opDivide, VariantType_Basis, VariantType_Int)
  `*(Basis Float)` = load(opMultiply, VariantType_Basis, VariantType_Float)
  `/(Basis Float)` = load(opDivide, VariantType_Basis, VariantType_Float)
  `*(Basis Vector3)` = load(opMultiply, VariantType_Basis, VariantType_Vector3)
  `*(Basis Basis)` = load(opMultiply, VariantType_Basis, VariantType_Basis)

var `inverse(Basis)`: PtrBuiltinMethod
var `transposed(Basis)`: PtrBuiltinMethod
var `orthonormalized(Basis)`: PtrBuiltinMethod
var `determinant(Basis)`: PtrBuiltinMethod
var `rotated(Basis Vector3 Float)`: PtrBuiltinMethod
var `scaled(Basis Vector3)`: PtrBuiltinMethod
var `scaledLocal(Basis Vector3)`: PtrBuiltinMethod
var `getScale(Basis)`: PtrBuiltinMethod
var `getEuler(Basis Int)`: PtrBuiltinMethod
var `tdotx(Basis Vector3)`: PtrBuiltinMethod
var `tdoty(Basis Vector3)`: PtrBuiltinMethod
var `tdotz(Basis Vector3)`: PtrBuiltinMethod
var `slerp(Basis Basis Float)`: PtrBuiltinMethod
var `isConformal(Basis)`: PtrBuiltinMethod
var `isEqualApprox(Basis Basis)`: PtrBuiltinMethod
var `isFinite(Basis)`: PtrBuiltinMethod
var `getRotationQuaternion(Basis)`: PtrBuiltinMethod
var `lookingAt(Basis Vector3 Vector3 bool)`: PtrBuiltinMethod
var `fromScale(Basis Vector3)`: PtrBuiltinMethod
var `fromEuler(Basis Vector3 Int)`: PtrBuiltinMethod

proc inverse*(self: Basis): Basis =
  `inverse(Basis)`.call(addr self, [], addr result)
proc transposed*(self: Basis): Basis =
  `transposed(Basis)`.call(addr self, [], addr result)
proc orthonormalized*(self: Basis): Basis =
  `orthonormalized(Basis)`.call(addr self, [], addr result)
proc determinant*(self: Basis): Float =
  `determinant(Basis)`.call(addr self, [], addr result)
proc rotated*(self: Basis; axis: Vector3; angle: Float): Basis =
  `rotated(Basis Vector3 Float)`.call(addr self, [getPtr axis, getPtr angle], addr result)
proc scaled*(self: Basis; scale: Vector3): Basis =
  `scaled(Basis Vector3)`.call(addr self, [getPtr scale], addr result)
proc scaledLocal*(self: Basis; scale: Vector3): Basis =
  `scaledLocal(Basis Vector3)`.call(addr self, [getPtr scale], addr result)
proc getScale*(self: Basis): Vector3 =
  `getScale(Basis)`.call(addr self, [], addr result)
proc getEuler*(self: Basis; order: Int = 2): Vector3 =
  `getEuler(Basis Int)`.call(addr self, [getPtr order], addr result)
proc tdotx*(self: Basis; with: Vector3): Float =
  `tdotx(Basis Vector3)`.call(addr self, [getPtr with], addr result)
proc tdoty*(self: Basis; with: Vector3): Float =
  `tdoty(Basis Vector3)`.call(addr self, [getPtr with], addr result)
proc tdotz*(self: Basis; with: Vector3): Float =
  `tdotz(Basis Vector3)`.call(addr self, [getPtr with], addr result)
proc slerp*(self: Basis; to: Basis; weight: Float): Basis =
  `slerp(Basis Basis Float)`.call(addr self, [getPtr to, getPtr weight], addr result)
proc isConformal*(self: Basis): bool =
  `isConformal(Basis)`.call(addr self, [], addr result)
proc isEqualApprox*(self: Basis; b: Basis): bool =
  `isEqualApprox(Basis Basis)`.call(addr self, [getPtr b], addr result)
proc isFinite*(self: Basis): bool =
  `isFinite(Basis)`.call(addr self, [], addr result)
proc getRotationQuaternion*(self: Basis): Quaternion =
  `getRotationQuaternion(Basis)`.call(addr self, [], addr result)
proc lookingAt*(_: typedesc[Basis]; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): Basis =
  `lookingAt(Basis Vector3 Vector3 bool)`.call([getPtr target, getPtr up, getPtr useModelFront], addr result)
proc fromScale*(_: typedesc[Basis]; scale: Vector3): Basis =
  `fromScale(Basis Vector3)`.call([getPtr scale], addr result)
proc fromEuler*(_: typedesc[Basis]; euler: Vector3; order: Int = 2): Basis =
  `fromEuler(Basis Vector3 Int)`.call([getPtr euler, getPtr order], addr result)

proc load_Basis_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `inverse(Basis)` = load(VariantType_Basis, "inverse", 594669093)
  `transposed(Basis)` = load(VariantType_Basis, "transposed", 594669093)
  `orthonormalized(Basis)` = load(VariantType_Basis, "orthonormalized", 594669093)
  `determinant(Basis)` = load(VariantType_Basis, "determinant", 466405837)
  `rotated(Basis Vector3 Float)` = load(VariantType_Basis, "rotated", 1998708965)
  `scaled(Basis Vector3)` = load(VariantType_Basis, "scaled", 3934786792)
  `scaledLocal(Basis Vector3)` = load(VariantType_Basis, "scaled_local", 3934786792)
  `getScale(Basis)` = load(VariantType_Basis, "get_scale", 1776574132)
  `getEuler(Basis Int)` = load(VariantType_Basis, "get_euler", 1394941017)
  `tdotx(Basis Vector3)` = load(VariantType_Basis, "tdotx", 1047977935)
  `tdoty(Basis Vector3)` = load(VariantType_Basis, "tdoty", 1047977935)
  `tdotz(Basis Vector3)` = load(VariantType_Basis, "tdotz", 1047977935)
  `slerp(Basis Basis Float)` = load(VariantType_Basis, "slerp", 3118673011)
  `isConformal(Basis)` = load(VariantType_Basis, "is_conformal", 3918633141)
  `isEqualApprox(Basis Basis)` = load(VariantType_Basis, "is_equal_approx", 3165333982)
  `isFinite(Basis)` = load(VariantType_Basis, "is_finite", 3918633141)
  `getRotationQuaternion(Basis)` = load(VariantType_Basis, "get_rotation_quaternion", 4274879941)
  `lookingAt(Basis Vector3 Vector3 bool)` = load(VariantType_Basis, "looking_at", 3728732505)
  `fromScale(Basis Vector3)` = load(VariantType_Basis, "from_scale", 3703240166)
  `fromEuler(Basis Vector3 Int)` = load(VariantType_Basis, "from_euler", 2802321791)
