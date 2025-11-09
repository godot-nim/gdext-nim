{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexturelayered; export gdtexturelayered

expandOnClassImported(TextureLayeredRD, TextureLayered)

proc setTextureRdRid*(self: TextureLayeredRD; textureRdRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureLayeredRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid], void)

proc getTextureRdRid*(self: TextureLayeredRD): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextureLayeredRD, "get_texture_rd_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template textureRdRid*(self: TextureLayeredRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: TextureLayeredRD; value) = self.setTextureRdRid(value)
