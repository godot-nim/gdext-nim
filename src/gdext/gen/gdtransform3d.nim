# constant values

const Transform3D_Identity: Transform3D = transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
template Identity*(_: typedesc[Transform3D]): Transform3D = Transform3D_Identity

const Transform3D_FlipX: Transform3D = transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
template FlipX*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipX

const Transform3D_FlipY: Transform3D = transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)
template FlipY*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipY

const Transform3D_FlipZ: Transform3D = transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)
template FlipZ*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipZ

# `==(Transform3D Variant)`
# `!=(Transform3D Variant)`
var `not(Transform3D)`: PtrOperatorEvaluator
var `*(Transform3D Int)`: PtrOperatorEvaluator
var `/(Transform3D Int)`: PtrOperatorEvaluator
var `*(Transform3D Float)`: PtrOperatorEvaluator
var `/(Transform3D Float)`: PtrOperatorEvaluator
var `*(Transform3D Vector3)`: PtrOperatorEvaluator
var `*(Transform3D Plane)`: PtrOperatorEvaluator
var `*(Transform3D AABB)`: PtrOperatorEvaluator
# `==(Transform3D Transform3D)`
# `!=(Transform3D Transform3D)`
var `*(Transform3D Transform3D)`: PtrOperatorEvaluator
# `in(Transform3D Dictionary)`
# `in(Transform3D Array)`
var `*(Transform3D PackedVector3Array)`: PtrOperatorEvaluator
func `not`*(left: Transform3D): bool = {.noSideEffect.}: `not(Transform3D)`(getPtr left, nil, addr result)
func `*`*(left: Transform3D; right: Int): Transform3D = {.noSideEffect.}: `*(Transform3D Int)`(getPtr left, getPtr right, addr result)
func `/`*(left: Transform3D; right: Int): Transform3D = {.noSideEffect.}: `/(Transform3D Int)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: Float): Transform3D = {.noSideEffect.}: `*(Transform3D Float)`(getPtr left, getPtr right, addr result)
func `/`*(left: Transform3D; right: Float): Transform3D = {.noSideEffect.}: `/(Transform3D Float)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: Vector3): Vector3 = {.noSideEffect.}: `*(Transform3D Vector3)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: Plane): Plane = {.noSideEffect.}: `*(Transform3D Plane)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: AABB): AABB = {.noSideEffect.}: `*(Transform3D AABB)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: Transform3D): Transform3D = {.noSideEffect.}: `*(Transform3D Transform3D)`(getPtr left, getPtr right, addr result)
func `*`*(left: Transform3D; right: PackedVector3Array): PackedVector3Array = {.noSideEffect.}: `*(Transform3D PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc load_Transform3D_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(Transform3D)` = load(opNot, VariantType_Transform3D, VariantType_Nil)
  `*(Transform3D Int)` = load(opMultiply, VariantType_Transform3D, VariantType_Int)
  `/(Transform3D Int)` = load(opDivide, VariantType_Transform3D, VariantType_Int)
  `*(Transform3D Float)` = load(opMultiply, VariantType_Transform3D, VariantType_Float)
  `/(Transform3D Float)` = load(opDivide, VariantType_Transform3D, VariantType_Float)
  `*(Transform3D Vector3)` = load(opMultiply, VariantType_Transform3D, VariantType_Vector3)
  `*(Transform3D Plane)` = load(opMultiply, VariantType_Transform3D, VariantType_Plane)
  `*(Transform3D AABB)` = load(opMultiply, VariantType_Transform3D, VariantType_AABB)
  `*(Transform3D Transform3D)` = load(opMultiply, VariantType_Transform3D, VariantType_Transform3D)
  `*(Transform3D PackedVector3Array)` = load(opMultiply, VariantType_Transform3D, VariantType_PackedVector3Array)

var `inverse(Transform3D)`: PtrBuiltinMethod
var `affineInverse(Transform3D)`: PtrBuiltinMethod
var `orthonormalized(Transform3D)`: PtrBuiltinMethod
var `rotated(Transform3D Vector3 Float)`: PtrBuiltinMethod
var `rotatedLocal(Transform3D Vector3 Float)`: PtrBuiltinMethod
var `scaled(Transform3D Vector3)`: PtrBuiltinMethod
var `scaledLocal(Transform3D Vector3)`: PtrBuiltinMethod
var `translated(Transform3D Vector3)`: PtrBuiltinMethod
var `translatedLocal(Transform3D Vector3)`: PtrBuiltinMethod
var `lookingAt(Transform3D Vector3 Vector3 bool)`: PtrBuiltinMethod
var `interpolateWith(Transform3D Transform3D Float)`: PtrBuiltinMethod
var `isEqualApprox(Transform3D Transform3D)`: PtrBuiltinMethod
var `isFinite(Transform3D)`: PtrBuiltinMethod

proc inverse*(self: Transform3D): Transform3D =
  `inverse(Transform3D)`.call(addr self, [], addr result)
proc affineInverse*(self: Transform3D): Transform3D =
  `affineInverse(Transform3D)`.call(addr self, [], addr result)
proc orthonormalized*(self: Transform3D): Transform3D =
  `orthonormalized(Transform3D)`.call(addr self, [], addr result)
proc rotated*(self: Transform3D; axis: Vector3; angle: Float): Transform3D =
  `rotated(Transform3D Vector3 Float)`.call(addr self, [getPtr axis, getPtr angle], addr result)
proc rotatedLocal*(self: Transform3D; axis: Vector3; angle: Float): Transform3D =
  `rotatedLocal(Transform3D Vector3 Float)`.call(addr self, [getPtr axis, getPtr angle], addr result)
proc scaled*(self: Transform3D; scale: Vector3): Transform3D =
  `scaled(Transform3D Vector3)`.call(addr self, [getPtr scale], addr result)
proc scaledLocal*(self: Transform3D; scale: Vector3): Transform3D =
  `scaledLocal(Transform3D Vector3)`.call(addr self, [getPtr scale], addr result)
proc translated*(self: Transform3D; offset: Vector3): Transform3D =
  `translated(Transform3D Vector3)`.call(addr self, [getPtr offset], addr result)
proc translatedLocal*(self: Transform3D; offset: Vector3): Transform3D =
  `translatedLocal(Transform3D Vector3)`.call(addr self, [getPtr offset], addr result)
proc lookingAt*(self: Transform3D; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): Transform3D =
  `lookingAt(Transform3D Vector3 Vector3 bool)`.call(addr self, [getPtr target, getPtr up, getPtr useModelFront], addr result)
proc interpolateWith*(self: Transform3D; xform: Transform3D; weight: Float): Transform3D =
  `interpolateWith(Transform3D Transform3D Float)`.call(addr self, [getPtr xform, getPtr weight], addr result)
proc isEqualApprox*(self: Transform3D; xform: Transform3D): bool =
  `isEqualApprox(Transform3D Transform3D)`.call(addr self, [getPtr xform], addr result)
proc isFinite*(self: Transform3D): bool =
  `isFinite(Transform3D)`.call(addr self, [], addr result)

proc load_Transform3D_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `inverse(Transform3D)` = load(VariantType_Transform3D, "inverse", 3816817146)
  `affineInverse(Transform3D)` = load(VariantType_Transform3D, "affine_inverse", 3816817146)
  `orthonormalized(Transform3D)` = load(VariantType_Transform3D, "orthonormalized", 3816817146)
  `rotated(Transform3D Vector3 Float)` = load(VariantType_Transform3D, "rotated", 1563203923)
  `rotatedLocal(Transform3D Vector3 Float)` = load(VariantType_Transform3D, "rotated_local", 1563203923)
  `scaled(Transform3D Vector3)` = load(VariantType_Transform3D, "scaled", 1405596198)
  `scaledLocal(Transform3D Vector3)` = load(VariantType_Transform3D, "scaled_local", 1405596198)
  `translated(Transform3D Vector3)` = load(VariantType_Transform3D, "translated", 1405596198)
  `translatedLocal(Transform3D Vector3)` = load(VariantType_Transform3D, "translated_local", 1405596198)
  `lookingAt(Transform3D Vector3 Vector3 bool)` = load(VariantType_Transform3D, "looking_at", 90889270)
  `interpolateWith(Transform3D Transform3D Float)` = load(VariantType_Transform3D, "interpolate_with", 1786453358)
  `isEqualApprox(Transform3D Transform3D)` = load(VariantType_Transform3D, "is_equal_approx", 696001652)
  `isFinite(Transform3D)` = load(VariantType_Transform3D, "is_finite", 3918633141)
