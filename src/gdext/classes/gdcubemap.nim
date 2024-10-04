{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

proc createPlaceholder*(self: Cubemap): gdref Resource =
  expandMethodBind(className Cubemap, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

const Cubemap_vmap =
  ImageTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Cubemap]): Table[string, string] = Cubemap_vmap