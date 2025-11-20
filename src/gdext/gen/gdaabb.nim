# `==(AABB Variant)`
# `!=(AABB Variant)`
var `not(AABB)`: PtrOperatorEvaluator
# `==(AABB AABB)`
# `!=(AABB AABB)`
var `*(AABB Transform3D)`: PtrOperatorEvaluator
# `in(AABB Dictionary)`
# `in(AABB Array)`
func `not`*(left: AABB): bool = {.noSideEffect.}: `not(AABB)`(getPtr left, nil, addr result)
func `*`*(left: AABB; right: Transform3D): AABB = {.noSideEffect.}: `*(AABB Transform3D)`(getPtr left, getPtr right, addr result)
proc load_AABB_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(AABB)` = load(opNot, VariantType_AABB, VariantType_Nil)
  `*(AABB Transform3D)` = load(opMultiply, VariantType_AABB, VariantType_Transform3D)

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
  `abs(AABB)`.call(addr self, [], addr result)
proc getCenter*(self: AABB): Vector3 =
  `getCenter(AABB)`.call(addr self, [], addr result)
proc getVolume*(self: AABB): Float =
  `getVolume(AABB)`.call(addr self, [], addr result)
proc hasVolume*(self: AABB): bool =
  `hasVolume(AABB)`.call(addr self, [], addr result)
proc hasSurface*(self: AABB): bool =
  `hasSurface(AABB)`.call(addr self, [], addr result)
proc hasPoint*(self: AABB; point: Vector3): bool =
  `hasPoint(AABB Vector3)`.call(addr self, [getPtr point], addr result)
proc isEqualApprox*(self: AABB; aabb: AABB): bool =
  `isEqualApprox(AABB AABB)`.call(addr self, [getPtr aabb], addr result)
proc isFinite*(self: AABB): bool =
  `isFinite(AABB)`.call(addr self, [], addr result)
proc intersects*(self: AABB; with: AABB): bool =
  `intersects(AABB AABB)`.call(addr self, [getPtr with], addr result)
proc encloses*(self: AABB; with: AABB): bool =
  `encloses(AABB AABB)`.call(addr self, [getPtr with], addr result)
proc intersectsPlane*(self: AABB; plane: Plane): bool =
  `intersectsPlane(AABB Plane)`.call(addr self, [getPtr plane], addr result)
proc intersection*(self: AABB; with: AABB): AABB =
  `intersection(AABB AABB)`.call(addr self, [getPtr with], addr result)
proc merge*(self: AABB; with: AABB): AABB =
  `merge(AABB AABB)`.call(addr self, [getPtr with], addr result)
proc expand*(self: AABB; toPoint: Vector3): AABB =
  `expand(AABB Vector3)`.call(addr self, [getPtr toPoint], addr result)
proc grow*(self: AABB; by: Float): AABB =
  `grow(AABB Float)`.call(addr self, [getPtr by], addr result)
proc getSupport*(self: AABB; direction: Vector3): Vector3 =
  `getSupport(AABB Vector3)`.call(addr self, [getPtr direction], addr result)
proc getLongestAxis*(self: AABB): Vector3 =
  `getLongestAxis(AABB)`.call(addr self, [], addr result)
proc getLongestAxisIndex*(self: AABB): Int =
  `getLongestAxisIndex(AABB)`.call(addr self, [], addr result)
proc getLongestAxisSize*(self: AABB): Float =
  `getLongestAxisSize(AABB)`.call(addr self, [], addr result)
proc getShortestAxis*(self: AABB): Vector3 =
  `getShortestAxis(AABB)`.call(addr self, [], addr result)
proc getShortestAxisIndex*(self: AABB): Int =
  `getShortestAxisIndex(AABB)`.call(addr self, [], addr result)
proc getShortestAxisSize*(self: AABB): Float =
  `getShortestAxisSize(AABB)`.call(addr self, [], addr result)
proc getEndpoint*(self: AABB; idx: Int): Vector3 =
  `getEndpoint(AABB Int)`.call(addr self, [getPtr idx], addr result)
proc intersectsSegment*(self: AABB; `from`: Vector3; to: Vector3): Variant =
  `intersectsSegment(AABB Vector3 Vector3)`.call(addr self, [getPtr `from`, getPtr to], addr result)
proc intersectsRay*(self: AABB; `from`: Vector3; dir: Vector3): Variant =
  `intersectsRay(AABB Vector3 Vector3)`.call(addr self, [getPtr `from`, getPtr dir], addr result)

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
