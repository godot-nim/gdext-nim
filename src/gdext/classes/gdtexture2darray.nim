{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

expandOnClassImported(Texture2DArray, ImageTextureLayered)

proc createPlaceholder*(self: Texture2DArray): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2DArray, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)
