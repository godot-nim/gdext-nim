{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(CanvasModulate, Node2D)

proc setColor*(self: CanvasModulate; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasModulate, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColor*(self: CanvasModulate): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasModulate, "get_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template color*(self: CanvasModulate): untyped = self.getColor()
template `color=`*(self: CanvasModulate; value) = self.setColor(value)
