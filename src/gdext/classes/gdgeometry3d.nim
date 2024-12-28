{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc computeConvexMeshPoints*(self: Geometry3D; planes: TypedArray[Plane]): PackedVector3Array =
  expandMethodBind(className Geometry3D, "compute_convex_mesh_points", 1936902142)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr planes], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc buildBoxPlanes*(self: Geometry3D; extents: Vector3): TypedArray[Plane] =
  expandMethodBind(className Geometry3D, "build_box_planes", 3622277145)
  var ret: encoded TypedArray[Plane]
  methodbind.ptrcall(self, [getPtr extents], addr ret)
  (addr ret).decode_result(TypedArray[Plane])

proc buildCylinderPlanes*(self: Geometry3D; radius: Float; height: Float; sides: int32; axis: Vector3_Axis = axisZ): TypedArray[Plane] =
  expandMethodBind(className Geometry3D, "build_cylinder_planes", 449920067)
  var ret: encoded TypedArray[Plane]
  methodbind.ptrcall(self, [getPtr radius, getPtr height, getPtr sides, getPtr axis], addr ret)
  (addr ret).decode_result(TypedArray[Plane])

proc buildCapsulePlanes*(self: Geometry3D; radius: Float; height: Float; sides: int32; lats: int32; axis: Vector3_Axis = axisZ): TypedArray[Plane] =
  expandMethodBind(className Geometry3D, "build_capsule_planes", 2113592876)
  var ret: encoded TypedArray[Plane]
  methodbind.ptrcall(self, [getPtr radius, getPtr height, getPtr sides, getPtr lats, getPtr axis], addr ret)
  (addr ret).decode_result(TypedArray[Plane])

proc getClosestPointsBetweenSegments*(self: Geometry3D; p1: Vector3; p2: Vector3; q1: Vector3; q2: Vector3): PackedVector3Array =
  expandMethodBind(className Geometry3D, "get_closest_points_between_segments", 1056373962)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr p1, getPtr p2, getPtr q1, getPtr q2], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getClosestPointToSegment*(self: Geometry3D; point: Vector3; s1: Vector3; s2: Vector3): Vector3 =
  expandMethodBind(className Geometry3D, "get_closest_point_to_segment", 2168193209)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr point, getPtr s1, getPtr s2], addr ret)
  (addr ret).decode_result(Vector3)

proc getClosestPointToSegmentUncapped*(self: Geometry3D; point: Vector3; s1: Vector3; s2: Vector3): Vector3 =
  expandMethodBind(className Geometry3D, "get_closest_point_to_segment_uncapped", 2168193209)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr point, getPtr s1, getPtr s2], addr ret)
  (addr ret).decode_result(Vector3)

proc getTriangleBarycentricCoords*(self: Geometry3D; point: Vector3; a: Vector3; b: Vector3; c: Vector3): Vector3 =
  expandMethodBind(className Geometry3D, "get_triangle_barycentric_coords", 1362048029)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr point, getPtr a, getPtr b, getPtr c], addr ret)
  (addr ret).decode_result(Vector3)

proc rayIntersectsTriangle*(self: Geometry3D; `from`: Vector3; dir: Vector3; a: Vector3; b: Vector3; c: Vector3): Variant =
  expandMethodBind(className Geometry3D, "ray_intersects_triangle", 1718655448)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr `from`, getPtr dir, getPtr a, getPtr b, getPtr c], addr ret)
  (addr ret).decode_result(Variant)

proc segmentIntersectsTriangle*(self: Geometry3D; `from`: Vector3; to: Vector3; a: Vector3; b: Vector3; c: Vector3): Variant =
  expandMethodBind(className Geometry3D, "segment_intersects_triangle", 1718655448)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr a, getPtr b, getPtr c], addr ret)
  (addr ret).decode_result(Variant)

proc segmentIntersectsSphere*(self: Geometry3D; `from`: Vector3; to: Vector3; spherePosition: Vector3; sphereRadius: Float): PackedVector3Array =
  expandMethodBind(className Geometry3D, "segment_intersects_sphere", 4080141172)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr spherePosition, getPtr sphereRadius], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc segmentIntersectsCylinder*(self: Geometry3D; `from`: Vector3; to: Vector3; height: Float; radius: Float): PackedVector3Array =
  expandMethodBind(className Geometry3D, "segment_intersects_cylinder", 2361316491)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr height, getPtr radius], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc segmentIntersectsConvex*(self: Geometry3D; `from`: Vector3; to: Vector3; planes: TypedArray[Plane]): PackedVector3Array =
  expandMethodBind(className Geometry3D, "segment_intersects_convex", 537425332)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr planes], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc clipPolygon*(self: Geometry3D; points: PackedVector3Array; plane: Plane): PackedVector3Array =
  expandMethodBind(className Geometry3D, "clip_polygon", 2603188319)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [getPtr points, getPtr plane], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc tetrahedralizeDelaunay*(self: Geometry3D; points: PackedVector3Array): PackedInt32Array =
  expandMethodBind(className Geometry3D, "tetrahedralize_delaunay", 1230191221)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr points], addr ret)
  (addr ret).decode_result(PackedInt32Array)

const Geometry3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Geometry3D]): Table[string, string] = Geometry3D_vmap