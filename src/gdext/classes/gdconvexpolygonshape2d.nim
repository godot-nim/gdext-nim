{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setPointCloud*(self: ConvexPolygonShape2D; pointCloud: PackedVector2Array): void =
  expandMethodBind(className ConvexPolygonShape2D, "set_point_cloud", 1509147220)
  var `?param` = [getPtr pointCloud]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPoints*(self: ConvexPolygonShape2D; points: PackedVector2Array): void =
  expandMethodBind(className ConvexPolygonShape2D, "set_points", 1509147220)
  var `?param` = [getPtr points]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPoints*(self: ConvexPolygonShape2D): PackedVector2Array =
  expandMethodBind(className ConvexPolygonShape2D, "get_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

template points*(self: ConvexPolygonShape2D): untyped = self.getPoints()
template `points=`*(self: ConvexPolygonShape2D; value) = self.setPoints(value)

const ConvexPolygonShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConvexPolygonShape2D]): Table[string, string] = ConvexPolygonShape2D_vmap