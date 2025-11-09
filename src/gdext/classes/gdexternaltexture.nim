{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(ExternalTexture, Texture2D)

proc setSize*(self: ExternalTexture; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ExternalTexture, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getExternalTextureId*(self: ExternalTexture): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ExternalTexture, "get_external_texture_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc setExternalBufferId*(self: ExternalTexture; externalBufferId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ExternalTexture, "set_external_buffer_id", 1286410249)
  methodbind.ptrcall(self, [getPtr externalBufferId], void)

template size*(self: ExternalTexture): untyped = self.getSize()
template `size=`*(self: ExternalTexture; value) = self.setSize(value)
