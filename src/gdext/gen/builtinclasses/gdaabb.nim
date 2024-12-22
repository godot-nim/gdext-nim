{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(AABB Variant)`: PtrOperatorEvaluator
var `!=(AABB Variant)`: PtrOperatorEvaluator
var `not(AABB)`: PtrOperatorEvaluator
var `==(AABB AABB)`: PtrOperatorEvaluator
var `!=(AABB AABB)`: PtrOperatorEvaluator
var `*(AABB Transform3D)`: PtrOperatorEvaluator
var `contains(AABB Dictionary)`: PtrOperatorEvaluator
var `contains(AABB Array)`: PtrOperatorEvaluator
proc `==`*(left: AABB; right: Variant): bool = `==(AABB Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: AABB; right: Variant): bool = `!=(AABB Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: AABB): bool = `not(AABB)`(getPtr left, nil, addr result)
proc `==`*(left: AABB; right: AABB): bool = `==(AABB AABB)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: AABB; right: AABB): bool = `!=(AABB AABB)`(getPtr left, getPtr right, addr result)
proc `*`*(left: AABB; right: Transform3D): AABB = `*(AABB Transform3D)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: AABB): bool = `contains(AABB Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: AABB): bool = `contains(AABB Array)`(getPtr right, getPtr left, addr result)
proc load_AABB_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(AABB Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_AABB, VariantType_Nil)
  `!=(AABB Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_AABB, VariantType_Nil)
  `not(AABB)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_AABB, VariantType_Nil)
  `==(AABB AABB)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_AABB, VariantType_AABB)
  `!=(AABB AABB)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_AABB, VariantType_AABB)
  `*(AABB Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Multiply, VariantType_AABB, VariantType_Transform3D)
  `contains(AABB Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_AABB, VariantType_Dictionary)
  `contains(AABB Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_AABB, VariantType_Array)

var `abs(AABB)`: PtrBuiltinMethod
var `getCenter(AABB)`: PtrBuiltinMethod
var `getVolume(AABB)`: PtrBuiltinMethod
var `hasVolume(AABB)`: PtrBuiltinMethod
var `hasSurface(AABB)`: PtrBuiltinMethod
var `hasPoint(AABB Vector3)`: PtrBuiltinMethod
var `isEqualApprox(AABB AABB)`: PtrBuiltinMethod
var `isFinite(AABB)`: PtrBuiltinMethod
var `intersects(AABB AABB)`: PtrBuiltinMethod
var `encloses(AABB AABB)`: PtrBuiltinMethod
var `intersectsPlane(AABB Plane)`: PtrBuiltinMethod
var `intersection(AABB AABB)`: PtrBuiltinMethod
var `merge(AABB AABB)`: PtrBuiltinMethod
var `expand(AABB Vector3)`: PtrBuiltinMethod
var `grow(AABB Float)`: PtrBuiltinMethod
var `getSupport(AABB Vector3)`: PtrBuiltinMethod
var `getLongestAxis(AABB)`: PtrBuiltinMethod
var `getLongestAxisIndex(AABB)`: PtrBuiltinMethod
var `getLongestAxisSize(AABB)`: PtrBuiltinMethod
var `getShortestAxis(AABB)`: PtrBuiltinMethod
var `getShortestAxisIndex(AABB)`: PtrBuiltinMethod
var `getShortestAxisSize(AABB)`: PtrBuiltinMethod
var `getEndpoint(AABB Int)`: PtrBuiltinMethod
var `intersectsSegment(AABB Vector3 Vector3)`: PtrBuiltinMethod
var `intersectsRay(AABB Vector3 Vector3)`: PtrBuiltinMethod

proc abs*(self: AABB): AABB =
  `abs(AABB)`(addr self, nil, addr result, 0)
proc getCenter*(self: AABB): Vector3 =
  `getCenter(AABB)`(addr self, nil, addr result, 0)
proc getVolume*(self: AABB): Float =
  `getVolume(AABB)`(addr self, nil, addr result, 0)
proc hasVolume*(self: AABB): bool =
  `hasVolume(AABB)`(addr self, nil, addr result, 0)
proc hasSurface*(self: AABB): bool =
  `hasSurface(AABB)`(addr self, nil, addr result, 0)
proc hasPoint*(self: AABB; point: Vector3): bool =
  let argArr = [getPtr point]
  `hasPoint(AABB Vector3)`(addr self, addr argArr[0], addr result, 1)
proc isEqualApprox*(self: AABB; aabb: AABB): bool =
  let argArr = [getPtr aabb]
  `isEqualApprox(AABB AABB)`(addr self, addr argArr[0], addr result, 1)
proc isFinite*(self: AABB): bool =
  `isFinite(AABB)`(addr self, nil, addr result, 0)
proc intersects*(self: AABB; with: AABB): bool =
  let argArr = [getPtr with]
  `intersects(AABB AABB)`(addr self, addr argArr[0], addr result, 1)
proc encloses*(self: AABB; with: AABB): bool =
  let argArr = [getPtr with]
  `encloses(AABB AABB)`(addr self, addr argArr[0], addr result, 1)
proc intersectsPlane*(self: AABB; plane: Plane): bool =
  let argArr = [getPtr plane]
  `intersectsPlane(AABB Plane)`(addr self, addr argArr[0], addr result, 1)
proc intersection*(self: AABB; with: AABB): AABB =
  let argArr = [getPtr with]
  `intersection(AABB AABB)`(addr self, addr argArr[0], addr result, 1)
proc merge*(self: AABB; with: AABB): AABB =
  let argArr = [getPtr with]
  `merge(AABB AABB)`(addr self, addr argArr[0], addr result, 1)
proc expand*(self: AABB; toPoint: Vector3): AABB =
  let argArr = [getPtr toPoint]
  `expand(AABB Vector3)`(addr self, addr argArr[0], addr result, 1)
proc grow*(self: AABB; by: Float): AABB =
  let argArr = [getPtr by]
  `grow(AABB Float)`(addr self, addr argArr[0], addr result, 1)
proc getSupport*(self: AABB; dir: Vector3): Vector3 =
  let argArr = [getPtr dir]
  `getSupport(AABB Vector3)`(addr self, addr argArr[0], addr result, 1)
proc getLongestAxis*(self: AABB): Vector3 =
  `getLongestAxis(AABB)`(addr self, nil, addr result, 0)
proc getLongestAxisIndex*(self: AABB): Int =
  `getLongestAxisIndex(AABB)`(addr self, nil, addr result, 0)
proc getLongestAxisSize*(self: AABB): Float =
  `getLongestAxisSize(AABB)`(addr self, nil, addr result, 0)
proc getShortestAxis*(self: AABB): Vector3 =
  `getShortestAxis(AABB)`(addr self, nil, addr result, 0)
proc getShortestAxisIndex*(self: AABB): Int =
  `getShortestAxisIndex(AABB)`(addr self, nil, addr result, 0)
proc getShortestAxisSize*(self: AABB): Float =
  `getShortestAxisSize(AABB)`(addr self, nil, addr result, 0)
proc getEndpoint*(self: AABB; idx: Int): Vector3 =
  let argArr = [getPtr idx]
  `getEndpoint(AABB Int)`(addr self, addr argArr[0], addr result, 1)
proc intersectsSegment*(self: AABB; `from`: Vector3; to: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr to]
  `intersectsSegment(AABB Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)
proc intersectsRay*(self: AABB; `from`: Vector3; dir: Vector3): Variant =
  let argArr = [getPtr `from`, getPtr dir]
  `intersectsRay(AABB Vector3 Vector3)`(addr self, addr argArr[0], addr result, 2)

proc load_AABB_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `abs(AABB)` = load(VariantType_AABB, "abs", 1576868580)
  `getCenter(AABB)` = load(VariantType_AABB, "get_center", 1776574132)
  `getVolume(AABB)` = load(VariantType_AABB, "get_volume", 466405837)
  `hasVolume(AABB)` = load(VariantType_AABB, "has_volume", 3918633141)
  `hasSurface(AABB)` = load(VariantType_AABB, "has_surface", 3918633141)
  `hasPoint(AABB Vector3)` = load(VariantType_AABB, "has_point", 1749054343)
  `isEqualApprox(AABB AABB)` = load(VariantType_AABB, "is_equal_approx", 299946684)
  `isFinite(AABB)` = load(VariantType_AABB, "is_finite", 3918633141)
  `intersects(AABB AABB)` = load(VariantType_AABB, "intersects", 299946684)
  `encloses(AABB AABB)` = load(VariantType_AABB, "encloses", 299946684)
  `intersectsPlane(AABB Plane)` = load(VariantType_AABB, "intersects_plane", 1150170233)
  `intersection(AABB AABB)` = load(VariantType_AABB, "intersection", 1271470306)
  `merge(AABB AABB)` = load(VariantType_AABB, "merge", 1271470306)
  `expand(AABB Vector3)` = load(VariantType_AABB, "expand", 2851643018)
  `grow(AABB Float)` = load(VariantType_AABB, "grow", 239217291)
  `getSupport(AABB Vector3)` = load(VariantType_AABB, "get_support", 2923479887)
  `getLongestAxis(AABB)` = load(VariantType_AABB, "get_longest_axis", 1776574132)
  `getLongestAxisIndex(AABB)` = load(VariantType_AABB, "get_longest_axis_index", 3173160232)
  `getLongestAxisSize(AABB)` = load(VariantType_AABB, "get_longest_axis_size", 466405837)
  `getShortestAxis(AABB)` = load(VariantType_AABB, "get_shortest_axis", 1776574132)
  `getShortestAxisIndex(AABB)` = load(VariantType_AABB, "get_shortest_axis_index", 3173160232)
  `getShortestAxisSize(AABB)` = load(VariantType_AABB, "get_shortest_axis_size", 466405837)
  `getEndpoint(AABB Int)` = load(VariantType_AABB, "get_endpoint", 1394941017)
  `intersectsSegment(AABB Vector3 Vector3)` = load(VariantType_AABB, "intersects_segment", 2048133369)
  `intersectsRay(AABB Vector3 Vector3)` = load(VariantType_AABB, "intersects_ray", 2048133369)