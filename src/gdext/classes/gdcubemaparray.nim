{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

expandOnClassImported(CubemapArray, ImageTextureLayered)

proc createPlaceholder*(self: CubemapArray): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CubemapArray, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)
