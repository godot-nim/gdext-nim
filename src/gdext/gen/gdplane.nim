# constant values

const Plane_PlaneYz: Plane = plane(1, 0, 0, 0)
template PlaneYz*(_: typedesc[Plane]): Plane = Plane_PlaneYz

const Plane_PlaneXz: Plane = plane(0, 1, 0, 0)
template PlaneXz*(_: typedesc[Plane]): Plane = Plane_PlaneXz

const Plane_PlaneXy: Plane = plane(0, 0, 1, 0)
template PlaneXy*(_: typedesc[Plane]): Plane = Plane_PlaneXy

# `==(Plane Variant)`
# `!=(Plane Variant)`
var `-(Plane)`: PtrOperatorEvaluator
var `+(Plane)`: PtrOperatorEvaluator
var `not(Plane)`: PtrOperatorEvaluator
# `==(Plane Plane)`
# `!=(Plane Plane)`
var `*(Plane Transform3D)`: PtrOperatorEvaluator
# `in(Plane Dictionary)`
# `in(Plane Array)`
func `-`*(left: Plane): Plane = {.noSideEffect.}: `-(Plane)`(getPtr left, nil, addr result)
func `+`*(left: Plane): Plane = {.noSideEffect.}: `+(Plane)`(getPtr left, nil, addr result)
func `not`*(left: Plane): bool = {.noSideEffect.}: `not(Plane)`(getPtr left, nil, addr result)
func `*`*(left: Plane; right: Transform3D): Plane = {.noSideEffect.}: `*(Plane Transform3D)`(getPtr left, getPtr right, addr result)
proc load_Plane_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `-(Plane)` = load(opNegate, VariantType_Plane, VariantType_Nil)
  `+(Plane)` = load(opPositive, VariantType_Plane, VariantType_Nil)
  `not(Plane)` = load(opNot, VariantType_Plane, VariantType_Nil)
  `*(Plane Transform3D)` = load(opMultiply, VariantType_Plane, VariantType_Transform3D)

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
  `normalized(Plane)`.call(addr self, [], addr result)
proc getCenter*(self: Plane): Vector3 =
  `getCenter(Plane)`.call(addr self, [], addr result)
proc isEqualApprox*(self: Plane; toPlane: Plane): bool =
  `isEqualApprox(Plane Plane)`.call(addr self, [getPtr toPlane], addr result)
proc isFinite*(self: Plane): bool =
  `isFinite(Plane)`.call(addr self, [], addr result)
proc isPointOver*(self: Plane; point: Vector3): bool =
  `isPointOver(Plane Vector3)`.call(addr self, [getPtr point], addr result)
proc distanceTo*(self: Plane; point: Vector3): Float =
  `distanceTo(Plane Vector3)`.call(addr self, [getPtr point], addr result)
proc hasPoint*(self: Plane; point: Vector3; tolerance: Float = 1e-05): bool =
  `hasPoint(Plane Vector3 Float)`.call(addr self, [getPtr point, getPtr tolerance], addr result)
proc project*(self: Plane; point: Vector3): Vector3 =
  `project(Plane Vector3)`.call(addr self, [getPtr point], addr result)
proc intersect3*(self: Plane; b: Plane; c: Plane): Variant =
  `intersect3(Plane Plane Plane)`.call(addr self, [getPtr b, getPtr c], addr result)
proc intersectsRay*(self: Plane; `from`: Vector3; dir: Vector3): Variant =
  `intersectsRay(Plane Vector3 Vector3)`.call(addr self, [getPtr `from`, getPtr dir], addr result)
proc intersectsSegment*(self: Plane; `from`: Vector3; to: Vector3): Variant =
  `intersectsSegment(Plane Vector3 Vector3)`.call(addr self, [getPtr `from`, getPtr to], addr result)

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
