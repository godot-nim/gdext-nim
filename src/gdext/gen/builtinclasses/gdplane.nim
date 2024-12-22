{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

# constant values

const Plane_PLANE_YZ*: Plane = plane(1, 0, 0, 0)
template PLANE_YZ*(_: typedesc[Plane]): Plane = Plane_PLANE_YZ

const Plane_PLANE_XZ*: Plane = plane(0, 1, 0, 0)
template PLANE_XZ*(_: typedesc[Plane]): Plane = Plane_PLANE_XZ

const Plane_PLANE_XY*: Plane = plane(0, 0, 1, 0)
template PLANE_XY*(_: typedesc[Plane]): Plane = Plane_PLANE_XY

var `==(Plane Variant)`: PtrOperatorEvaluator
var `!=(Plane Variant)`: PtrOperatorEvaluator
var `-(Plane)`: PtrOperatorEvaluator
var `+(Plane)`: PtrOperatorEvaluator
var `not(Plane)`: PtrOperatorEvaluator
var `==(Plane Plane)`: PtrOperatorEvaluator
var `!=(Plane Plane)`: PtrOperatorEvaluator
var `*(Plane Transform3D)`: PtrOperatorEvaluator
var `contains(Plane Dictionary)`: PtrOperatorEvaluator
var `contains(Plane Array)`: PtrOperatorEvaluator
proc `==`*(left: Plane; right: Variant): bool = `==(Plane Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Plane; right: Variant): bool = `!=(Plane Variant)`(getPtr left, getPtr right, addr result)
proc `-`*(left: Plane): Plane = `-(Plane)`(getPtr left, nil, addr result)
proc `+`*(left: Plane): Plane = `+(Plane)`(getPtr left, nil, addr result)
proc `not`*(left: Plane): bool = `not(Plane)`(getPtr left, nil, addr result)
proc `==`*(left: Plane; right: Plane): bool = `==(Plane Plane)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Plane; right: Plane): bool = `!=(Plane Plane)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Plane; right: Transform3D): Plane = `*(Plane Transform3D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Plane): bool = `contains(Plane Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Plane): bool = `contains(Plane Array)`(getPtr right, getPtr left, addr result)
proc load_Plane_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Plane Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Plane, VariantType_Nil)
  `!=(Plane Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Plane, VariantType_Nil)
  `-(Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Negate, VariantType_Plane, VariantType_Nil)
  `+(Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Positive, VariantType_Plane, VariantType_Nil)
  `not(Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Plane, VariantType_Nil)
  `==(Plane Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Plane, VariantType_Plane)
  `!=(Plane Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Plane, VariantType_Plane)
  `*(Plane Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Plane, VariantType_Transform3D)
  `contains(Plane Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Plane, VariantType_Dictionary)
  `contains(Plane Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Plane, VariantType_Array)

var `normalized(Plane)`: PtrBuiltinMethod
var `getCenter(Plane)`: PtrBuiltinMethod
var `isEqualApprox(Plane Plane)`: PtrBuiltinMethod
var `isFinite(Plane)`: PtrBuiltinMethod
var `isPointOver(Plane Vector3)`: PtrBuiltinMethod
var `distanceTo(Plane Vector3)`: PtrBuiltinMethod
var `hasPoint(Plane Vector3 Float)`: PtrBuiltinMethod
var `project(Plane Vector3)`: PtrBuiltinMethod
var `intersect3(Plane Plane Plane)`: PtrBuiltinMethod
var `intersectsRay(Plane Vector3 Vector3)`: PtrBuiltinMethod
var `intersectsSegment(Plane Vector3 Vector3)`: PtrBuiltinMethod

proc normalized*(self: Plane): Plane =
  `normalized(Plane)`(addr self, nil, addr result, 0)
proc getCenter*(self: Plane): Vector3 =
  `getCenter(Plane)`(addr self, nil, addr result, 0)
proc isEqualApprox*(self: Plane; toPlane: Plane): bool =
  let argArr = [getPtr toPlane]
  `isEqualApprox(Plane Plane)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: Plane): bool =
  `isFinite(Plane)`(addr self, nil, addr result, 0)
proc isPointOver*(self: Plane; point: Vector3): bool =
  let argArr = [getPtr point]
  `isPointOver(Plane Vector3)`(addr self, addr argArr[0], addr result, 1)
proc distanceTo*(self: Plane; point: Vector3): Float =
  let argArr = [getPtr point]
  `distanceTo(Plane Vector3)`(addr self, addr argArr[0], addr result, 1)
proc hasPoint*(self: Plane; point: Vector3; tolerance: Float = 1e-05): bool =
  let argArr = [getPtr point, getPtr tolerance]
  `hasPoint(Plane Vector3 Float)`(addr self, addr argArr[0], addr result, 2)
proc project*(self: Plane; point: Vector3): Vector3 =
  let argArr = [getPtr point]
  `project(Plane Vector3)`(addr self, addr argArr[0], addr result, 1)
proc intersect3*(self: Plane; b: Plane; c: Plane): Variant =
  let argArr = [getPtr b, getPtr c]
  `intersect3(Plane Plane Plane)`(addr self, addr argArr[0], addr result, 2)
proc intersectsRay*(self: Plane; `from`: Vector3; dir: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr dir]
  `intersectsRay(Plane Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)
proc intersectsSegment*(self: Plane; `from`: Vector3; to: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr to]
  `intersectsSegment(Plane Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)

proc load_Plane_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `normalized(Plane)` = load(VariantType_Plane, "normalized", 1051796340)
  `getCenter(Plane)` = load(VariantType_Plane, "get_center", 1776574132)
  `isEqualApprox(Plane Plane)` = load(VariantType_Plane, "is_equal_approx", 1150170233)
  `isFinite(Plane)` = load(VariantType_Plane, "is_finite", 3918633141)
  `isPointOver(Plane Vector3)` = load(VariantType_Plane, "is_point_over", 1749054343)
  `distanceTo(Plane Vector3)` = load(VariantType_Plane, "distance_to", 1047977935)
  `hasPoint(Plane Vector3 Float)` = load(VariantType_Plane, "has_point", 1258189072)
  `project(Plane Vector3)` = load(VariantType_Plane, "project", 2923479887)
  `intersect3(Plane Plane Plane)` = load(VariantType_Plane, "intersect_3", 2012052692)
  `intersectsRay(Plane Vector3 Vector3)` = load(VariantType_Plane, "intersects_ray", 2048133369)
  `intersectsSegment(Plane Vector3 Vector3)` = load(VariantType_Plane, "intersects_segment", 2048133369)