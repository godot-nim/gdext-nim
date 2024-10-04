{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(Aabb Variant)`: PtrOperatorEvaluator
var `!=(Aabb Variant)`: PtrOperatorEvaluator
var `not(Aabb)`: PtrOperatorEvaluator
var `==(Aabb Aabb)`: PtrOperatorEvaluator
var `!=(Aabb Aabb)`: PtrOperatorEvaluator
var `*(Aabb Transform3D)`: PtrOperatorEvaluator
var `contains(Aabb Dictionary)`: PtrOperatorEvaluator
var `contains(Aabb Array)`: PtrOperatorEvaluator
proc `==`*(left: Aabb; right: Variant): bool = `==(Aabb Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Aabb; right: Variant): bool = `!=(Aabb Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: Aabb): bool = `not(Aabb)`(getPtr left, nil, addr result)
proc `==`*(left: Aabb; right: Aabb): bool = `==(Aabb Aabb)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: Aabb; right: Aabb): bool = `!=(Aabb Aabb)`(getPtr left, getPtr right, addr result)
proc `*`*(left: Aabb; right: Transform3D): Aabb = `*(Aabb Transform3D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: Aabb): bool = `contains(Aabb Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: Aabb): bool = `contains(Aabb Array)`(getPtr right, getPtr left, addr result)
proc load_Aabb_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(Aabb Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Aabb, VariantType_Nil)
  `!=(Aabb Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Aabb, VariantType_Nil)
  `not(Aabb)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_Aabb, VariantType_Nil)
  `==(Aabb Aabb)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_Aabb, VariantType_Aabb)
  `!=(Aabb Aabb)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_Aabb, VariantType_Aabb)
  `*(Aabb Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_Aabb, VariantType_Transform3D)
  `contains(Aabb Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Aabb, VariantType_Dictionary)
  `contains(Aabb Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_Aabb, VariantType_Array)

var `abs(Aabb)`: PtrBuiltinMethod
var `getCenter(Aabb)`: PtrBuiltinMethod
var `getVolume(Aabb)`: PtrBuiltinMethod
var `hasVolume(Aabb)`: PtrBuiltinMethod
var `hasSurface(Aabb)`: PtrBuiltinMethod
var `hasPoint(Aabb Vector3)`: PtrBuiltinMethod
var `isEqualApprox(Aabb Aabb)`: PtrBuiltinMethod
var `isFinite(Aabb)`: PtrBuiltinMethod
var `intersects(Aabb Aabb)`: PtrBuiltinMethod
var `encloses(Aabb Aabb)`: PtrBuiltinMethod
var `intersectsPlane(Aabb Plane)`: PtrBuiltinMethod
var `intersection(Aabb Aabb)`: PtrBuiltinMethod
var `merge(Aabb Aabb)`: PtrBuiltinMethod
var `expand(Aabb Vector3)`: PtrBuiltinMethod
var `grow(Aabb Float)`: PtrBuiltinMethod
var `getSupport(Aabb Vector3)`: PtrBuiltinMethod
var `getLongestAxis(Aabb)`: PtrBuiltinMethod
var `getLongestAxisIndex(Aabb)`: PtrBuiltinMethod
var `getLongestAxisSize(Aabb)`: PtrBuiltinMethod
var `getShortestAxis(Aabb)`: PtrBuiltinMethod
var `getShortestAxisIndex(Aabb)`: PtrBuiltinMethod
var `getShortestAxisSize(Aabb)`: PtrBuiltinMethod
var `getEndpoint(Aabb Int)`: PtrBuiltinMethod
var `intersectsSegment(Aabb Vector3 Vector3)`: PtrBuiltinMethod
var `intersectsRay(Aabb Vector3 Vector3)`: PtrBuiltinMethod

proc abs*(self: Aabb): Aabb =
  `abs(Aabb)`(addr self, nil, addr result, 0)
proc getCenter*(self: Aabb): Vector3 =
  `getCenter(Aabb)`(addr self, nil, addr result, 0)
proc getVolume*(self: Aabb): Float =
  `getVolume(Aabb)`(addr self, nil, addr result, 0)
proc hasVolume*(self: Aabb): bool =
  `hasVolume(Aabb)`(addr self, nil, addr result, 0)
proc hasSurface*(self: Aabb): bool =
  `hasSurface(Aabb)`(addr self, nil, addr result, 0)
proc hasPoint*(self: Aabb; point: Vector3): bool =
  let argArr = [getPtr point]
  `hasPoint(Aabb Vector3)`(addr self, addr argArr[0], addr result, 1)
proc isEqualApprox*(self: Aabb; aabb: Aabb): bool =
  let argArr = [getPtr aabb]
  `isEqualApprox(Aabb Aabb)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: Aabb): bool =
  `isFinite(Aabb)`(addr self, nil, addr result, 0)
proc intersects*(self: Aabb; with: Aabb): bool =
  let argArr = [getPtr with]
  `intersects(Aabb Aabb)`(addr self, addr argArr[0], addr result, 1)
proc encloses*(self: Aabb; with: Aabb): bool =
  let argArr = [getPtr with]
  `encloses(Aabb Aabb)`(addr self, addr argArr[0], addr result, 1)
proc intersectsPlane*(self: Aabb; plane: Plane): bool =
  let argArr = [getPtr plane]
  `intersectsPlane(Aabb Plane)`(addr self, addr argArr[0], addr result, 1)
proc intersection*(self: Aabb; with: Aabb): Aabb =
  let argArr = [getPtr with]
  `intersection(Aabb Aabb)`(addr self, addr argArr[0], addr result, 1)
proc merge*(self: Aabb; with: Aabb): Aabb =
  let argArr = [getPtr with]
  `merge(Aabb Aabb)`(addr self, addr argArr[0], addr result, 1)
proc expand*(self: Aabb; toPoint: Vector3): Aabb =
  let argArr = [getPtr toPoint]
  `expand(Aabb Vector3)`(addr self, addr argArr[0], addr result, 1)
proc grow*(self: Aabb; by: Float): Aabb =
  let argArr = [getPtr by]
  `grow(Aabb Float)`(addr self, addr argArr[0], addr result, 1)
proc getSupport*(self: Aabb; dir: Vector3): Vector3 =
  let argArr = [getPtr dir]
  `getSupport(Aabb Vector3)`(addr self, addr argArr[0], addr result, 1)
proc getLongestAxis*(self: Aabb): Vector3 =
  `getLongestAxis(Aabb)`(addr self, nil, addr result, 0)
proc getLongestAxisIndex*(self: Aabb): Int =
  `getLongestAxisIndex(Aabb)`(addr self, nil, addr result, 0)
proc getLongestAxisSize*(self: Aabb): Float =
  `getLongestAxisSize(Aabb)`(addr self, nil, addr result, 0)
proc getShortestAxis*(self: Aabb): Vector3 =
  `getShortestAxis(Aabb)`(addr self, nil, addr result, 0)
proc getShortestAxisIndex*(self: Aabb): Int =
  `getShortestAxisIndex(Aabb)`(addr self, nil, addr result, 0)
proc getShortestAxisSize*(self: Aabb): Float =
  `getShortestAxisSize(Aabb)`(addr self, nil, addr result, 0)
proc getEndpoint*(self: Aabb; idx: Int): Vector3 =
  let argArr = [getPtr idx]
  `getEndpoint(Aabb Int)`(addr self, addr argArr[0], addr result, 1)
proc intersectsSegment*(self: Aabb; `from`: Vector3; to: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr to]
  `intersectsSegment(Aabb Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)
proc intersectsRay*(self: Aabb; `from`: Vector3; dir: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr dir]
  `intersectsRay(Aabb Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)

proc load_Aabb_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `abs(Aabb)` = load(VariantType_Aabb, "abs", 1576868580)
  `getCenter(Aabb)` = load(VariantType_Aabb, "get_center", 1776574132)
  `getVolume(Aabb)` = load(VariantType_Aabb, "get_volume", 466405837)
  `hasVolume(Aabb)` = load(VariantType_Aabb, "has_volume", 3918633141)
  `hasSurface(Aabb)` = load(VariantType_Aabb, "has_surface", 3918633141)
  `hasPoint(Aabb Vector3)` = load(VariantType_Aabb, "has_point", 1749054343)
  `isEqualApprox(Aabb Aabb)` = load(VariantType_Aabb, "is_equal_approx", 299946684)
  `isFinite(Aabb)` = load(VariantType_Aabb, "is_finite", 3918633141)
  `intersects(Aabb Aabb)` = load(VariantType_Aabb, "intersects", 299946684)
  `encloses(Aabb Aabb)` = load(VariantType_Aabb, "encloses", 299946684)
  `intersectsPlane(Aabb Plane)` = load(VariantType_Aabb, "intersects_plane", 1150170233)
  `intersection(Aabb Aabb)` = load(VariantType_Aabb, "intersection", 1271470306)
  `merge(Aabb Aabb)` = load(VariantType_Aabb, "merge", 1271470306)
  `expand(Aabb Vector3)` = load(VariantType_Aabb, "expand", 2851643018)
  `grow(Aabb Float)` = load(VariantType_Aabb, "grow", 239217291)
  `getSupport(Aabb Vector3)` = load(VariantType_Aabb, "get_support", 2923479887)
  `getLongestAxis(Aabb)` = load(VariantType_Aabb, "get_longest_axis", 1776574132)
  `getLongestAxisIndex(Aabb)` = load(VariantType_Aabb, "get_longest_axis_index", 3173160232)
  `getLongestAxisSize(Aabb)` = load(VariantType_Aabb, "get_longest_axis_size", 466405837)
  `getShortestAxis(Aabb)` = load(VariantType_Aabb, "get_shortest_axis", 1776574132)
  `getShortestAxisIndex(Aabb)` = load(VariantType_Aabb, "get_shortest_axis_index", 3173160232)
  `getShortestAxisSize(Aabb)` = load(VariantType_Aabb, "get_shortest_axis_size", 466405837)
  `getEndpoint(Aabb Int)` = load(VariantType_Aabb, "get_endpoint", 1394941017)
  `intersectsSegment(Aabb Vector3 Vector3)` = load(VariantType_Aabb, "intersects_segment", 2048133369)
  `intersectsRay(Aabb Vector3 Vector3)` = load(VariantType_Aabb, "intersects_ray", 2048133369)