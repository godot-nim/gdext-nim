{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Image, Resource)

const MaxWidth* = 16777216
const MaxHeight* = 16777216

proc getWidth*(self: Image): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getHeight*(self: Image): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSize*(self: Image): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc hasMipmaps*(self: Image): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "has_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFormat*(self: Image): Image_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_format", 3847873762)
  methodbind.ptrcall(self, [], Image_Format)

proc getData*(self: Image): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_data", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc getDataSize*(self: Image): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_data_size", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc convert*(self: Image; format: Image_Format): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "convert", 2120693146)
  methodbind.ptrcall(self, [getPtr format], void)

proc getMipmapCount*(self: Image): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_mipmap_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getMipmapOffset*(self: Image; mipmap: int32): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_mipmap_offset", 923996154)
  methodbind.ptrcall(self, [getPtr mipmap], int64)

proc resizeToPo2*(self: Image; square: bool = false; interpolation: Image_Interpolation = interpolateBilinear): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "resize_to_po2", 4189212329)
  methodbind.ptrcall(self, [getPtr square, getPtr interpolation], void)

proc resize*(self: Image; width: int32; height: int32; interpolation: Image_Interpolation = interpolateBilinear): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "resize", 994498151)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr interpolation], void)

proc shrinkX2*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "shrink_x2", 3218959716)
  methodbind.ptrcall(self, [], void)

proc crop*(self: Image; width: int32; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "crop", 3937882851)
  methodbind.ptrcall(self, [getPtr width, getPtr height], void)

proc flipX*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "flip_x", 3218959716)
  methodbind.ptrcall(self, [], void)

proc flipY*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "flip_y", 3218959716)
  methodbind.ptrcall(self, [], void)

proc generateMipmaps*(self: Image; renormalize: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "generate_mipmaps", 1633102583)
  methodbind.ptrcall(self, [getPtr renormalize], Error)

proc clearMipmaps*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "clear_mipmaps", 3218959716)
  methodbind.ptrcall(self, [], void)

proc create*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "create", 986942177)
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format], gdref Image)

proc createEmpty*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "create_empty", 986942177)
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format], gdref Image)

proc createFromData*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format; data: PackedByteArray): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "create_from_data", 299398494)
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format, getPtr data], gdref Image)

proc setData*(self: Image; width: int32; height: int32; useMipmaps: bool; format: Image_Format; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "set_data", 2740482212)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr useMipmaps, getPtr format, getPtr data], void)

proc isEmpty*(self: Image): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "is_empty", 36873697)
  methodbind.ptrcall(self, [], bool)

proc load*(self: Image; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc loadFromFile*(_: typedesc[Image]; path: String): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_from_file", 736337515)
  methodbind.ptrcall([getPtr path], gdref Image)

proc savePng*(self: Image; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_png", 2113323047)
  methodbind.ptrcall(self, [getPtr path], Error)

proc savePngToBuffer*(self: Image): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_png_to_buffer", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc saveJpg*(self: Image; path: String; quality: Float = 0.75): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_jpg", 2800019068)
  methodbind.ptrcall(self, [getPtr path, getPtr quality], Error)

proc saveJpgToBuffer*(self: Image; quality: Float = 0.75): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_jpg_to_buffer", 592235273)
  methodbind.ptrcall(self, [getPtr quality], PackedByteArray)

proc saveExr*(self: Image; path: String; grayscale: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_exr", 3108122999)
  methodbind.ptrcall(self, [getPtr path, getPtr grayscale], Error)

proc saveExrToBuffer*(self: Image; grayscale: bool = false): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_exr_to_buffer", 3178917920)
  methodbind.ptrcall(self, [getPtr grayscale], PackedByteArray)

proc saveDds*(self: Image; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_dds", 2113323047)
  methodbind.ptrcall(self, [getPtr path], Error)

proc saveDdsToBuffer*(self: Image): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_dds_to_buffer", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc saveWebp*(self: Image; path: String; lossy: bool = false; quality: Float = 0.75): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_webp", 2781156876)
  methodbind.ptrcall(self, [getPtr path, getPtr lossy, getPtr quality], Error)

proc saveWebpToBuffer*(self: Image; lossy: bool = false; quality: Float = 0.75): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "save_webp_to_buffer", 1214628238)
  methodbind.ptrcall(self, [getPtr lossy, getPtr quality], PackedByteArray)

proc detectAlpha*(self: Image): Image_AlphaMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "detect_alpha", 2030116505)
  methodbind.ptrcall(self, [], Image_AlphaMode)

proc isInvisible*(self: Image): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "is_invisible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc detectUsedChannels*(self: Image; source: Image_CompressSource = compressSourceGeneric): Image_UsedChannels =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "detect_used_channels", 2703139984)
  methodbind.ptrcall(self, [getPtr source], Image_UsedChannels)

proc compress*(self: Image; mode: Image_CompressMode; source: Image_CompressSource = compressSourceGeneric; astcFormat: Image_ASTCFormat = astcFormat4X4): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "compress", 2975424957)
  methodbind.ptrcall(self, [getPtr mode, getPtr source, getPtr astcFormat], Error)

proc compressFromChannels*(self: Image; mode: Image_CompressMode; channels: Image_UsedChannels; astcFormat: Image_ASTCFormat = astcFormat4X4): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "compress_from_channels", 4212890953)
  methodbind.ptrcall(self, [getPtr mode, getPtr channels, getPtr astcFormat], Error)

proc decompress*(self: Image): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "decompress", 166280745)
  methodbind.ptrcall(self, [], Error)

proc isCompressed*(self: Image): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "is_compressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc rotate90*(self: Image; direction: ClockDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "rotate_90", 1901204267)
  methodbind.ptrcall(self, [getPtr direction], void)

proc rotate180*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "rotate_180", 3218959716)
  methodbind.ptrcall(self, [], void)

proc fixAlphaEdges*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "fix_alpha_edges", 3218959716)
  methodbind.ptrcall(self, [], void)

proc premultiplyAlpha*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "premultiply_alpha", 3218959716)
  methodbind.ptrcall(self, [], void)

proc srgbToLinear*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "srgb_to_linear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc linearToSrgb*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "linear_to_srgb", 3218959716)
  methodbind.ptrcall(self, [], void)

proc normalMapToXy*(self: Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "normal_map_to_xy", 3218959716)
  methodbind.ptrcall(self, [], void)

proc rgbeToSrgb*(self: Image): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "rgbe_to_srgb", 564927088)
  methodbind.ptrcall(self, [], gdref Image)

proc bumpMapToNormalMap*(self: Image; bumpScale: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "bump_map_to_normal_map", 3423495036)
  methodbind.ptrcall(self, [getPtr bumpScale], void)

proc computeImageMetrics*(self: Image; comparedImage: gdref Image; useLuma: bool): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "compute_image_metrics", 3080961247)
  methodbind.ptrcall(self, [getPtr comparedImage, getPtr useLuma], Dictionary)

proc blitRect*(self: Image; src: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "blit_rect", 2903928755)
  methodbind.ptrcall(self, [getPtr src, getPtr srcRect, getPtr dst], void)

proc blitRectMask*(self: Image; src: gdref Image; mask: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "blit_rect_mask", 3383581145)
  methodbind.ptrcall(self, [getPtr src, getPtr mask, getPtr srcRect, getPtr dst], void)

proc blendRect*(self: Image; src: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "blend_rect", 2903928755)
  methodbind.ptrcall(self, [getPtr src, getPtr srcRect, getPtr dst], void)

proc blendRectMask*(self: Image; src: gdref Image; mask: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "blend_rect_mask", 3383581145)
  methodbind.ptrcall(self, [getPtr src, getPtr mask, getPtr srcRect, getPtr dst], void)

proc fill*(self: Image; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "fill", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc fillRect*(self: Image; rect: Rect2i; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "fill_rect", 514693913)
  methodbind.ptrcall(self, [getPtr rect, getPtr color], void)

proc getUsedRect*(self: Image): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_used_rect", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc getRegion*(self: Image; region: Rect2i): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_region", 2601441065)
  methodbind.ptrcall(self, [getPtr region], gdref Image)

proc copyFrom*(self: Image; src: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "copy_from", 532598488)
  methodbind.ptrcall(self, [getPtr src], void)

proc getPixelv*(self: Image; point: Vector2i): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_pixelv", 1532707496)
  methodbind.ptrcall(self, [getPtr point], Color)

proc getPixel*(self: Image; x: int32; y: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "get_pixel", 2165839948)
  methodbind.ptrcall(self, [getPtr x, getPtr y], Color)

proc setPixelv*(self: Image; point: Vector2i; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "set_pixelv", 287851464)
  methodbind.ptrcall(self, [getPtr point, getPtr color], void)

proc setPixel*(self: Image; x: int32; y: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "set_pixel", 3733378741)
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr color], void)

proc adjustBcs*(self: Image; brightness: Float; contrast: Float; saturation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "adjust_bcs", 2385087082)
  methodbind.ptrcall(self, [getPtr brightness, getPtr contrast, getPtr saturation], void)

proc loadPngFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_png_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadJpgFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_jpg_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadWebpFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_webp_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadTgaFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_tga_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadBmpFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_bmp_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadKtxFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_ktx_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadDdsFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_dds_from_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)

proc loadSvgFromBuffer*(self: Image; buffer: PackedByteArray; scale: Float = 1.0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_svg_from_buffer", 311853421)
  methodbind.ptrcall(self, [getPtr buffer, getPtr scale], Error)

proc loadSvgFromString*(self: Image; svgStr: String; scale: Float = 1.0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Image, "load_svg_from_string", 3254053600)
  methodbind.ptrcall(self, [getPtr svgStr, getPtr scale], Error)

template data*(self: Image): untyped = self.getData()
template `data=`*(self: Image; value) = self.setData(value)
