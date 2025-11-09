{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfont; export gdfont

expandOnClassImported(FontFile, Font)

proc loadBitmapFont*(self: FontFile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "load_bitmap_font", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc loadDynamicFont*(self: FontFile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "load_dynamic_font", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc setData*(self: FontFile; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_data", 2971499966)
  methodbind.ptrcall(self, [getPtr data], void)

proc getData*(self: FontFile): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_data", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setFontName*(self: FontFile; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_font_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc setFontStyleName*(self: FontFile; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_font_style_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc setFontStyle*(self: FontFile; style: set[TextServer_FontStyle]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_font_style", 918070724)
  methodbind.ptrcall(self, [getPtr style], void)

proc setFontWeight*(self: FontFile; weight: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_font_weight", 1286410249)
  methodbind.ptrcall(self, [getPtr weight], void)

proc setFontStretch*(self: FontFile; stretch: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_font_stretch", 1286410249)
  methodbind.ptrcall(self, [getPtr stretch], void)

proc setAntialiasing*(self: FontFile; antialiasing: TextServer_FontAntialiasing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_antialiasing", 1669900)
  methodbind.ptrcall(self, [getPtr antialiasing], void)

proc getAntialiasing*(self: FontFile): TextServer_FontAntialiasing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_antialiasing", 4262718649)
  methodbind.ptrcall(self, [], TextServer_FontAntialiasing)

proc setDisableEmbeddedBitmaps*(self: FontFile; disableEmbeddedBitmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_disable_embedded_bitmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr disableEmbeddedBitmaps], void)

proc getDisableEmbeddedBitmaps*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_disable_embedded_bitmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setGenerateMipmaps*(self: FontFile; generateMipmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_generate_mipmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr generateMipmaps], void)

proc getGenerateMipmaps*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_generate_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMultichannelSignedDistanceField*(self: FontFile; msdf: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_multichannel_signed_distance_field", 2586408642)
  methodbind.ptrcall(self, [getPtr msdf], void)

proc isMultichannelSignedDistanceField*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "is_multichannel_signed_distance_field", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMsdfPixelRange*(self: FontFile; msdfPixelRange: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_msdf_pixel_range", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfPixelRange], void)

proc getMsdfPixelRange*(self: FontFile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_msdf_pixel_range", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMsdfSize*(self: FontFile; msdfSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_msdf_size", 1286410249)
  methodbind.ptrcall(self, [getPtr msdfSize], void)

proc getMsdfSize*(self: FontFile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_msdf_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFixedSize*(self: FontFile; fixedSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_fixed_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fixedSize], void)

proc getFixedSize*(self: FontFile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_fixed_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFixedSizeScaleMode*(self: FontFile; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_fixed_size_scale_mode", 1660989956)
  methodbind.ptrcall(self, [getPtr fixedSizeScaleMode], void)

proc getFixedSizeScaleMode*(self: FontFile): TextServer_FixedSizeScaleMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_fixed_size_scale_mode", 753873478)
  methodbind.ptrcall(self, [], TextServer_FixedSizeScaleMode)

proc setAllowSystemFallback*(self: FontFile; allowSystemFallback: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_allow_system_fallback", 2586408642)
  methodbind.ptrcall(self, [getPtr allowSystemFallback], void)

proc isAllowSystemFallback*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "is_allow_system_fallback", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setForceAutohinter*(self: FontFile; forceAutohinter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_force_autohinter", 2586408642)
  methodbind.ptrcall(self, [getPtr forceAutohinter], void)

proc isForceAutohinter*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "is_force_autohinter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setModulateColorGlyphs*(self: FontFile; modulate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_modulate_color_glyphs", 2586408642)
  methodbind.ptrcall(self, [getPtr modulate], void)

proc isModulateColorGlyphs*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "is_modulate_color_glyphs", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHinting*(self: FontFile; hinting: TextServer_Hinting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_hinting", 1827459492)
  methodbind.ptrcall(self, [getPtr hinting], void)

proc getHinting*(self: FontFile): TextServer_Hinting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_hinting", 3683214614)
  methodbind.ptrcall(self, [], TextServer_Hinting)

proc setSubpixelPositioning*(self: FontFile; subpixelPositioning: TextServer_SubpixelPositioning): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_subpixel_positioning", 4225742182)
  methodbind.ptrcall(self, [getPtr subpixelPositioning], void)

proc getSubpixelPositioning*(self: FontFile): TextServer_SubpixelPositioning =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_subpixel_positioning", 1069238588)
  methodbind.ptrcall(self, [], TextServer_SubpixelPositioning)

proc setKeepRoundingRemainders*(self: FontFile; keepRoundingRemainders: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_keep_rounding_remainders", 2586408642)
  methodbind.ptrcall(self, [getPtr keepRoundingRemainders], void)

proc getKeepRoundingRemainders*(self: FontFile): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_keep_rounding_remainders", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOversampling*(self: FontFile; oversampling: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_oversampling", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling], void)

proc getOversampling*(self: FontFile): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_oversampling", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCacheCount*(self: FontFile): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc clearCache*(self: FontFile): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "clear_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc removeCache*(self: FontFile; cacheIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_cache", 1286410249)
  methodbind.ptrcall(self, [getPtr cacheIndex], void)

proc getSizeCacheList*(self: FontFile; cacheIndex: int32): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_size_cache_list", 663333327)
  methodbind.ptrcall(self, [getPtr cacheIndex], TypedArray[Vector2i])

proc clearSizeCache*(self: FontFile; cacheIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "clear_size_cache", 1286410249)
  methodbind.ptrcall(self, [getPtr cacheIndex], void)

proc removeSizeCache*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_size_cache", 2311374912)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], void)

proc setVariationCoordinates*(self: FontFile; cacheIndex: int32; variationCoordinates: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_variation_coordinates", 64545446)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr variationCoordinates], void)

proc getVariationCoordinates*(self: FontFile; cacheIndex: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_variation_coordinates", 3485342025)
  methodbind.ptrcall(self, [getPtr cacheIndex], Dictionary)

proc setEmbolden*(self: FontFile; cacheIndex: int32; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_embolden", 1602489585)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr strength], void)

proc getEmbolden*(self: FontFile; cacheIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_embolden", 2339986948)
  methodbind.ptrcall(self, [getPtr cacheIndex], Float)

proc setTransform*(self: FontFile; cacheIndex: int32; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_transform", 30160968)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr transform], void)

proc getTransform*(self: FontFile; cacheIndex: int32): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_transform", 3836996910)
  methodbind.ptrcall(self, [getPtr cacheIndex], Transform2D)

proc setExtraSpacing*(self: FontFile; cacheIndex: int32; spacing: TextServer_SpacingType; value: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_extra_spacing", 62942285)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr spacing, getPtr value], void)

proc getExtraSpacing*(self: FontFile; cacheIndex: int32; spacing: TextServer_SpacingType): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_extra_spacing", 1924257185)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr spacing], int64)

proc setExtraBaselineOffset*(self: FontFile; cacheIndex: int32; baselineOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_extra_baseline_offset", 1602489585)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr baselineOffset], void)

proc getExtraBaselineOffset*(self: FontFile; cacheIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_extra_baseline_offset", 2339986948)
  methodbind.ptrcall(self, [getPtr cacheIndex], Float)

proc setFaceIndex*(self: FontFile; cacheIndex: int32; faceIndex: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_face_index", 3937882851)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr faceIndex], void)

proc getFaceIndex*(self: FontFile; cacheIndex: int32): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_face_index", 923996154)
  methodbind.ptrcall(self, [getPtr cacheIndex], int64)

proc setCacheAscent*(self: FontFile; cacheIndex: int32; size: int32; ascent: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_cache_ascent", 3506521499)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr ascent], void)

proc getCacheAscent*(self: FontFile; cacheIndex: int32; size: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_ascent", 3085491603)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], Float)

proc setCacheDescent*(self: FontFile; cacheIndex: int32; size: int32; descent: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_cache_descent", 3506521499)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr descent], void)

proc getCacheDescent*(self: FontFile; cacheIndex: int32; size: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_descent", 3085491603)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], Float)

proc setCacheUnderlinePosition*(self: FontFile; cacheIndex: int32; size: int32; underlinePosition: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_cache_underline_position", 3506521499)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr underlinePosition], void)

proc getCacheUnderlinePosition*(self: FontFile; cacheIndex: int32; size: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_underline_position", 3085491603)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], Float)

proc setCacheUnderlineThickness*(self: FontFile; cacheIndex: int32; size: int32; underlineThickness: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_cache_underline_thickness", 3506521499)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr underlineThickness], void)

proc getCacheUnderlineThickness*(self: FontFile; cacheIndex: int32; size: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_underline_thickness", 3085491603)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], Float)

proc setCacheScale*(self: FontFile; cacheIndex: int32; size: int32; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_cache_scale", 3506521499)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr scale], void)

proc getCacheScale*(self: FontFile; cacheIndex: int32; size: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_cache_scale", 3085491603)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], Float)

proc getTextureCount*(self: FontFile; cacheIndex: int32; size: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_texture_count", 1987661582)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], int32)

proc clearTextures*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "clear_textures", 2311374912)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], void)

proc removeTexture*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_texture", 2328951467)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr textureIndex], void)

proc setTextureImage*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32; image: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_texture_image", 4157974066)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr textureIndex, getPtr image], void)

proc getTextureImage*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_texture_image", 3878418953)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr textureIndex], gdref Image)

proc setTextureOffsets*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32; offset: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_texture_offsets", 2849993437)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr textureIndex, getPtr offset], void)

proc getTextureOffsets*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_texture_offsets", 3703444828)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr textureIndex], PackedInt32Array)

proc getGlyphList*(self: FontFile; cacheIndex: int32; size: Vector2i): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_list", 681709689)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], PackedInt32Array)

proc clearGlyphs*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "clear_glyphs", 2311374912)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], void)

proc removeGlyph*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_glyph", 2328951467)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], void)

proc setGlyphAdvance*(self: FontFile; cacheIndex: int32; size: int32; glyph: int32; advance: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_glyph_advance", 947991729)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr advance], void)

proc getGlyphAdvance*(self: FontFile; cacheIndex: int32; size: int32; glyph: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_advance", 1601573536)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], Vector2)

proc setGlyphOffset*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_glyph_offset", 921719850)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr offset], void)

proc getGlyphOffset*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_offset", 3205412300)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], Vector2)

proc setGlyphSize*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; glSize: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_glyph_size", 921719850)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr glSize], void)

proc getGlyphSize*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_size", 3205412300)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], Vector2)

proc setGlyphUvRect*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; uvRect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_glyph_uv_rect", 3821620992)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr uvRect], void)

proc getGlyphUvRect*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_uv_rect", 3927917900)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], Rect2)

proc setGlyphTextureIdx*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; textureIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_glyph_texture_idx", 355564111)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr textureIdx], void)

proc getGlyphTextureIdx*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_texture_idx", 1629411054)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyph], int32)

proc getKerningList*(self: FontFile; cacheIndex: int32; size: int32): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_kerning_list", 2345056839)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], TypedArray[Vector2i])

proc clearKerningMap*(self: FontFile; cacheIndex: int32; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "clear_kerning_map", 3937882851)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size], void)

proc removeKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_kerning", 3930204747)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyphPair], void)

proc setKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i; kerning: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_kerning", 3182200918)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyphPair, getPtr kerning], void)

proc getKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_kerning", 1611912865)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr glyphPair], Vector2)

proc renderRange*(self: FontFile; cacheIndex: int32; size: Vector2i; start: char32; `end`: char32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "render_range", 355564111)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr start, getPtr `end`], void)

proc renderGlyph*(self: FontFile; cacheIndex: int32; size: Vector2i; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "render_glyph", 2328951467)
  methodbind.ptrcall(self, [getPtr cacheIndex, getPtr size, getPtr index], void)

proc setLanguageSupportOverride*(self: FontFile; language: String; supported: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_language_support_override", 2678287736)
  methodbind.ptrcall(self, [getPtr language, getPtr supported], void)

proc getLanguageSupportOverride*(self: FontFile; language: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_language_support_override", 3927539163)
  methodbind.ptrcall(self, [getPtr language], bool)

proc removeLanguageSupportOverride*(self: FontFile; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_language_support_override", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguageSupportOverrides*(self: FontFile): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_language_support_overrides", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setScriptSupportOverride*(self: FontFile; script: String; supported: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_script_support_override", 2678287736)
  methodbind.ptrcall(self, [getPtr script, getPtr supported], void)

proc getScriptSupportOverride*(self: FontFile; script: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_script_support_override", 3927539163)
  methodbind.ptrcall(self, [getPtr script], bool)

proc removeScriptSupportOverride*(self: FontFile; script: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "remove_script_support_override", 83702148)
  methodbind.ptrcall(self, [getPtr script], void)

proc getScriptSupportOverrides*(self: FontFile): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_script_support_overrides", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setOpentypeFeatureOverrides*(self: FontFile; overrides: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "set_opentype_feature_overrides", 4155329257)
  methodbind.ptrcall(self, [getPtr overrides], void)

proc getOpentypeFeatureOverrides*(self: FontFile): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_opentype_feature_overrides", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getGlyphIndex*(self: FontFile; size: int32; char: char32; variationSelector: char32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_glyph_index", 864943070)
  methodbind.ptrcall(self, [getPtr size, getPtr char, getPtr variationSelector], int32)

proc getCharFromGlyphIndex*(self: FontFile; size: int32; glyphIndex: int32): char32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontFile, "get_char_from_glyph_index", 3175239445)
  methodbind.ptrcall(self, [getPtr size, getPtr glyphIndex], char32)

template data*(self: FontFile): untyped = self.getData()
template `data=`*(self: FontFile; value) = self.setData(value)

template generateMipmaps*(self: FontFile): untyped = self.getGenerateMipmaps()
template `generateMipmaps=`*(self: FontFile; value) = self.setGenerateMipmaps(value)

template disableEmbeddedBitmaps*(self: FontFile): untyped = self.getDisableEmbeddedBitmaps()
template `disableEmbeddedBitmaps=`*(self: FontFile; value) = self.setDisableEmbeddedBitmaps(value)

template antialiasing*(self: FontFile): untyped = self.getAntialiasing()
template `antialiasing=`*(self: FontFile; value) = self.setAntialiasing(value)

template fontName*(self: FontFile): untyped = self.getFontName()
template `fontName=`*(self: FontFile; value) = self.setFontName(value)

template styleName*(self: FontFile): untyped = self.getFontStyleName()
template `styleName=`*(self: FontFile; value) = self.setFontStyleName(value)

template fontStyle*(self: FontFile): untyped = self.getFontStyle()
template `fontStyle=`*(self: FontFile; value) = self.setFontStyle(value)

template fontWeight*(self: FontFile): untyped = self.getFontWeight()
template `fontWeight=`*(self: FontFile; value) = self.setFontWeight(value)

template fontStretch*(self: FontFile): untyped = self.getFontStretch()
template `fontStretch=`*(self: FontFile; value) = self.setFontStretch(value)

template subpixelPositioning*(self: FontFile): untyped = self.getSubpixelPositioning()
template `subpixelPositioning=`*(self: FontFile; value) = self.setSubpixelPositioning(value)

template keepRoundingRemainders*(self: FontFile): untyped = self.getKeepRoundingRemainders()
template `keepRoundingRemainders=`*(self: FontFile; value) = self.setKeepRoundingRemainders(value)

template multichannelSignedDistanceField*(self: FontFile): untyped = self.isMultichannelSignedDistanceField()
template `multichannelSignedDistanceField=`*(self: FontFile; value) = self.setMultichannelSignedDistanceField(value)

template msdfPixelRange*(self: FontFile): untyped = self.getMsdfPixelRange()
template `msdfPixelRange=`*(self: FontFile; value) = self.setMsdfPixelRange(value)

template msdfSize*(self: FontFile): untyped = self.getMsdfSize()
template `msdfSize=`*(self: FontFile; value) = self.setMsdfSize(value)

template allowSystemFallback*(self: FontFile): untyped = self.isAllowSystemFallback()
template `allowSystemFallback=`*(self: FontFile; value) = self.setAllowSystemFallback(value)

template forceAutohinter*(self: FontFile): untyped = self.isForceAutohinter()
template `forceAutohinter=`*(self: FontFile; value) = self.setForceAutohinter(value)

template modulateColorGlyphs*(self: FontFile): untyped = self.isModulateColorGlyphs()
template `modulateColorGlyphs=`*(self: FontFile; value) = self.setModulateColorGlyphs(value)

template hinting*(self: FontFile): untyped = self.getHinting()
template `hinting=`*(self: FontFile; value) = self.setHinting(value)

template fixedSize*(self: FontFile): untyped = self.getFixedSize()
template `fixedSize=`*(self: FontFile; value) = self.setFixedSize(value)

template fixedSizeScaleMode*(self: FontFile): untyped = self.getFixedSizeScaleMode()
template `fixedSizeScaleMode=`*(self: FontFile; value) = self.setFixedSizeScaleMode(value)

template opentypeFeatureOverrides*(self: FontFile): untyped = self.getOpentypeFeatureOverrides()
template `opentypeFeatureOverrides=`*(self: FontFile; value) = self.setOpentypeFeatureOverrides(value)

template oversampling*(self: FontFile): untyped = self.getOversampling()
template `oversampling=`*(self: FontFile; value) = self.setOversampling(value)
