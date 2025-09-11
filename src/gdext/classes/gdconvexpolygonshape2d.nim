{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(ConvexPolygonShape2D, Shape2D)

proc setPointCloud*(self: ConvexPolygonShape2D; pointCloud: PackedVector2Array): void =
  expandMethodBind(className ConvexPolygonShape2D, "set_point_cloud", 1509147220)
  methodbind.ptrcall(self, [getPtr pointCloud])

proc setPoints*(self: ConvexPolygonShape2D; points: PackedVector2Array): void =
  expandMethodBind(className ConvexPolygonShape2D, "set_points", 1509147220)
  methodbind.ptrcall(self, [getPtr points])

proc getPoints*(self: ConvexPolygonShape2D): PackedVector2Array =
  expandMethodBind(className ConvexPolygonShape2D, "get_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

template points*(self: ConvexPolygonShape2D): untyped = self.getPoints()
template `points=`*(self: ConvexPolygonShape2D; value) = self.setPoints(value)
