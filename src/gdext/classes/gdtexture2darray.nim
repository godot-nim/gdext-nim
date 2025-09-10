{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered
export Texture2DArray

proc createPlaceholder*(self: Texture2DArray): gdref Resource =
  expandMethodBind(className Texture2DArray, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)
