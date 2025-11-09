{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(ConcavePolygonShape2D, Shape2D)

proc setSegments*(self: ConcavePolygonShape2D; segments: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape2D, "set_segments", 1509147220)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getSegments*(self: ConcavePolygonShape2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConcavePolygonShape2D, "get_segments", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

template segments*(self: ConcavePolygonShape2D): untyped = self.getSegments()
template `segments=`*(self: ConcavePolygonShape2D; value) = self.setSegments(value)
