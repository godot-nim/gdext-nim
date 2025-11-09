{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDTextureFormat, RefCounted)

proc setFormat*(self: RDTextureFormat; pMember: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_format", 565531219)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFormat*(self: RDTextureFormat): RenderingDevice_DataFormat =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_format", 2235804183)
  methodbind.ptrcall(self, [], RenderingDevice_DataFormat)

proc setWidth*(self: RDTextureFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_width", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getWidth*(self: RDTextureFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_width", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setHeight*(self: RDTextureFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_height", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getHeight*(self: RDTextureFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_height", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setDepth*(self: RDTextureFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_depth", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepth*(self: RDTextureFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_depth", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setArrayLayers*(self: RDTextureFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_array_layers", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getArrayLayers*(self: RDTextureFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_array_layers", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setMipmaps*(self: RDTextureFormat; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_mipmaps", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getMipmaps*(self: RDTextureFormat): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_mipmaps", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setTextureType*(self: RDTextureFormat; pMember: RenderingDevice_TextureType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_texture_type", 652343381)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getTextureType*(self: RDTextureFormat): RenderingDevice_TextureType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_texture_type", 4036357416)
  methodbind.ptrcall(self, [], RenderingDevice_TextureType)

proc setSamples*(self: RDTextureFormat; pMember: RenderingDevice_TextureSamples): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_samples", 3774171498)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSamples*(self: RDTextureFormat): RenderingDevice_TextureSamples =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_samples", 407791724)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSamples)

proc setUsageBits*(self: RDTextureFormat; pMember: set[RenderingDevice_TextureUsageBits]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_usage_bits", 245642367)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getUsageBits*(self: RDTextureFormat): set[RenderingDevice_TextureUsageBits] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_usage_bits", 1313398998)
  methodbind.ptrcall(self, [], set[RenderingDevice_TextureUsageBits])

proc setIsResolveBuffer*(self: RDTextureFormat; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_is_resolve_buffer", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getIsResolveBuffer*(self: RDTextureFormat): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_is_resolve_buffer", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIsDiscardable*(self: RDTextureFormat; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "set_is_discardable", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getIsDiscardable*(self: RDTextureFormat): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "get_is_discardable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addShareableFormat*(self: RDTextureFormat; format: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "add_shareable_format", 565531219)
  methodbind.ptrcall(self, [getPtr format], void)

proc removeShareableFormat*(self: RDTextureFormat; format: RenderingDevice_DataFormat): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDTextureFormat, "remove_shareable_format", 565531219)
  methodbind.ptrcall(self, [getPtr format], void)

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

template isResolveBuffer*(self: RDTextureFormat): untyped = self.getIsResolveBuffer()
template `isResolveBuffer=`*(self: RDTextureFormat; value) = self.setIsResolveBuffer(value)

template isDiscardable*(self: RDTextureFormat): untyped = self.getIsDiscardable()
template `isDiscardable=`*(self: RDTextureFormat; value) = self.setIsDiscardable(value)
