{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(WorldBoundaryShape2D, Shape2D)

proc setNormal*(self: WorldBoundaryShape2D; normal: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape2D, "set_normal", 743155724)
  methodbind.ptrcall(self, [getPtr normal], void)

proc getNormal*(self: WorldBoundaryShape2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape2D, "get_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setDistance*(self: WorldBoundaryShape2D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape2D, "set_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getDistance*(self: WorldBoundaryShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WorldBoundaryShape2D, "get_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

template normal*(self: WorldBoundaryShape2D): untyped = self.getNormal()
template `normal=`*(self: WorldBoundaryShape2D; value) = self.setNormal(value)

template distance*(self: WorldBoundaryShape2D): untyped = self.getDistance()
template `distance=`*(self: WorldBoundaryShape2D; value) = self.setDistance(value)
