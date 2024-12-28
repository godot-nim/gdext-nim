{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc isPointInCircle*(self: Geometry2D; point: Vector2; circlePosition: Vector2; circleRadius: Float): bool =
  expandMethodBind(className Geometry2D, "is_point_in_circle", 2929491703)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr point, getPtr circlePosition, getPtr circleRadius], addr ret)
  (addr ret).decode_result(bool)

proc segmentIntersectsCircle*(self: Geometry2D; segmentFrom: Vector2; segmentTo: Vector2; circlePosition: Vector2; circleRadius: Float): Float =
  expandMethodBind(className Geometry2D, "segment_intersects_circle", 1356928167)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr segmentFrom, getPtr segmentTo, getPtr circlePosition, getPtr circleRadius], addr ret)
  (addr ret).decode_result(Float)

proc segmentIntersectsSegment*(self: Geometry2D; fromA: Vector2; toA: Vector2; fromB: Vector2; toB: Vector2): Variant =
  expandMethodBind(className Geometry2D, "segment_intersects_segment", 2058025344)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr fromA, getPtr toA, getPtr fromB, getPtr toB], addr ret)
  (addr ret).decode_result(Variant)

proc lineIntersectsLine*(self: Geometry2D; fromA: Vector2; dirA: Vector2; fromB: Vector2; dirB: Vector2): Variant =
  expandMethodBind(className Geometry2D, "line_intersects_line", 2058025344)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr fromA, getPtr dirA, getPtr fromB, getPtr dirB], addr ret)
  (addr ret).decode_result(Variant)

proc getClosestPointsBetweenSegments*(self: Geometry2D; p1: Vector2; q1: Vector2; p2: Vector2; q2: Vector2): PackedVector2Array =
  expandMethodBind(className Geometry2D, "get_closest_points_between_segments", 3344690961)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr p1, getPtr q1, getPtr p2, getPtr q2], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getClosestPointToSegment*(self: Geometry2D; point: Vector2; s1: Vector2; s2: Vector2): Vector2 =
  expandMethodBind(className Geometry2D, "get_closest_point_to_segment", 4172901909)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr point, getPtr s1, getPtr s2], addr ret)
  (addr ret).decode_result(Vector2)

proc getClosestPointToSegmentUncapped*(self: Geometry2D; point: Vector2; s1: Vector2; s2: Vector2): Vector2 =
  expandMethodBind(className Geometry2D, "get_closest_point_to_segment_uncapped", 4172901909)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr point, getPtr s1, getPtr s2], addr ret)
  (addr ret).decode_result(Vector2)

proc pointIsInsideTriangle*(self: Geometry2D; point: Vector2; a: Vector2; b: Vector2; c: Vector2): bool =
  expandMethodBind(className Geometry2D, "point_is_inside_triangle", 1025948137)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr point, getPtr a, getPtr b, getPtr c], addr ret)
  (addr ret).decode_result(bool)

proc isPolygonClockwise*(self: Geometry2D; polygon: PackedVector2Array): bool =
  expandMethodBind(className Geometry2D, "is_polygon_clockwise", 1361156557)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr polygon], addr ret)
  (addr ret).decode_result(bool)

proc isPointInPolygon*(self: Geometry2D; point: Vector2; polygon: PackedVector2Array): bool =
  expandMethodBind(className Geometry2D, "is_point_in_polygon", 738277916)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr point, getPtr polygon], addr ret)
  (addr ret).decode_result(bool)

proc triangulatePolygon*(self: Geometry2D; polygon: PackedVector2Array): PackedInt32Array =
  expandMethodBind(className Geometry2D, "triangulate_polygon", 1389921771)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr polygon], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc triangulateDelaunay*(self: Geometry2D; points: PackedVector2Array): PackedInt32Array =
  expandMethodBind(className Geometry2D, "triangulate_delaunay", 1389921771)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr points], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc convexHull*(self: Geometry2D; points: PackedVector2Array): PackedVector2Array =
  expandMethodBind(className Geometry2D, "convex_hull", 2004331998)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr points], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc decomposePolygonInConvex*(self: Geometry2D; polygon: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "decompose_polygon_in_convex", 3982393695)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygon], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc mergePolygons*(self: Geometry2D; polygonA: PackedVector2Array; polygonB: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "merge_polygons", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygonA, getPtr polygonB], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc clipPolygons*(self: Geometry2D; polygonA: PackedVector2Array; polygonB: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "clip_polygons", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygonA, getPtr polygonB], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc intersectPolygons*(self: Geometry2D; polygonA: PackedVector2Array; polygonB: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "intersect_polygons", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygonA, getPtr polygonB], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc excludePolygons*(self: Geometry2D; polygonA: PackedVector2Array; polygonB: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "exclude_polygons", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygonA, getPtr polygonB], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc clipPolylineWithPolygon*(self: Geometry2D; polyline: PackedVector2Array; polygon: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "clip_polyline_with_polygon", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polyline, getPtr polygon], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc intersectPolylineWithPolygon*(self: Geometry2D; polyline: PackedVector2Array; polygon: PackedVector2Array): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "intersect_polyline_with_polygon", 3637387053)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polyline, getPtr polygon], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc offsetPolygon*(self: Geometry2D; polygon: PackedVector2Array; delta: Float; joinType: Geometry2D_PolyJoinType = joinSquare): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "offset_polygon", 1275354010)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polygon, getPtr delta, getPtr joinType], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc offsetPolyline*(self: Geometry2D; polyline: PackedVector2Array; delta: Float; joinType: Geometry2D_PolyJoinType = joinSquare; endType: Geometry2D_PolyEndType = endSquare): TypedArray[PackedVector2Array] =
  expandMethodBind(className Geometry2D, "offset_polyline", 2328231778)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr polyline, getPtr delta, getPtr joinType, getPtr endType], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc makeAtlas*(self: Geometry2D; sizes: PackedVector2Array): Dictionary =
  expandMethodBind(className Geometry2D, "make_atlas", 1337682371)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr sizes], addr ret)
  (addr ret).decode_result(Dictionary)

const Geometry2D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Geometry2D]): Table[string, string] = Geometry2D_vmap