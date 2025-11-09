{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(Texture2DRD, Texture2D)

proc setTextureRdRid*(self: Texture2DRD; textureRdRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2DRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid], void)

proc getTextureRdRid*(self: Texture2DRD): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2DRD, "get_texture_rd_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template textureRdRid*(self: Texture2DRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture2DRD; value) = self.setTextureRdRid(value)
