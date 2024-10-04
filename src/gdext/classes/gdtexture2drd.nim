{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setTextureRdRid*(self: Texture2Drd; textureRdRid: Rid): void =
  expandMethodBind(className Texture2Drd, "set_texture_rd_rid", 2722037293)
  var `?param` = [getPtr textureRdRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRdRid*(self: Texture2Drd): Rid =
  expandMethodBind(className Texture2Drd, "get_texture_rd_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

template textureRdRid*(self: Texture2Drd): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture2Drd; value) = self.setTextureRdRid(value)

const Texture2Drd_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture2Drd]): Table[string, string] = Texture2Drd_vmap