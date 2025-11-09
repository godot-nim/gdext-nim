{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(CircleShape2D, Shape2D)

proc setRadius*(self: CircleShape2D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CircleShape2D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CircleShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CircleShape2D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

template radius*(self: CircleShape2D): untyped = self.getRadius()
template `radius=`*(self: CircleShape2D; value) = self.setRadius(value)
