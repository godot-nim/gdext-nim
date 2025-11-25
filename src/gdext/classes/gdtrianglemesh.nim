{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TriangleMesh, RefCounted)

proc createFromFaces*(self: TriangleMesh; faces: PackedVector3Array): bool =
  expandMethodBind(className TriangleMesh, "create_from_faces", 2637816732)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr faces], addr ret)
  (addr ret).decode_result(bool)

proc getFaces*(self: TriangleMesh): PackedVector3Array =
  expandMethodBind(className TriangleMesh, "get_faces", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc intersectSegment*(self: TriangleMesh; begin: Vector3; `end`: Vector3): Dictionary[Variant, Variant] =
  expandMethodBind(className TriangleMesh, "intersect_segment", 3648293151)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr begin, getPtr `end`], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc intersectRay*(self: TriangleMesh; begin: Vector3; dir: Vector3): Dictionary[Variant, Variant] =
  expandMethodBind(className TriangleMesh, "intersect_ray", 3648293151)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr begin, getPtr dir], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])
