{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

expandOnClassImported(Cubemap, ImageTextureLayered)

proc createPlaceholder*(self: Cubemap): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Cubemap, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)
