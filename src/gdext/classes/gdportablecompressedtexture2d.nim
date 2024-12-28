{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc createFromImage*(self: PortableCompressedTexture2D; image: gdref Image; compressionMode: PortableCompressedTexture2D_CompressionMode; normalMap: bool = false; lossyQuality: Float = 0.8): void =
  expandMethodBind(className PortableCompressedTexture2D, "create_from_image", 3679243433)
  methodbind.ptrcall(self, [getPtr image, getPtr compressionMode, getPtr normalMap, getPtr lossyQuality])

proc getFormat*(self: PortableCompressedTexture2D): Image_Format =
  expandMethodBind(className PortableCompressedTexture2D, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_Format)

proc getCompressionMode*(self: PortableCompressedTexture2D): PortableCompressedTexture2D_CompressionMode =
  expandMethodBind(className PortableCompressedTexture2D, "get_compression_mode", 3265612739)
  var ret: encoded PortableCompressedTexture2D_CompressionMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PortableCompressedTexture2D_CompressionMode)

proc setSizeOverride*(self: PortableCompressedTexture2D; size: Vector2): void =
  expandMethodBind(className PortableCompressedTexture2D, "set_size_override", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getSizeOverride*(self: PortableCompressedTexture2D): Vector2 =
  expandMethodBind(className PortableCompressedTexture2D, "get_size_override", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setKeepCompressedBuffer*(self: PortableCompressedTexture2D; keep: bool): void =
  expandMethodBind(className PortableCompressedTexture2D, "set_keep_compressed_buffer", 2586408642)
  methodbind.ptrcall(self, [getPtr keep])

proc isKeepingCompressedBuffer*(self: PortableCompressedTexture2D): bool =
  expandMethodBind(className PortableCompressedTexture2D, "is_keeping_compressed_buffer", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setKeepAllCompressedBuffers*(_: typedesc[PortableCompressedTexture2D]; keep: bool): void =
  expandMethodBind(className PortableCompressedTexture2D, "set_keep_all_compressed_buffers", 2586408642)
  methodbind.ptrcall([getPtr keep])

proc isKeepingAllCompressedBuffers*(_: typedesc[PortableCompressedTexture2D]): bool =
  expandMethodBind(className PortableCompressedTexture2D, "is_keeping_all_compressed_buffers", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(bool)

template sizeOverride*(self: PortableCompressedTexture2D): untyped = self.getSizeOverride()
template `sizeOverride=`*(self: PortableCompressedTexture2D; value) = self.setSizeOverride(value)

template keepCompressedBuffer*(self: PortableCompressedTexture2D): untyped = self.isKeepingCompressedBuffer()
template `keepCompressedBuffer=`*(self: PortableCompressedTexture2D; value) = self.setKeepCompressedBuffer(value)

const PortableCompressedTexture2D_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PortableCompressedTexture2D]): Table[string, string] = PortableCompressedTexture2D_vmap