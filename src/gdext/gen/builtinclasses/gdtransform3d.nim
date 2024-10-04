{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Transform3D_Identity*: Transform3D = transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
template Identity*(_: typedesc[Transform3D]): Transform3D = Transform3D_Identity

const Transform3D_FlipX*: Transform3D = transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
template FlipX*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipX

const Transform3D_FlipY*: Transform3D = transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)
template FlipY*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipY

const Transform3D_FlipZ*: Transform3D = transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)
template FlipZ*(_: typedesc[Transform3D]): Transform3D = Transform3D_FlipZ

var `==(Transform3D Variant)`: PtrOperatorEvaluator
var `!=(Transform3D Variant)`: PtrOperatorEvaluator
var `not(Transform3D)`: PtrOperatorEvaluator
var `*(Transform3D Int)`: PtrOperatorEvaluator
var `/(Transform3D Int)`: PtrOperatorEvaluator
var `*(Transform3D Float)`: PtrOperatorEvaluator
var `/(Transform3D Float)`: PtrOperatorEvaluator
var `*(Transform3D Vector3)`: PtrOperatorEvaluator
var `*(Transform3D Plane)`: PtrOperatorEvaluator
var `*(Transform3D Aabb)`: PtrOperatorEvaluator
var `==(Transform3D Transform3D)`: PtrOperatorEvaluator
var `!=(Transform3D Transform3D)`: PtrOperatorEvaluator
var `*(Transform3D Transform3D)`: PtrOperatorEvaluator
var `contains(Transform3D Dictionary)`: PtrOperatorEvaluator
var `contains(Transform3D Array)`: PtrOperatorEvaluator
var `*(Transform3D PackedVector3Array)`: PtrOperatorEvaluator
proc `==`*(left: Transform3D; right: Variant): bool = `==(Transform3D Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Transform3D; right: Variant): bool = `!=(Transform3D Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Transform3D): bool = `not(Transform3D)`(getPtr left, nil, addr result)
proc `*`*(left: Transform3D; right: Int): Transform3D = `*(Transform3D Int)`(getPtr left, getPtr right, addr result)
proc `/`*(left: Transform3D; right: Int): Transform3D = `/(Transform3D Int)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Transform3D; right: Float): Transform3D = `*(Transform3D Float)`(getPtr left, getPtr right, addr result)
proc `/`*(left: Transform3D; right: Float): Transform3D = `/(Transform3D Float)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Transform3D; right: Vector3): Vector3 = `*(Transform3D Vector3)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Transform3D; right: Plane): Plane = `*(Transform3D Plane)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Transform3D; right: Aabb): Aabb = `*(Transform3D Aabb)`(getPtr left, getPtr right, addr result)
proc `==`*(left: Transform3D; right: Transform3D): bool = `==(Transform3D Transform3D)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Transform3D; right: Transform3D): bool = `!=(Transform3D Transform3D)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Transform3D; right: Transform3D): Transform3D = `*(Transform3D Transform3D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Transform3D): bool = `contains(Transform3D Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Transform3D): bool = `contains(Transform3D Array)`(getPtr right, getPtr left, addr result)
proc `*`*(left: Transform3D; right: PackedVector3Array): PackedVector3Array = `*(Transform3D PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc load_Transform3D_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Transform3D Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Transform3D, VariantType_Nil)
  `!=(Transform3D Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Transform3D, VariantType_Nil)
  `not(Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Transform3D, VariantType_Nil)
  `*(Transform3D Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Int)
  `/(Transform3D Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Divide, VariantType_Transform3D, VariantType_Int)
  `*(Transform3D Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Float)
  `/(Transform3D Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Divide, VariantType_Transform3D, VariantType_Float)
  `*(Transform3D Vector3)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Vector3)
  `*(Transform3D Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Plane)
  `*(Transform3D Aabb)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Aabb)
  `==(Transform3D Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Transform3D, VariantType_Transform3D)
  `!=(Transform3D Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Transform3D, VariantType_Transform3D)
  `*(Transform3D Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_Transform3D)
  `contains(Transform3D Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Transform3D, VariantType_Dictionary)
  `contains(Transform3D Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Transform3D, VariantType_Array)
  `*(Transform3D PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Transform3D, VariantType_PackedVector3Array)

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
  `inverse(Transform3D)`(addr self, nil, addr result, 0)
proc affineInverse*(self: Transform3D): Transform3D =
  `affineInverse(Transform3D)`(addr self, nil, addr result, 0)
proc orthonormalized*(self: Transform3D): Transform3D =
  `orthonormalized(Transform3D)`(addr self, nil, addr result, 0)
proc rotated*(self: Transform3D; axis: Vector3; angle: Float): Transform3D =
  let argArr = [getPtr axis, getPtr angle]
  `rotated(Transform3D Vector3 Float)`(addr self, addr argArr[0], addr result, 2)
proc rotatedLocal*(self: Transform3D; axis: Vector3; angle: Float): Transform3D =
  let argArr = [getPtr axis, getPtr angle]
  `rotatedLocal(Transform3D Vector3 Float)`(addr self, addr argArr[0], addr result, 2)
proc scaled*(self: Transform3D; scale: Vector3): Transform3D =
  let argArr = [getPtr scale]
  `scaled(Transform3D Vector3)`(addr self, addr argArr[0], addr result, 1)
proc scaledLocal*(self: Transform3D; scale: Vector3): Transform3D =
  let argArr = [getPtr scale]
  `scaledLocal(Transform3D Vector3)`(addr self, addr argArr[0], addr result, 1)
proc translated*(self: Transform3D; offset: Vector3): Transform3D =
  let argArr = [getPtr offset]
  `translated(Transform3D Vector3)`(addr self, addr argArr[0], addr result, 1)
proc translatedLocal*(self: Transform3D; offset: Vector3): Transform3D =
  let argArr = [getPtr offset]
  `translatedLocal(Transform3D Vector3)`(addr self, addr argArr[0], addr result, 1)
proc lookingAt*(self: Transform3D; target: Vector3; up: Vector3 = vector3(0, 1, 0); useModelFront: bool = false): Transform3D =
  let argArr = [getPtr target, getPtr up, getPtr useModelFront]
  `lookingAt(Transform3D Vector3 Vector3 bool)`(addr self, addr argArr[0], addr result, 3)
proc interpolateWith*(self: Transform3D; xform: Transform3D; weight: Float): Transform3D =
  let argArr = [getPtr xform, getPtr weight]
  `interpolateWith(Transform3D Transform3D Float)`(addr self, addr argArr[0], addr result, 2)
proc isEqualApprox*(self: Transform3D; xform: Transform3D): bool =
  let argArr = [getPtr xform]
  `isEqualApprox(Transform3D Transform3D)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: Transform3D): bool =
  `isFinite(Transform3D)`(addr self, nil, addr result, 0)

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