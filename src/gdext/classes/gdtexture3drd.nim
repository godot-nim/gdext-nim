{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

proc setTextureRdRid*(self: Texture3Drd; textureRdRid: Rid): void =
  expandMethodBind(className Texture3Drd, "set_texture_rd_rid", 2722037293)
  var `?param` = [getPtr textureRdRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRdRid*(self: Texture3Drd): Rid =
  expandMethodBind(className Texture3Drd, "get_texture_rd_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

template textureRdRid*(self: Texture3Drd): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture3Drd; value) = self.setTextureRdRid(value)

const Texture3Drd_vmap =
  Texture3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture3Drd]): Table[string, string] = Texture3Drd_vmap