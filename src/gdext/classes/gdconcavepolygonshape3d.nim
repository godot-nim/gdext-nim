{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(ConcavePolygonShape3D, Shape3D)

proc setFaces*(self: ConcavePolygonShape3D; faces: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape3D, "set_faces", 334873810)
  methodbind.ptrcall(self, [getPtr faces], void)

proc getFaces*(self: ConcavePolygonShape3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape3D, "get_faces", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc setBackfaceCollisionEnabled*(self: ConcavePolygonShape3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape3D, "set_backface_collision_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isBackfaceCollisionEnabled*(self: ConcavePolygonShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape3D, "is_backface_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template data*(self: ConcavePolygonShape3D): untyped = self.getFaces()
template `data=`*(self: ConcavePolygonShape3D; value) = self.setFaces(value)

template backfaceCollision*(self: ConcavePolygonShape3D): untyped = self.isBackfaceCollisionEnabled()
template `backfaceCollision=`*(self: ConcavePolygonShape3D; value) = self.setBackfaceCollisionEnabled(value)
