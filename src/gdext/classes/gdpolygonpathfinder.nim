{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(PolygonPathFinder, Resource)

proc setup*(self: PolygonPathFinder; points: PackedVector2Array; connections: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "setup", 3251786936)
  methodbind.ptrcall(self, [getPtr points, getPtr connections], void)

proc findPath*(self: PolygonPathFinder; `from`: Vector2; to: Vector2): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "find_path", 1562168077)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], PackedVector2Array)

proc getIntersections*(self: PolygonPathFinder; `from`: Vector2; to: Vector2): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "get_intersections", 3932192302)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], PackedVector2Array)

proc getClosestPoint*(self: PolygonPathFinder; point: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "get_closest_point", 2656412154)
  methodbind.ptrcall(self, [getPtr point], Vector2)

proc isPointInside*(self: PolygonPathFinder; point: Vector2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "is_point_inside", 556197845)
  methodbind.ptrcall(self, [getPtr point], bool)

proc setPointPenalty*(self: PolygonPathFinder; idx: int32; penalty: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "set_point_penalty", 1602489585)
  methodbind.ptrcall(self, [getPtr idx, getPtr penalty], void)

proc getPointPenalty*(self: PolygonPathFinder; idx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "get_point_penalty", 2339986948)
  methodbind.ptrcall(self, [getPtr idx], Float)

proc getBounds*(self: PolygonPathFinder): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonPathFinder, "get_bounds", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

template data*(self: PolygonPathFinder): untyped = self.getData()
template `data=`*(self: PolygonPathFinder; value) = self.setData(value)
