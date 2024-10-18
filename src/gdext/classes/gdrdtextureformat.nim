{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormat*(self: RdTextureFormat; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdTextureFormat, "set_format", 565531219)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: RdTextureFormat): RenderingDevice_DataFormat =
  expandMethodBind(className RdTextureFormat, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setWidth*(self: RdTextureFormat; pMember: uint32): void =
  expandMethodBind(className RdTextureFormat, "set_width", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWidth*(self: RdTextureFormat): uint32 =
  expandMethodBind(className RdTextureFormat, "get_width", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setHeight*(self: RdTextureFormat; pMember: uint32): void =
  expandMethodBind(className RdTextureFormat, "set_height", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: RdTextureFormat): uint32 =
  expandMethodBind(className RdTextureFormat, "get_height", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setDepth*(self: RdTextureFormat; pMember: uint32): void =
  expandMethodBind(className RdTextureFormat, "set_depth", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepth*(self: RdTextureFormat): uint32 =
  expandMethodBind(className RdTextureFormat, "get_depth", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setArrayLayers*(self: RdTextureFormat; pMember: uint32): void =
  expandMethodBind(className RdTextureFormat, "set_array_layers", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getArrayLayers*(self: RdTextureFormat): uint32 =
  expandMethodBind(className RdTextureFormat, "get_array_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setMipmaps*(self: RdTextureFormat; pMember: uint32): void =
  expandMethodBind(className RdTextureFormat, "set_mipmaps", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMipmaps*(self: RdTextureFormat): uint32 =
  expandMethodBind(className RdTextureFormat, "get_mipmaps", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setTextureType*(self: RdTextureFormat; pMember: RenderingDevice_TextureType): void =
  expandMethodBind(className RdTextureFormat, "set_texture_type", 652343381)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureType*(self: RdTextureFormat): RenderingDevice_TextureType =
  expandMethodBind(className RdTextureFormat, "get_texture_type", 4036357416)
  var ret: encoded RenderingDevice_TextureType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureType)

proc setSamples*(self: RdTextureFormat; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RdTextureFormat, "set_samples", 3774171498)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamples*(self: RdTextureFormat): RenderingDevice_TextureSamples =
  expandMethodBind(className RdTextureFormat, "get_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setUsageBits*(self: RdTextureFormat; pMember: set[RenderingDevice_TextureUsageBits]): void =
  expandMethodBind(className RdTextureFormat, "set_usage_bits", 245642367)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUsageBits*(self: RdTextureFormat): set[RenderingDevice_TextureUsageBits] =
  expandMethodBind(className RdTextureFormat, "get_usage_bits", 1313398998)
  var ret: encoded set[RenderingDevice_TextureUsageBits]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[RenderingDevice_TextureUsageBits])

proc addShareableFormat*(self: RdTextureFormat; format: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdTextureFormat, "add_shareable_format", 565531219)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeShareableFormat*(self: RdTextureFormat; format: RenderingDevice_DataFormat): void =
  expandMethodBind(className RdTextureFormat, "remove_shareable_format", 565531219)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

template format*(self: RdTextureFormat): untyped = self.getFormat()
template `format=`*(self: RdTextureFormat; value) = self.setFormat(value)

template width*(self: RdTextureFormat): untyped = self.getWidth()
template `width=`*(self: RdTextureFormat; value) = self.setWidth(value)

template height*(self: RdTextureFormat): untyped = self.getHeight()
template `height=`*(self: RdTextureFormat; value) = self.setHeight(value)

template depth*(self: RdTextureFormat): untyped = self.getDepth()
template `depth=`*(self: RdTextureFormat; value) = self.setDepth(value)

template arrayLayers*(self: RdTextureFormat): untyped = self.getArrayLayers()
template `arrayLayers=`*(self: RdTextureFormat; value) = self.setArrayLayers(value)

template mipmaps*(self: RdTextureFormat): untyped = self.getMipmaps()
template `mipmaps=`*(self: RdTextureFormat; value) = self.setMipmaps(value)

template textureType*(self: RdTextureFormat): untyped = self.getTextureType()
template `textureType=`*(self: RdTextureFormat; value) = self.setTextureType(value)

template samples*(self: RdTextureFormat): untyped = self.getSamples()
template `samples=`*(self: RdTextureFormat; value) = self.setSamples(value)

template usageBits*(self: RdTextureFormat): untyped = self.getUsageBits()
template `usageBits=`*(self: RdTextureFormat; value) = self.setUsageBits(value)

const RdTextureFormat_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdTextureFormat]): Table[string, string] = RdTextureFormat_vmap