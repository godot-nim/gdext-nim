{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdfont; export gdfont

proc loadBitmapFont*(self: FontFile; path: String): Error =
  expandMethodBind(className FontFile, "load_bitmap_font", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc loadDynamicFont*(self: FontFile; path: String): Error =
  expandMethodBind(className FontFile, "load_dynamic_font", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setData*(self: FontFile; data: PackedByteArray): void =
  expandMethodBind(className FontFile, "set_data", 2971499966)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getData*(self: FontFile): PackedByteArray =
  expandMethodBind(className FontFile, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setFontName*(self: FontFile; name: String): void =
  expandMethodBind(className FontFile, "set_font_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontStyleName*(self: FontFile; name: String): void =
  expandMethodBind(className FontFile, "set_font_style_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontStyle*(self: FontFile; style: set[TextServer_FontStyle]): void =
  expandMethodBind(className FontFile, "set_font_style", 918070724)
  var `?param` = [getPtr style]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontWeight*(self: FontFile; weight: int32): void =
  expandMethodBind(className FontFile, "set_font_weight", 1286410249)
  var `?param` = [getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFontStretch*(self: FontFile; stretch: int32): void =
  expandMethodBind(className FontFile, "set_font_stretch", 1286410249)
  var `?param` = [getPtr stretch]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAntialiasing*(self: FontFile; antialiasing: TextServer_FontAntialiasing): void =
  expandMethodBind(className FontFile, "set_antialiasing", 1669900)
  var `?param` = [getPtr antialiasing]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAntialiasing*(self: FontFile): TextServer_FontAntialiasing =
  expandMethodBind(className FontFile, "get_antialiasing", 4262718649)
  var ret: encoded TextServer_FontAntialiasing
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_FontAntialiasing)

proc setDisableEmbeddedBitmaps*(self: FontFile; disableEmbeddedBitmaps: bool): void =
  expandMethodBind(className FontFile, "set_disable_embedded_bitmaps", 2586408642)
  var `?param` = [getPtr disableEmbeddedBitmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisableEmbeddedBitmaps*(self: FontFile): bool =
  expandMethodBind(className FontFile, "get_disable_embedded_bitmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setGenerateMipmaps*(self: FontFile; generateMipmaps: bool): void =
  expandMethodBind(className FontFile, "set_generate_mipmaps", 2586408642)
  var `?param` = [getPtr generateMipmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGenerateMipmaps*(self: FontFile): bool =
  expandMethodBind(className FontFile, "get_generate_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMultichannelSignedDistanceField*(self: FontFile; msdf: bool): void =
  expandMethodBind(className FontFile, "set_multichannel_signed_distance_field", 2586408642)
  var `?param` = [getPtr msdf]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMultichannelSignedDistanceField*(self: FontFile): bool =
  expandMethodBind(className FontFile, "is_multichannel_signed_distance_field", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMsdfPixelRange*(self: FontFile; msdfPixelRange: int32): void =
  expandMethodBind(className FontFile, "set_msdf_pixel_range", 1286410249)
  var `?param` = [getPtr msdfPixelRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsdfPixelRange*(self: FontFile): int32 =
  expandMethodBind(className FontFile, "get_msdf_pixel_range", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMsdfSize*(self: FontFile; msdfSize: int32): void =
  expandMethodBind(className FontFile, "set_msdf_size", 1286410249)
  var `?param` = [getPtr msdfSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMsdfSize*(self: FontFile): int32 =
  expandMethodBind(className FontFile, "get_msdf_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFixedSize*(self: FontFile; fixedSize: int32): void =
  expandMethodBind(className FontFile, "set_fixed_size", 1286410249)
  var `?param` = [getPtr fixedSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFixedSize*(self: FontFile): int32 =
  expandMethodBind(className FontFile, "get_fixed_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFixedSizeScaleMode*(self: FontFile; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void =
  expandMethodBind(className FontFile, "set_fixed_size_scale_mode", 1660989956)
  var `?param` = [getPtr fixedSizeScaleMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFixedSizeScaleMode*(self: FontFile): TextServer_FixedSizeScaleMode =
  expandMethodBind(className FontFile, "get_fixed_size_scale_mode", 753873478)
  var ret: encoded TextServer_FixedSizeScaleMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_FixedSizeScaleMode)

proc setAllowSystemFallback*(self: FontFile; allowSystemFallback: bool): void =
  expandMethodBind(className FontFile, "set_allow_system_fallback", 2586408642)
  var `?param` = [getPtr allowSystemFallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAllowSystemFallback*(self: FontFile): bool =
  expandMethodBind(className FontFile, "is_allow_system_fallback", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setForceAutohinter*(self: FontFile; forceAutohinter: bool): void =
  expandMethodBind(className FontFile, "set_force_autohinter", 2586408642)
  var `?param` = [getPtr forceAutohinter]
  methodbind.ptrcall(self, addr `?param`[0])

proc isForceAutohinter*(self: FontFile): bool =
  expandMethodBind(className FontFile, "is_force_autohinter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHinting*(self: FontFile; hinting: TextServer_Hinting): void =
  expandMethodBind(className FontFile, "set_hinting", 1827459492)
  var `?param` = [getPtr hinting]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHinting*(self: FontFile): TextServer_Hinting =
  expandMethodBind(className FontFile, "get_hinting", 3683214614)
  var ret: encoded TextServer_Hinting
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_Hinting)

proc setSubpixelPositioning*(self: FontFile; subpixelPositioning: TextServer_SubpixelPositioning): void =
  expandMethodBind(className FontFile, "set_subpixel_positioning", 4225742182)
  var `?param` = [getPtr subpixelPositioning]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubpixelPositioning*(self: FontFile): TextServer_SubpixelPositioning =
  expandMethodBind(className FontFile, "get_subpixel_positioning", 1069238588)
  var ret: encoded TextServer_SubpixelPositioning
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_SubpixelPositioning)

proc setOversampling*(self: FontFile; oversampling: Float): void =
  expandMethodBind(className FontFile, "set_oversampling", 373806689)
  var `?param` = [getPtr oversampling]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOversampling*(self: FontFile): Float =
  expandMethodBind(className FontFile, "get_oversampling", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getCacheCount*(self: FontFile): int32 =
  expandMethodBind(className FontFile, "get_cache_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc clearCache*(self: FontFile): void =
  expandMethodBind(className FontFile, "clear_cache", 3218959716)
  methodbind.ptrcall(self, nil)

proc removeCache*(self: FontFile; cacheIndex: int32): void =
  expandMethodBind(className FontFile, "remove_cache", 1286410249)
  var `?param` = [getPtr cacheIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSizeCacheList*(self: FontFile; cacheIndex: int32): TypedArray[Vector2i] =
  expandMethodBind(className FontFile, "get_size_cache_list", 663333327)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc clearSizeCache*(self: FontFile; cacheIndex: int32): void =
  expandMethodBind(className FontFile, "clear_size_cache", 1286410249)
  var `?param` = [getPtr cacheIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeSizeCache*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  expandMethodBind(className FontFile, "remove_size_cache", 2311374912)
  var `?param` = [getPtr cacheIndex, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVariationCoordinates*(self: FontFile; cacheIndex: int32; variationCoordinates: Dictionary): void =
  expandMethodBind(className FontFile, "set_variation_coordinates", 64545446)
  var `?param` = [getPtr cacheIndex, getPtr variationCoordinates]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVariationCoordinates*(self: FontFile; cacheIndex: int32): Dictionary =
  expandMethodBind(className FontFile, "get_variation_coordinates", 3485342025)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc setEmbolden*(self: FontFile; cacheIndex: int32; strength: Float): void =
  expandMethodBind(className FontFile, "set_embolden", 1602489585)
  var `?param` = [getPtr cacheIndex, getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmbolden*(self: FontFile; cacheIndex: int32): Float =
  expandMethodBind(className FontFile, "get_embolden", 2339986948)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setTransform*(self: FontFile; cacheIndex: int32; transform: Transform2D): void =
  expandMethodBind(className FontFile, "set_transform", 30160968)
  var `?param` = [getPtr cacheIndex, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: FontFile; cacheIndex: int32): Transform2D =
  expandMethodBind(className FontFile, "get_transform", 3836996910)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc setExtraSpacing*(self: FontFile; cacheIndex: int32; spacing: TextServer_SpacingType; value: int64): void =
  expandMethodBind(className FontFile, "set_extra_spacing", 62942285)
  var `?param` = [getPtr cacheIndex, getPtr spacing, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExtraSpacing*(self: FontFile; cacheIndex: int32; spacing: TextServer_SpacingType): int64 =
  expandMethodBind(className FontFile, "get_extra_spacing", 1924257185)
  var `?param` = [getPtr cacheIndex, getPtr spacing]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc setExtraBaselineOffset*(self: FontFile; cacheIndex: int32; baselineOffset: Float): void =
  expandMethodBind(className FontFile, "set_extra_baseline_offset", 1602489585)
  var `?param` = [getPtr cacheIndex, getPtr baselineOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExtraBaselineOffset*(self: FontFile; cacheIndex: int32): Float =
  expandMethodBind(className FontFile, "get_extra_baseline_offset", 2339986948)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setFaceIndex*(self: FontFile; cacheIndex: int32; faceIndex: int64): void =
  expandMethodBind(className FontFile, "set_face_index", 3937882851)
  var `?param` = [getPtr cacheIndex, getPtr faceIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFaceIndex*(self: FontFile; cacheIndex: int32): int64 =
  expandMethodBind(className FontFile, "get_face_index", 923996154)
  var `?param` = [getPtr cacheIndex]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc setCacheAscent*(self: FontFile; cacheIndex: int32; size: int32; ascent: Float): void =
  expandMethodBind(className FontFile, "set_cache_ascent", 3506521499)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr ascent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCacheAscent*(self: FontFile; cacheIndex: int32; size: int32): Float =
  expandMethodBind(className FontFile, "get_cache_ascent", 3085491603)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCacheDescent*(self: FontFile; cacheIndex: int32; size: int32; descent: Float): void =
  expandMethodBind(className FontFile, "set_cache_descent", 3506521499)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr descent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCacheDescent*(self: FontFile; cacheIndex: int32; size: int32): Float =
  expandMethodBind(className FontFile, "get_cache_descent", 3085491603)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCacheUnderlinePosition*(self: FontFile; cacheIndex: int32; size: int32; underlinePosition: Float): void =
  expandMethodBind(className FontFile, "set_cache_underline_position", 3506521499)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr underlinePosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCacheUnderlinePosition*(self: FontFile; cacheIndex: int32; size: int32): Float =
  expandMethodBind(className FontFile, "get_cache_underline_position", 3085491603)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCacheUnderlineThickness*(self: FontFile; cacheIndex: int32; size: int32; underlineThickness: Float): void =
  expandMethodBind(className FontFile, "set_cache_underline_thickness", 3506521499)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr underlineThickness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCacheUnderlineThickness*(self: FontFile; cacheIndex: int32; size: int32): Float =
  expandMethodBind(className FontFile, "get_cache_underline_thickness", 3085491603)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setCacheScale*(self: FontFile; cacheIndex: int32; size: int32; scale: Float): void =
  expandMethodBind(className FontFile, "set_cache_scale", 3506521499)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCacheScale*(self: FontFile; cacheIndex: int32; size: int32): Float =
  expandMethodBind(className FontFile, "get_cache_scale", 3085491603)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getTextureCount*(self: FontFile; cacheIndex: int32; size: Vector2i): int32 =
  expandMethodBind(className FontFile, "get_texture_count", 1987661582)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc clearTextures*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  expandMethodBind(className FontFile, "clear_textures", 2311374912)
  var `?param` = [getPtr cacheIndex, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTexture*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): void =
  expandMethodBind(className FontFile, "remove_texture", 2328951467)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr textureIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTextureImage*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32; image: gdref Image): void =
  expandMethodBind(className FontFile, "set_texture_image", 4157974066)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr textureIndex, getPtr image]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureImage*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): gdref Image =
  expandMethodBind(className FontFile, "get_texture_image", 3878418953)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr textureIndex]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc setTextureOffsets*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32; offset: PackedInt32Array): void =
  expandMethodBind(className FontFile, "set_texture_offsets", 2849993437)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr textureIndex, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureOffsets*(self: FontFile; cacheIndex: int32; size: Vector2i; textureIndex: int32): PackedInt32Array =
  expandMethodBind(className FontFile, "get_texture_offsets", 3703444828)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr textureIndex]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getGlyphList*(self: FontFile; cacheIndex: int32; size: Vector2i): PackedInt32Array =
  expandMethodBind(className FontFile, "get_glyph_list", 681709689)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc clearGlyphs*(self: FontFile; cacheIndex: int32; size: Vector2i): void =
  expandMethodBind(className FontFile, "clear_glyphs", 2311374912)
  var `?param` = [getPtr cacheIndex, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeGlyph*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): void =
  expandMethodBind(className FontFile, "remove_glyph", 2328951467)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  methodbind.ptrcall(self, addr `?param`[0])

proc setGlyphAdvance*(self: FontFile; cacheIndex: int32; size: int32; glyph: int32; advance: Vector2): void =
  expandMethodBind(className FontFile, "set_glyph_advance", 947991729)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr advance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphAdvance*(self: FontFile; cacheIndex: int32; size: int32; glyph: int32): Vector2 =
  expandMethodBind(className FontFile, "get_glyph_advance", 1601573536)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlyphOffset*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; offset: Vector2): void =
  expandMethodBind(className FontFile, "set_glyph_offset", 921719850)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphOffset*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Vector2 =
  expandMethodBind(className FontFile, "get_glyph_offset", 3205412300)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlyphSize*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; glSize: Vector2): void =
  expandMethodBind(className FontFile, "set_glyph_size", 921719850)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr glSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphSize*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Vector2 =
  expandMethodBind(className FontFile, "get_glyph_size", 3205412300)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlyphUvRect*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; uvRect: Rect2): void =
  expandMethodBind(className FontFile, "set_glyph_uv_rect", 3821620992)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr uvRect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphUvRect*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): Rect2 =
  expandMethodBind(className FontFile, "get_glyph_uv_rect", 3927917900)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc setGlyphTextureIdx*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32; textureIdx: int32): void =
  expandMethodBind(className FontFile, "set_glyph_texture_idx", 355564111)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph, getPtr textureIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGlyphTextureIdx*(self: FontFile; cacheIndex: int32; size: Vector2i; glyph: int32): int32 =
  expandMethodBind(className FontFile, "get_glyph_texture_idx", 1629411054)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyph]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getKerningList*(self: FontFile; cacheIndex: int32; size: int32): TypedArray[Vector2i] =
  expandMethodBind(className FontFile, "get_kerning_list", 2345056839)
  var `?param` = [getPtr cacheIndex, getPtr size]
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc clearKerningMap*(self: FontFile; cacheIndex: int32; size: int32): void =
  expandMethodBind(className FontFile, "clear_kerning_map", 3937882851)
  var `?param` = [getPtr cacheIndex, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i): void =
  expandMethodBind(className FontFile, "remove_kerning", 3930204747)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyphPair]
  methodbind.ptrcall(self, addr `?param`[0])

proc setKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i; kerning: Vector2): void =
  expandMethodBind(className FontFile, "set_kerning", 3182200918)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyphPair, getPtr kerning]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKerning*(self: FontFile; cacheIndex: int32; size: int32; glyphPair: Vector2i): Vector2 =
  expandMethodBind(className FontFile, "get_kerning", 1611912865)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr glyphPair]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc renderRange*(self: FontFile; cacheIndex: int32; size: Vector2i; start: Int; `end`: Int): void =
  expandMethodBind(className FontFile, "render_range", 355564111)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr start, getPtr `end`]
  methodbind.ptrcall(self, addr `?param`[0])

proc renderGlyph*(self: FontFile; cacheIndex: int32; size: Vector2i; index: int32): void =
  expandMethodBind(className FontFile, "render_glyph", 2328951467)
  var `?param` = [getPtr cacheIndex, getPtr size, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLanguageSupportOverride*(self: FontFile; language: String; supported: bool): void =
  expandMethodBind(className FontFile, "set_language_support_override", 2678287736)
  var `?param` = [getPtr language, getPtr supported]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguageSupportOverride*(self: FontFile; language: String): bool =
  expandMethodBind(className FontFile, "get_language_support_override", 3927539163)
  var `?param` = [getPtr language]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeLanguageSupportOverride*(self: FontFile; language: String): void =
  expandMethodBind(className FontFile, "remove_language_support_override", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguageSupportOverrides*(self: FontFile): PackedStringArray =
  expandMethodBind(className FontFile, "get_language_support_overrides", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setScriptSupportOverride*(self: FontFile; script: String; supported: bool): void =
  expandMethodBind(className FontFile, "set_script_support_override", 2678287736)
  var `?param` = [getPtr script, getPtr supported]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScriptSupportOverride*(self: FontFile; script: String): bool =
  expandMethodBind(className FontFile, "get_script_support_override", 3927539163)
  var `?param` = [getPtr script]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeScriptSupportOverride*(self: FontFile; script: String): void =
  expandMethodBind(className FontFile, "remove_script_support_override", 83702148)
  var `?param` = [getPtr script]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScriptSupportOverrides*(self: FontFile): PackedStringArray =
  expandMethodBind(className FontFile, "get_script_support_overrides", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setOpentypeFeatureOverrides*(self: FontFile; overrides: Dictionary): void =
  expandMethodBind(className FontFile, "set_opentype_feature_overrides", 4155329257)
  var `?param` = [getPtr overrides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpentypeFeatureOverrides*(self: FontFile): Dictionary =
  expandMethodBind(className FontFile, "get_opentype_feature_overrides", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getGlyphIndex*(self: FontFile; size: int32; char: Int; variationSelector: Int): int32 =
  expandMethodBind(className FontFile, "get_glyph_index", 864943070)
  var `?param` = [getPtr size, getPtr char, getPtr variationSelector]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getCharFromGlyphIndex*(self: FontFile; size: int32; glyphIndex: int32): Int =
  expandMethodBind(className FontFile, "get_char_from_glyph_index", 3175239445)
  var `?param` = [getPtr size, getPtr glyphIndex]
  var ret: encoded Int
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Int)

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

template hinting*(self: FontFile): untyped = self.getHinting()
template `hinting=`*(self: FontFile; value) = self.setHinting(value)

template oversampling*(self: FontFile): untyped = self.getOversampling()
template `oversampling=`*(self: FontFile; value) = self.setOversampling(value)

template fixedSize*(self: FontFile): untyped = self.getFixedSize()
template `fixedSize=`*(self: FontFile; value) = self.setFixedSize(value)

template fixedSizeScaleMode*(self: FontFile): untyped = self.getFixedSizeScaleMode()
template `fixedSizeScaleMode=`*(self: FontFile; value) = self.setFixedSizeScaleMode(value)

template opentypeFeatureOverrides*(self: FontFile): untyped = self.getOpentypeFeatureOverrides()
template `opentypeFeatureOverrides=`*(self: FontFile; value) = self.setOpentypeFeatureOverrides(value)

const FontFile_vmap =
  Font.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FontFile]): Table[string, string] = FontFile_vmap