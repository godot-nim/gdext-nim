{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

proc createPlaceholder*(self: CubemapArray): gdref Resource =
  expandMethodBind(className CubemapArray, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

const CubemapArray_vmap =
  ImageTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CubemapArray]): Table[string, string] = CubemapArray_vmap