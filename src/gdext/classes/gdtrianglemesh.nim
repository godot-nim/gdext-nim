{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TriangleMesh, RefCounted)

proc createFromFaces*(self: TriangleMesh; faces: PackedVector3Array): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TriangleMesh, "create_from_faces", 2637816732)
  methodbind.ptrcall(self, [getPtr faces], bool)

proc getFaces*(self: TriangleMesh): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TriangleMesh, "get_faces", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc intersectSegment*(self: TriangleMesh; begin: Vector3; `end`: Vector3): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TriangleMesh, "intersect_segment", 3648293151)
  methodbind.ptrcall(self, [getPtr begin, getPtr `end`], Dictionary)

proc intersectRay*(self: TriangleMesh; begin: Vector3; dir: Vector3): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TriangleMesh, "intersect_ray", 3648293151)
  methodbind.ptrcall(self, [getPtr begin, getPtr dir], Dictionary)
