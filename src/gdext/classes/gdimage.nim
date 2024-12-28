{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getWidth*(self: Image): int32 =
  expandMethodBind(className Image, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getHeight*(self: Image): int32 =
  expandMethodBind(className Image, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSize*(self: Image): Vector2i =
  expandMethodBind(className Image, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc hasMipmaps*(self: Image): bool =
  expandMethodBind(className Image, "has_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getFormat*(self: Image): Image_Format =
  expandMethodBind(className Image, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_Format)

proc getData*(self: Image): PackedByteArray =
  expandMethodBind(className Image, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getDataSize*(self: Image): int64 =
  expandMethodBind(className Image, "get_data_size", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc convert*(self: Image; format: Image_Format): void =
  expandMethodBind(className Image, "convert", 2120693146)
  methodbind.ptrcall(self, [getPtr format])

proc getMipmapCount*(self: Image): int32 =
  expandMethodBind(className Image, "get_mipmap_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getMipmapOffset*(self: Image; mipmap: int32): int64 =
  expandMethodBind(className Image, "get_mipmap_offset", 923996154)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr mipmap], addr ret)
  (addr ret).decode_result(int64)

proc resizeToPo2*(self: Image; square: bool = false; interpolation: Image_Interpolation = interpolateBilinear): void =
  expandMethodBind(className Image, "resize_to_po2", 4189212329)
  methodbind.ptrcall(self, [getPtr square, getPtr interpolation])

proc resize*(self: Image; width: int32; height: int32; interpolation: Image_Interpolation = interpolateBilinear): void =
  expandMethodBind(className Image, "resize", 994498151)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr interpolation])

proc shrinkX2*(self: Image): void =
  expandMethodBind(className Image, "shrink_x2", 3218959716)
  methodbind.ptrcall(self, [])

proc crop*(self: Image; width: int32; height: int32): void =
  expandMethodBind(className Image, "crop", 3937882851)
  methodbind.ptrcall(self, [getPtr width, getPtr height])

proc flipX*(self: Image): void =
  expandMethodBind(className Image, "flip_x", 3218959716)
  methodbind.ptrcall(self, [])

proc flipY*(self: Image): void =
  expandMethodBind(className Image, "flip_y", 3218959716)
  methodbind.ptrcall(self, [])

proc generateMipmaps*(self: Image; renormalize: bool = false): Error =
  expandMethodBind(className Image, "generate_mipmaps", 1633102583)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr renormalize], addr ret)
  (addr ret).decode_result(Error)

proc clearMipmaps*(self: Image): void =
  expandMethodBind(className Image, "clear_mipmaps", 3218959716)
  methodbind.ptrcall(self, [])

proc create*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format): gdref Image =
  expandMethodBind(className Image, "create", 986942177)
  var ret: encoded gdref Image
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format], addr ret)
  (addr ret).decode_result(gdref Image)

proc createEmpty*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format): gdref Image =
  expandMethodBind(className Image, "create_empty", 986942177)
  var ret: encoded gdref Image
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format], addr ret)
  (addr ret).decode_result(gdref Image)

proc createFromData*(_: typedesc[Image]; width: int32; height: int32; useMipmaps: bool; format: Image_Format; data: PackedByteArray): gdref Image =
  expandMethodBind(className Image, "create_from_data", 299398494)
  var ret: encoded gdref Image
  methodbind.ptrcall([getPtr width, getPtr height, getPtr useMipmaps, getPtr format, getPtr data], addr ret)
  (addr ret).decode_result(gdref Image)

proc setData*(self: Image; width: int32; height: int32; useMipmaps: bool; format: Image_Format; data: PackedByteArray): void =
  expandMethodBind(className Image, "set_data", 2740482212)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr useMipmaps, getPtr format, getPtr data])

proc isEmpty*(self: Image): bool =
  expandMethodBind(className Image, "is_empty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc load*(self: Image; path: String): Error =
  expandMethodBind(className Image, "load", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc loadFromFile*(_: typedesc[Image]; path: String): gdref Image =
  expandMethodBind(className Image, "load_from_file", 736337515)
  var ret: encoded gdref Image
  methodbind.ptrcall([getPtr path], addr ret)
  (addr ret).decode_result(gdref Image)

proc savePng*(self: Image; path: String): Error =
  expandMethodBind(className Image, "save_png", 2113323047)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc savePngToBuffer*(self: Image): PackedByteArray =
  expandMethodBind(className Image, "save_png_to_buffer", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc saveJpg*(self: Image; path: String; quality: Float = 0.75): Error =
  expandMethodBind(className Image, "save_jpg", 2800019068)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr quality], addr ret)
  (addr ret).decode_result(Error)

proc saveJpgToBuffer*(self: Image; quality: Float = 0.75): PackedByteArray =
  expandMethodBind(className Image, "save_jpg_to_buffer", 592235273)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr quality], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc saveExr*(self: Image; path: String; grayscale: bool = false): Error =
  expandMethodBind(className Image, "save_exr", 3108122999)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr grayscale], addr ret)
  (addr ret).decode_result(Error)

proc saveExrToBuffer*(self: Image; grayscale: bool = false): PackedByteArray =
  expandMethodBind(className Image, "save_exr_to_buffer", 3178917920)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr grayscale], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc saveWebp*(self: Image; path: String; lossy: bool = false; quality: Float = 0.75): Error =
  expandMethodBind(className Image, "save_webp", 2781156876)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr lossy, getPtr quality], addr ret)
  (addr ret).decode_result(Error)

proc saveWebpToBuffer*(self: Image; lossy: bool = false; quality: Float = 0.75): PackedByteArray =
  expandMethodBind(className Image, "save_webp_to_buffer", 1214628238)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr lossy, getPtr quality], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc detectAlpha*(self: Image): Image_AlphaMode =
  expandMethodBind(className Image, "detect_alpha", 2030116505)
  var ret: encoded Image_AlphaMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_AlphaMode)

proc isInvisible*(self: Image): bool =
  expandMethodBind(className Image, "is_invisible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc detectUsedChannels*(self: Image; source: Image_CompressSource = compressSourceGeneric): Image_UsedChannels =
  expandMethodBind(className Image, "detect_used_channels", 2703139984)
  var ret: encoded Image_UsedChannels
  methodbind.ptrcall(self, [getPtr source], addr ret)
  (addr ret).decode_result(Image_UsedChannels)

proc compress*(self: Image; mode: Image_CompressMode; source: Image_CompressSource = compressSourceGeneric; astcFormat: Image_ASTCFormat = astcFormat4X4): Error =
  expandMethodBind(className Image, "compress", 2975424957)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr mode, getPtr source, getPtr astcFormat], addr ret)
  (addr ret).decode_result(Error)

proc compressFromChannels*(self: Image; mode: Image_CompressMode; channels: Image_UsedChannels; astcFormat: Image_ASTCFormat = astcFormat4X4): Error =
  expandMethodBind(className Image, "compress_from_channels", 4212890953)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr mode, getPtr channels, getPtr astcFormat], addr ret)
  (addr ret).decode_result(Error)

proc decompress*(self: Image): Error =
  expandMethodBind(className Image, "decompress", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc isCompressed*(self: Image): bool =
  expandMethodBind(className Image, "is_compressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc rotate90*(self: Image; direction: ClockDirection): void =
  expandMethodBind(className Image, "rotate_90", 1901204267)
  methodbind.ptrcall(self, [getPtr direction])

proc rotate180*(self: Image): void =
  expandMethodBind(className Image, "rotate_180", 3218959716)
  methodbind.ptrcall(self, [])

proc fixAlphaEdges*(self: Image): void =
  expandMethodBind(className Image, "fix_alpha_edges", 3218959716)
  methodbind.ptrcall(self, [])

proc premultiplyAlpha*(self: Image): void =
  expandMethodBind(className Image, "premultiply_alpha", 3218959716)
  methodbind.ptrcall(self, [])

proc srgbToLinear*(self: Image): void =
  expandMethodBind(className Image, "srgb_to_linear", 3218959716)
  methodbind.ptrcall(self, [])

proc normalMapToXy*(self: Image): void =
  expandMethodBind(className Image, "normal_map_to_xy", 3218959716)
  methodbind.ptrcall(self, [])

proc rgbeToSrgb*(self: Image): gdref Image =
  expandMethodBind(className Image, "rgbe_to_srgb", 564927088)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc bumpMapToNormalMap*(self: Image; bumpScale: Float = 1.0): void =
  expandMethodBind(className Image, "bump_map_to_normal_map", 3423495036)
  methodbind.ptrcall(self, [getPtr bumpScale])

proc computeImageMetrics*(self: Image; comparedImage: gdref Image; useLuma: bool): Dictionary =
  expandMethodBind(className Image, "compute_image_metrics", 3080961247)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr comparedImage, getPtr useLuma], addr ret)
  (addr ret).decode_result(Dictionary)

proc blitRect*(self: Image; src: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  expandMethodBind(className Image, "blit_rect", 2903928755)
  methodbind.ptrcall(self, [getPtr src, getPtr srcRect, getPtr dst])

proc blitRectMask*(self: Image; src: gdref Image; mask: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  expandMethodBind(className Image, "blit_rect_mask", 3383581145)
  methodbind.ptrcall(self, [getPtr src, getPtr mask, getPtr srcRect, getPtr dst])

proc blendRect*(self: Image; src: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  expandMethodBind(className Image, "blend_rect", 2903928755)
  methodbind.ptrcall(self, [getPtr src, getPtr srcRect, getPtr dst])

proc blendRectMask*(self: Image; src: gdref Image; mask: gdref Image; srcRect: Rect2i; dst: Vector2i): void =
  expandMethodBind(className Image, "blend_rect_mask", 3383581145)
  methodbind.ptrcall(self, [getPtr src, getPtr mask, getPtr srcRect, getPtr dst])

proc fill*(self: Image; color: Color): void =
  expandMethodBind(className Image, "fill", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc fillRect*(self: Image; rect: Rect2i; color: Color): void =
  expandMethodBind(className Image, "fill_rect", 514693913)
  methodbind.ptrcall(self, [getPtr rect, getPtr color])

proc getUsedRect*(self: Image): Rect2i =
  expandMethodBind(className Image, "get_used_rect", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2i)

proc getRegion*(self: Image; region: Rect2i): gdref Image =
  expandMethodBind(className Image, "get_region", 2601441065)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr region], addr ret)
  (addr ret).decode_result(gdref Image)

proc copyFrom*(self: Image; src: gdref Image): void =
  expandMethodBind(className Image, "copy_from", 532598488)
  methodbind.ptrcall(self, [getPtr src])

proc getPixelv*(self: Image; point: Vector2i): Color =
  expandMethodBind(className Image, "get_pixelv", 1532707496)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(Color)

proc getPixel*(self: Image; x: int32; y: int32): Color =
  expandMethodBind(className Image, "get_pixel", 2165839948)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr x, getPtr y], addr ret)
  (addr ret).decode_result(Color)

proc setPixelv*(self: Image; point: Vector2i; color: Color): void =
  expandMethodBind(className Image, "set_pixelv", 287851464)
  methodbind.ptrcall(self, [getPtr point, getPtr color])

proc setPixel*(self: Image; x: int32; y: int32; color: Color): void =
  expandMethodBind(className Image, "set_pixel", 3733378741)
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr color])

proc adjustBcs*(self: Image; brightness: Float; contrast: Float; saturation: Float): void =
  expandMethodBind(className Image, "adjust_bcs", 2385087082)
  methodbind.ptrcall(self, [getPtr brightness, getPtr contrast, getPtr saturation])

proc loadPngFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_png_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadJpgFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_jpg_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadWebpFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_webp_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadTgaFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_tga_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadBmpFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_bmp_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadKtxFromBuffer*(self: Image; buffer: PackedByteArray): Error =
  expandMethodBind(className Image, "load_ktx_from_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

proc loadSvgFromBuffer*(self: Image; buffer: PackedByteArray; scale: Float = 1.0): Error =
  expandMethodBind(className Image, "load_svg_from_buffer", 311853421)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer, getPtr scale], addr ret)
  (addr ret).decode_result(Error)

proc loadSvgFromString*(self: Image; svgStr: String; scale: Float = 1.0): Error =
  expandMethodBind(className Image, "load_svg_from_string", 3254053600)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr svgStr, getPtr scale], addr ret)
  (addr ret).decode_result(Error)

template data*(self: Image): untyped = self.getData()
template `data=`*(self: Image; value) = self.setData(value)

const Image_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Image]): Table[string, string] = Image_vmap