{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape2d; export gdshape2d

expandOnClassImported(RectangleShape2D, Shape2D)

proc setSize*(self: RectangleShape2D; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RectangleShape2D, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: RectangleShape2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RectangleShape2D, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template size*(self: RectangleShape2D): untyped = self.getSize()
template `size=`*(self: RectangleShape2D; value) = self.setSize(value)
