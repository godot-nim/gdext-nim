{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(ColorRect, Control)

proc setColor*(self: ColorRect; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorRect, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColor*(self: ColorRect): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorRect, "get_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template color*(self: ColorRect): untyped = self.getColor()
template `color=`*(self: ColorRect; value) = self.setColor(value)
