{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

proc setSegments*(self: ConcavePolygonShape2D; segments: PackedVector2Array): void =
  expandMethodBind(className ConcavePolygonShape2D, "set_segments", 1509147220)
  methodbind.ptrcall(self, [getPtr segments])

proc getSegments*(self: ConcavePolygonShape2D): PackedVector2Array =
  expandMethodBind(className ConcavePolygonShape2D, "get_segments", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

template segments*(self: ConcavePolygonShape2D): untyped = self.getSegments()
template `segments=`*(self: ConcavePolygonShape2D; value) = self.setSegments(value)

const ConcavePolygonShape2D_vmap =
  Shape2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConcavePolygonShape2D]): Table[string, string] = ConcavePolygonShape2D_vmap