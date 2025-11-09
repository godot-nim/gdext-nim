{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

expandOnClassImported(ConvexPolygonShape3D, Shape3D)

proc setPoints*(self: ConvexPolygonShape3D; points: PackedVector3Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvexPolygonShape3D, "set_points", 334873810)
  methodbind.ptrcall(self, [getPtr points], void)

proc getPoints*(self: ConvexPolygonShape3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvexPolygonShape3D, "get_points", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

template points*(self: ConvexPolygonShape3D): untyped = self.getPoints()
template `points=`*(self: ConvexPolygonShape3D; value) = self.setPoints(value)
