{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc setTextureRdRid*(self: TextureLayeredRd; textureRdRid: Rid): void =
  expandMethodBind(className TextureLayeredRd, "set_texture_rd_rid", 2722037293)
  var `?param` = [getPtr textureRdRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRdRid*(self: TextureLayeredRd): Rid =
  expandMethodBind(className TextureLayeredRd, "get_texture_rd_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

template textureRdRid*(self: TextureLayeredRd): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: TextureLayeredRd; value) = self.setTextureRdRid(value)

const TextureLayeredRd_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureLayeredRd]): Table[string, string] = TextureLayeredRd_vmap