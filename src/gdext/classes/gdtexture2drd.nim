{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setTextureRdRid*(self: Texture2DRD; textureRdRid: RID): void =
  expandMethodBind(className Texture2DRD, "set_texture_rd_rid", 2722037293)
  var `?param` = [getPtr textureRdRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRdRid*(self: Texture2DRD): RID =
  expandMethodBind(className Texture2DRD, "get_texture_rd_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

template textureRdRid*(self: Texture2DRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture2DRD; value) = self.setTextureRdRid(value)

const Texture2DRD_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture2DRD]): Table[string, string] = Texture2DRD_vmap