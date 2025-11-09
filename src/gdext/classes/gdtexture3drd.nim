{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture3d; export gdtexture3d

expandOnClassImported(Texture3DRD, Texture3D)

proc setTextureRdRid*(self: Texture3DRD; textureRdRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3DRD, "set_texture_rd_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr textureRdRid], void)

proc getTextureRdRid*(self: Texture3DRD): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3DRD, "get_texture_rd_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template textureRdRid*(self: Texture3DRD): untyped = self.getTextureRdRid()
template `textureRdRid=`*(self: Texture3DRD; value) = self.setTextureRdRid(value)
