{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(ConvexPolygonShape2D, Shape2D)

proc setPointCloud*(self: ConvexPolygonShape2D; pointCloud: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvexPolygonShape2D, "set_point_cloud", 1509147220)
  methodbind.ptrcall(self, [getPtr pointCloud], void)

proc setPoints*(self: ConvexPolygonShape2D; points: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvexPolygonShape2D, "set_points", 1509147220)
  methodbind.ptrcall(self, [getPtr points], void)

proc getPoints*(self: ConvexPolygonShape2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConvexPolygonShape2D, "get_points", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

template points*(self: ConvexPolygonShape2D): untyped = self.getPoints()
template `points=`*(self: ConvexPolygonShape2D; value) = self.setPoints(value)
