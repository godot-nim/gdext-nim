{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

proc setTextureRdRid*(self: TextureLayeredRD; textureRdRid: RID): void =
  expandMethodBind(className TextureLayeredRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid])

proc getTextureRdRid*(self: TextureLayeredRD): RID =
  expandMethodBind(className TextureLayeredRD, "get_texture_rd_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

template textureRdRid*(self: TextureLayeredRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: TextureLayeredRD; value) = self.setTextureRdRid(value)

const TextureLayeredRD_vmap =
  TextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureLayeredRD]): Table[string, string] = TextureLayeredRD_vmap