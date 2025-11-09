{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(ColorPalette, Resource)

proc setColors*(self: ColorPalette; colors: PackedColorArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPalette, "set_colors", 3546319833)
  methodbind.ptrcall(self, [getPtr colors], void)

proc getColors*(self: ColorPalette): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPalette, "get_colors", 1392750486)
  methodbind.ptrcall(self, [], PackedColorArray)

template colors*(self: ColorPalette): untyped = self.getColors()
template `colors=`*(self: ColorPalette; value) = self.setColors(value)
