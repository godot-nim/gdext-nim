{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setSize*(self: ExternalTexture; size: Vector2): void =
  expandMethodBind(className ExternalTexture, "set_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getExternalTextureId*(self: ExternalTexture): uint64 =
  expandMethodBind(className ExternalTexture, "get_external_texture_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc setExternalBufferId*(self: ExternalTexture; externalBufferId: uint64): void =
  expandMethodBind(className ExternalTexture, "set_external_buffer_id", 1286410249)
  methodbind.ptrcall(self, [getPtr externalBufferId])

template size*(self: ExternalTexture): untyped = self.getSize()
template `size=`*(self: ExternalTexture; value) = self.setSize(value)

const ExternalTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ExternalTexture]): Table[string, string] = ExternalTexture_vmap