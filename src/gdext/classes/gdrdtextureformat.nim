{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setFormat*(self: RDTextureFormat; pMember: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDTextureFormat, "set_format", 565531219)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: RDTextureFormat): RenderingDevice_DataFormat =
  expandMethodBind(className RDTextureFormat, "get_format", 2235804183)
  var ret: encoded RenderingDevice_DataFormat
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_DataFormat)

proc setWidth*(self: RDTextureFormat; pMember: uint32): void =
  expandMethodBind(className RDTextureFormat, "set_width", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWidth*(self: RDTextureFormat): uint32 =
  expandMethodBind(className RDTextureFormat, "get_width", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setHeight*(self: RDTextureFormat; pMember: uint32): void =
  expandMethodBind(className RDTextureFormat, "set_height", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: RDTextureFormat): uint32 =
  expandMethodBind(className RDTextureFormat, "get_height", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setDepth*(self: RDTextureFormat; pMember: uint32): void =
  expandMethodBind(className RDTextureFormat, "set_depth", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepth*(self: RDTextureFormat): uint32 =
  expandMethodBind(className RDTextureFormat, "get_depth", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setArrayLayers*(self: RDTextureFormat; pMember: uint32): void =
  expandMethodBind(className RDTextureFormat, "set_array_layers", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getArrayLayers*(self: RDTextureFormat): uint32 =
  expandMethodBind(className RDTextureFormat, "get_array_layers", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setMipmaps*(self: RDTextureFormat; pMember: uint32): void =
  expandMethodBind(className RDTextureFormat, "set_mipmaps", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMipmaps*(self: RDTextureFormat): uint32 =
  expandMethodBind(className RDTextureFormat, "get_mipmaps", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setTextureType*(self: RDTextureFormat; pMember: RenderingDevice_TextureType): void =
  expandMethodBind(className RDTextureFormat, "set_texture_type", 652343381)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureType*(self: RDTextureFormat): RenderingDevice_TextureType =
  expandMethodBind(className RDTextureFormat, "get_texture_type", 4036357416)
  var ret: encoded RenderingDevice_TextureType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureType)

proc setSamples*(self: RDTextureFormat; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RDTextureFormat, "set_samples", 3774171498)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamples*(self: RDTextureFormat): RenderingDevice_TextureSamples =
  expandMethodBind(className RDTextureFormat, "get_samples", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setUsageBits*(self: RDTextureFormat; pMember: set[RenderingDevice_TextureUsageBits]): void =
  expandMethodBind(className RDTextureFormat, "set_usage_bits", 245642367)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUsageBits*(self: RDTextureFormat): set[RenderingDevice_TextureUsageBits] =
  expandMethodBind(className RDTextureFormat, "get_usage_bits", 1313398998)
  var ret: encoded set[RenderingDevice_TextureUsageBits]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[RenderingDevice_TextureUsageBits])

proc addShareableFormat*(self: RDTextureFormat; format: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDTextureFormat, "add_shareable_format", 565531219)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeShareableFormat*(self: RDTextureFormat; format: RenderingDevice_DataFormat): void =
  expandMethodBind(className RDTextureFormat, "remove_shareable_format", 565531219)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

template format*(self: RDTextureFormat): untyped = self.getFormat()
template `format=`*(self: RDTextureFormat; value) = self.setFormat(value)

template width*(self: RDTextureFormat): untyped = self.getWidth()
template `width=`*(self: RDTextureFormat; value) = self.setWidth(value)

template height*(self: RDTextureFormat): untyped = self.getHeight()
template `height=`*(self: RDTextureFormat; value) = self.setHeight(value)

template depth*(self: RDTextureFormat): untyped = self.getDepth()
template `depth=`*(self: RDTextureFormat; value) = self.setDepth(value)

template arrayLayers*(self: RDTextureFormat): untyped = self.getArrayLayers()
template `arrayLayers=`*(self: RDTextureFormat; value) = self.setArrayLayers(value)

template mipmaps*(self: RDTextureFormat): untyped = self.getMipmaps()
template `mipmaps=`*(self: RDTextureFormat; value) = self.setMipmaps(value)

template textureType*(self: RDTextureFormat): untyped = self.getTextureType()
template `textureType=`*(self: RDTextureFormat; value) = self.setTextureType(value)

template samples*(self: RDTextureFormat): untyped = self.getSamples()
template `samples=`*(self: RDTextureFormat; value) = self.setSamples(value)

template usageBits*(self: RDTextureFormat): untyped = self.getUsageBits()
template `usageBits=`*(self: RDTextureFormat; value) = self.setUsageBits(value)

const RDTextureFormat_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDTextureFormat]): Table[string, string] = RDTextureFormat_vmap