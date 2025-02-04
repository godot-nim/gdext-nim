{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setup*(self: PolygonPathFinder; points: PackedVector2Array; connections: PackedInt32Array): void =
  expandMethodBind(className PolygonPathFinder, "setup", 3251786936)
  methodbind.ptrcall(self, [getPtr points, getPtr connections])

proc findPath*(self: PolygonPathFinder; `from`: Vector2; to: Vector2): PackedVector2Array =
  expandMethodBind(className PolygonPathFinder, "find_path", 1562168077)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getIntersections*(self: PolygonPathFinder; `from`: Vector2; to: Vector2): PackedVector2Array =
  expandMethodBind(className PolygonPathFinder, "get_intersections", 3932192302)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getClosestPoint*(self: PolygonPathFinder; point: Vector2): Vector2 =
  expandMethodBind(className PolygonPathFinder, "get_closest_point", 2656412154)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(Vector2)

proc isPointInside*(self: PolygonPathFinder; point: Vector2): bool =
  expandMethodBind(className PolygonPathFinder, "is_point_inside", 556197845)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(bool)

proc setPointPenalty*(self: PolygonPathFinder; idx: int32; penalty: Float): void =
  expandMethodBind(className PolygonPathFinder, "set_point_penalty", 1602489585)
  methodbind.ptrcall(self, [getPtr idx, getPtr penalty])

proc getPointPenalty*(self: PolygonPathFinder; idx: int32): Float =
  expandMethodBind(className PolygonPathFinder, "get_point_penalty", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Float)

proc getBounds*(self: PolygonPathFinder): Rect2 =
  expandMethodBind(className PolygonPathFinder, "get_bounds", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

template data*(self: PolygonPathFinder): untyped = self.getData()
template `data=`*(self: PolygonPathFinder; value) = self.setData(value)

const PolygonPathFinder_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PolygonPathFinder]): Table[string, string] = PolygonPathFinder_vmap