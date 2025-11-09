{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(PortableCompressedTexture2D, Texture2D)

proc createFromImage*(self: PortableCompressedTexture2D; image: gdref Image; compressionMode: PortableCompressedTexture2D_CompressionMode; normalMap: bool = false; lossyQuality: Float = 0.8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "create_from_image", 3679243433)
  methodbind.ptrcall(self, [getPtr image, getPtr compressionMode, getPtr normalMap, getPtr lossyQuality], void)

proc getFormat*(self: PortableCompressedTexture2D): Image_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "get_format", 3847873762)
  methodbind.ptrcall(self, [], Image_Format)

proc getCompressionMode*(self: PortableCompressedTexture2D): PortableCompressedTexture2D_CompressionMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "get_compression_mode", 3265612739)
  methodbind.ptrcall(self, [], PortableCompressedTexture2D_CompressionMode)

proc setSizeOverride*(self: PortableCompressedTexture2D; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "set_size_override", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSizeOverride*(self: PortableCompressedTexture2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "get_size_override", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setKeepCompressedBuffer*(self: PortableCompressedTexture2D; keep: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "set_keep_compressed_buffer", 2586408642)
  methodbind.ptrcall(self, [getPtr keep], void)

proc isKeepingCompressedBuffer*(self: PortableCompressedTexture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "is_keeping_compressed_buffer", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBasisuCompressorParams*(self: PortableCompressedTexture2D; uastcLevel: int32; rdoQualityLoss: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "set_basisu_compressor_params", 1602489585)
  methodbind.ptrcall(self, [getPtr uastcLevel, getPtr rdoQualityLoss], void)

proc setKeepAllCompressedBuffers*(_: typedesc[PortableCompressedTexture2D]; keep: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "set_keep_all_compressed_buffers", 2586408642)
  methodbind.ptrcall([getPtr keep], void)

proc isKeepingAllCompressedBuffers*(_: typedesc[PortableCompressedTexture2D]): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PortableCompressedTexture2D, "is_keeping_all_compressed_buffers", 2240911060)
  methodbind.ptrcall([], bool)

template sizeOverride*(self: PortableCompressedTexture2D): untyped = self.getSizeOverride()
template `sizeOverride=`*(self: PortableCompressedTexture2D; value) = self.setSizeOverride(value)

template keepCompressedBuffer*(self: PortableCompressedTexture2D): untyped = self.isKeepingCompressedBuffer()
template `keepCompressedBuffer=`*(self: PortableCompressedTexture2D; value) = self.setKeepCompressedBuffer(value)
