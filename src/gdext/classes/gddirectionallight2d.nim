{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdlight2d; export gdlight2d

expandOnClassImported(DirectionalLight2D, Light2D)

proc setMaxDistance*(self: DirectionalLight2D; pixels: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirectionalLight2D, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr pixels], void)

proc getMaxDistance*(self: DirectionalLight2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DirectionalLight2D, "get_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

template height*(self: DirectionalLight2D): untyped = self.getHeight()
template `height=`*(self: DirectionalLight2D; value) = self.setHeight(value)

template maxDistance*(self: DirectionalLight2D): untyped = self.getMaxDistance()
template `maxDistance=`*(self: DirectionalLight2D; value) = self.setMaxDistance(value)
