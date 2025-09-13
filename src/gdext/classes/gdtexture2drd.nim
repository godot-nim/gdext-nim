{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(Texture2DRD, Texture2D)

proc setTextureRdRid*(self: Texture2DRD; textureRdRid: RID): void =
  expandMethodBind(className Texture2DRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid])

proc getTextureRdRid*(self: Texture2DRD): RID =
  expandMethodBind(className Texture2DRD, "get_texture_rd_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

template textureRdRid*(self: Texture2DRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture2DRD; value) = self.setTextureRdRid(value)
