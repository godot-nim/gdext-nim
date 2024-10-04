{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Quaternion_Identity*: Quaternion = quaternion(0, 0, 0, 1)
template Identity*(_: typedesc[Quaternion]): Quaternion = Quaternion_Identity

var `==(Quaternion Variant)`: PtrOperatorEvaluator
var `!=(Quaternion Variant)`: PtrOperatorEvaluator
var `-(Quaternion)`: PtrOperatorEvaluator
var `+(Quaternion)`: PtrOperatorEvaluator
var `not(Quaternion)`: PtrOperatorEvaluator
var `*(Quaternion Int)`: PtrOperatorEvaluator
var `/(Quaternion Int)`: PtrOperatorEvaluator
var `*(Quaternion Float)`: PtrOperatorEvaluator
var `/(Quaternion Float)`: PtrOperatorEvaluator
var `*(Quaternion Vector3)`: PtrOperatorEvaluator
var `==(Quaternion Quaternion)`: PtrOperatorEvaluator
var `!=(Quaternion Quaternion)`: PtrOperatorEvaluator
var `+(Quaternion Quaternion)`: PtrOperatorEvaluator
var `-(Quaternion Quaternion)`: PtrOperatorEvaluator
var `*(Quaternion Quaternion)`: PtrOperatorEvaluator
var `contains(Quaternion Dictionary)`: PtrOperatorEvaluator
var `contains(Quaternion Array)`: PtrOperatorEvaluator
proc `==`*(left: Quaternion; right: Variant): bool = `==(Quaternion Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Quaternion; right: Variant): bool = `!=(Quaternion Variant)`(getPtr left, getPtr right, addr result)
proc `-`*(left: Quaternion): Quaternion = `-(Quaternion)`(getPtr left, nil, addr result)
proc `+`*(left: Quaternion): Quaternion = `+(Quaternion)`(getPtr left, nil, addr result)
proc `not`*(left: Quaternion): bool = `not(Quaternion)`(getPtr left, nil, addr result)
proc `*`*(left: Quaternion; right: Int): Quaternion = `*(Quaternion Int)`(getPtr left, getPtr right, addr result)
proc `/`*(left: Quaternion; right: Int): Quaternion = `/(Quaternion Int)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Quaternion; right: Float): Quaternion = `*(Quaternion Float)`(getPtr left, getPtr right, addr result)
proc `/`*(left: Quaternion; right: Float): Quaternion = `/(Quaternion Float)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Quaternion; right: Vector3): Vector3 = `*(Quaternion Vector3)`(getPtr left, getPtr right, addr result)
proc `==`*(left: Quaternion; right: Quaternion): bool = `==(Quaternion Quaternion)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Quaternion; right: Quaternion): bool = `!=(Quaternion Quaternion)`(getPtr left, getPtr right, addr result)
proc `+`*(left: Quaternion; right: Quaternion): Quaternion = `+(Quaternion Quaternion)`(getPtr left, getPtr right, addr result)
proc `-`*(left: Quaternion; right: Quaternion): Quaternion = `-(Quaternion Quaternion)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Quaternion; right: Quaternion): Quaternion = `*(Quaternion Quaternion)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Quaternion): bool = `contains(Quaternion Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Quaternion): bool = `contains(Quaternion Array)`(getPtr right, getPtr left, addr result)
proc load_Quaternion_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Quaternion Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Quaternion, VariantType_Nil)
  `!=(Quaternion Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Quaternion, VariantType_Nil)
  `-(Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Negate, VariantType_Quaternion, VariantType_Nil)
  `+(Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Positive, VariantType_Quaternion, VariantType_Nil)
  `not(Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Quaternion, VariantType_Nil)
  `*(Quaternion Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Quaternion, VariantType_Int)
  `/(Quaternion Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Divide, VariantType_Quaternion, VariantType_Int)
  `*(Quaternion Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Quaternion, VariantType_Float)
  `/(Quaternion Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Divide, VariantType_Quaternion, VariantType_Float)
  `*(Quaternion Vector3)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Quaternion, VariantType_Vector3)
  `==(Quaternion Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Quaternion, VariantType_Quaternion)
  `!=(Quaternion Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Quaternion, VariantType_Quaternion)
  `+(Quaternion Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_Quaternion, VariantType_Quaternion)
  `-(Quaternion Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Subtract, VariantType_Quaternion, VariantType_Quaternion)
  `*(Quaternion Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Quaternion, VariantType_Quaternion)
  `contains(Quaternion Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Quaternion, VariantType_Dictionary)
  `contains(Quaternion Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Quaternion, VariantType_Array)

var `length(Quaternion)`: PtrBuiltinMethod
var `lengthSquared(Quaternion)`: PtrBuiltinMethod
var `normalized(Quaternion)`: PtrBuiltinMethod
var `isNormalized(Quaternion)`: PtrBuiltinMethod
var `isEqualApprox(Quaternion Quaternion)`: PtrBuiltinMethod
var `isFinite(Quaternion)`: PtrBuiltinMethod
var `inverse(Quaternion)`: PtrBuiltinMethod
var `log(Quaternion)`: PtrBuiltinMethod
var `exp(Quaternion)`: PtrBuiltinMethod
var `angleTo(Quaternion Quaternion)`: PtrBuiltinMethod
var `dot(Quaternion Quaternion)`: PtrBuiltinMethod
var `slerp(Quaternion Quaternion Float)`: PtrBuiltinMethod
var `slerpni(Quaternion Quaternion Float)`: PtrBuiltinMethod
var `sphericalCubicInterpolate(Quaternion Quaternion Quaternion Quaternion Float)`: PtrBuiltinMethod
var `sphericalCubicInterpolateInTime(Quaternion Quaternion Quaternion Quaternion Float Float Float Float)`: PtrBuiltinMethod
var `getEuler(Quaternion Int)`: PtrBuiltinMethod
var `fromEuler(Quaternion Vector3)`: PtrBuiltinMethod
var `getAxis(Quaternion)`: PtrBuiltinMethod
var `getAngle(Quaternion)`: PtrBuiltinMethod

proc length*(self: Quaternion): Float =
  `length(Quaternion)`(addr self, nil, addr result, 0)
proc lengthSquared*(self: Quaternion): Float =
  `lengthSquared(Quaternion)`(addr self, nil, addr result, 0)
proc normalized*(self: Quaternion): Quaternion =
  `normalized(Quaternion)`(addr self, nil, addr result, 0)
proc isNormalized*(self: Quaternion): bool =
  `isNormalized(Quaternion)`(addr self, nil, addr result, 0)
proc isEqualApprox*(self: Quaternion; to: Quaternion): bool =
  let argArr = [getPtr to]
  `isEqualApprox(Quaternion Quaternion)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: Quaternion): bool =
  `isFinite(Quaternion)`(addr self, nil, addr result, 0)
proc inverse*(self: Quaternion): Quaternion =
  `inverse(Quaternion)`(addr self, nil, addr result, 0)
proc log*(self: Quaternion): Quaternion =
  `log(Quaternion)`(addr self, nil, addr result, 0)
proc exp*(self: Quaternion): Quaternion =
  `exp(Quaternion)`(addr self, nil, addr result, 0)
proc angleTo*(self: Quaternion; to: Quaternion): Float =
  let argArr = [getPtr to]
  `angleTo(Quaternion Quaternion)`(addr self, addr argArr[0], addr result, 1)
proc dot*(self: Quaternion; with: Quaternion): Float =
  let argArr = [getPtr with]
  `dot(Quaternion Quaternion)`(addr self, addr argArr[0], addr result, 1)
proc slerp*(self: Quaternion; to: Quaternion; weight: Float): Quaternion =
  let argArr = [getPtr to, getPtr weight]
  `slerp(Quaternion Quaternion Float)`(addr self, addr argArr[0], addr result, 2)
proc slerpni*(self: Quaternion; to: Quaternion; weight: Float): Quaternion =
  let argArr = [getPtr to, getPtr weight]
  `slerpni(Quaternion Quaternion Float)`(addr self, addr argArr[0], addr result, 2)
proc sphericalCubicInterpolate*(self: Quaternion; b: Quaternion; preA: Quaternion; postB: Quaternion; weight: Float): Quaternion =
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight]
  `sphericalCubicInterpolate(Quaternion Quaternion Quaternion Quaternion Float)`(addr self, addr argArr[0], addr result, 4)
proc sphericalCubicInterpolateInTime*(self: Quaternion; b: Quaternion; preA: Quaternion; postB: Quaternion; weight: Float; bT: Float; preAT: Float; postBT: Float): Quaternion =
  let argArr = [getPtr b, getPtr preA, getPtr postB, getPtr weight, getPtr bT, getPtr preAT, getPtr postBT]
  `sphericalCubicInterpolateInTime(Quaternion Quaternion Quaternion Quaternion Float Float Float Float)`(addr self, addr argArr[0], addr result, 7)
proc getEuler*(self: Quaternion; order: Int = 2): Vector3 =
  let argArr = [getPtr order]
  `getEuler(Quaternion Int)`(addr self, addr argArr[0], addr result, 1)
proc fromEuler*(_: var Quaternion; euler: Vector3): Quaternion =
  let argArr = [getPtr euler]
  `fromEuler(Quaternion Vector3)`(nil, addr argArr[0], addr result, 1)
proc getAxis*(self: Quaternion): Vector3 =
  `getAxis(Quaternion)`(addr self, nil, addr result, 0)
proc getAngle*(self: Quaternion): Float =
  `getAngle(Quaternion)`(addr self, nil, addr result, 0)

proc load_Quaternion_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `length(Quaternion)` = load(VariantType_Quaternion, "length", 466405837)
  `lengthSquared(Quaternion)` = load(VariantType_Quaternion, "length_squared", 466405837)
  `normalized(Quaternion)` = load(VariantType_Quaternion, "normalized", 4274879941)
  `isNormalized(Quaternion)` = load(VariantType_Quaternion, "is_normalized", 3918633141)
  `isEqualApprox(Quaternion Quaternion)` = load(VariantType_Quaternion, "is_equal_approx", 1682156903)
  `isFinite(Quaternion)` = load(VariantType_Quaternion, "is_finite", 3918633141)
  `inverse(Quaternion)` = load(VariantType_Quaternion, "inverse", 4274879941)
  `log(Quaternion)` = load(VariantType_Quaternion, "log", 4274879941)
  `exp(Quaternion)` = load(VariantType_Quaternion, "exp", 4274879941)
  `angleTo(Quaternion Quaternion)` = load(VariantType_Quaternion, "angle_to", 3244682419)
  `dot(Quaternion Quaternion)` = load(VariantType_Quaternion, "dot", 3244682419)
  `slerp(Quaternion Quaternion Float)` = load(VariantType_Quaternion, "slerp", 1773590316)
  `slerpni(Quaternion Quaternion Float)` = load(VariantType_Quaternion, "slerpni", 1773590316)
  `sphericalCubicInterpolate(Quaternion Quaternion Quaternion Quaternion Float)` = load(VariantType_Quaternion, "spherical_cubic_interpolate", 2150967576)
  `sphericalCubicInterpolateInTime(Quaternion Quaternion Quaternion Quaternion Float Float Float Float)` = load(VariantType_Quaternion, "spherical_cubic_interpolate_in_time", 1436023539)
  `getEuler(Quaternion Int)` = load(VariantType_Quaternion, "get_euler", 1394941017)
  `fromEuler(Quaternion Vector3)` = load(VariantType_Quaternion, "from_euler", 4053467903)
  `getAxis(Quaternion)` = load(VariantType_Quaternion, "get_axis", 1776574132)
  `getAngle(Quaternion)` = load(VariantType_Quaternion, "get_angle", 466405837)