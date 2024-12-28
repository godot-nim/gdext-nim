{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc hasFeature*(self: TextServer; feature: TextServer_Feature): bool =
  expandMethodBind(className TextServer, "has_feature", 3967367083)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc getName*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getFeatures*(self: TextServer): int64 =
  expandMethodBind(className TextServer, "get_features", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc loadSupportData*(self: TextServer; filename: String): bool =
  expandMethodBind(className TextServer, "load_support_data", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr filename], addr ret)
  (addr ret).decode_result(bool)

proc getSupportDataFilename*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_support_data_filename", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getSupportDataInfo*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_support_data_info", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc saveSupportData*(self: TextServer; filename: String): bool =
  expandMethodBind(className TextServer, "save_support_data", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr filename], addr ret)
  (addr ret).decode_result(bool)

proc isLocaleRightToLeft*(self: TextServer; locale: String): bool =
  expandMethodBind(className TextServer, "is_locale_right_to_left", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr locale], addr ret)
  (addr ret).decode_result(bool)

proc nameToTag*(self: TextServer; name: String): int64 =
  expandMethodBind(className TextServer, "name_to_tag", 1321353865)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int64)

proc tagToName*(self: TextServer; tag: int64): String =
  expandMethodBind(className TextServer, "tag_to_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr tag], addr ret)
  (addr ret).decode_result(String)

proc has*(self: TextServer; rid: RID): bool =
  expandMethodBind(className TextServer, "has", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr rid], addr ret)
  (addr ret).decode_result(bool)

proc freeRid*(self: TextServer; rid: RID): void =
  expandMethodBind(className TextServer, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc createFont*(self: TextServer): RID =
  expandMethodBind(className TextServer, "create_font", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc createFontLinkedVariation*(self: TextServer; fontRid: RID): RID =
  expandMethodBind(className TextServer, "create_font_linked_variation", 41030802)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(RID)

proc fontSetData*(self: TextServer; fontRid: RID; data: PackedByteArray): void =
  expandMethodBind(className TextServer, "font_set_data", 1355495400)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr data])

proc fontSetFaceIndex*(self: TextServer; fontRid: RID; faceIndex: int64): void =
  expandMethodBind(className TextServer, "font_set_face_index", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr faceIndex])

proc fontGetFaceIndex*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_face_index", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontGetFaceCount*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_face_count", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetStyle*(self: TextServer; fontRid: RID; style: set[TextServer_FontStyle]): void =
  expandMethodBind(className TextServer, "font_set_style", 898466325)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr style])

proc fontGetStyle*(self: TextServer; fontRid: RID): set[TextServer_FontStyle] =
  expandMethodBind(className TextServer, "font_get_style", 3082502592)
  var ret: encoded set[TextServer_FontStyle]
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(set[TextServer_FontStyle])

proc fontSetName*(self: TextServer; fontRid: RID; name: String): void =
  expandMethodBind(className TextServer, "font_set_name", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr name])

proc fontGetName*(self: TextServer; fontRid: RID): String =
  expandMethodBind(className TextServer, "font_get_name", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(String)

proc fontGetOtNameStrings*(self: TextServer; fontRid: RID): Dictionary =
  expandMethodBind(className TextServer, "font_get_ot_name_strings", 1882737106)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSetStyleName*(self: TextServer; fontRid: RID; name: String): void =
  expandMethodBind(className TextServer, "font_set_style_name", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr name])

proc fontGetStyleName*(self: TextServer; fontRid: RID): String =
  expandMethodBind(className TextServer, "font_get_style_name", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(String)

proc fontSetWeight*(self: TextServer; fontRid: RID; weight: int64): void =
  expandMethodBind(className TextServer, "font_set_weight", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr weight])

proc fontGetWeight*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_weight", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetStretch*(self: TextServer; fontRid: RID; weight: int64): void =
  expandMethodBind(className TextServer, "font_set_stretch", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr weight])

proc fontGetStretch*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_stretch", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetAntialiasing*(self: TextServer; fontRid: RID; antialiasing: TextServer_FontAntialiasing): void =
  expandMethodBind(className TextServer, "font_set_antialiasing", 958337235)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr antialiasing])

proc fontGetAntialiasing*(self: TextServer; fontRid: RID): TextServer_FontAntialiasing =
  expandMethodBind(className TextServer, "font_get_antialiasing", 3389420495)
  var ret: encoded TextServer_FontAntialiasing
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(TextServer_FontAntialiasing)

proc fontSetDisableEmbeddedBitmaps*(self: TextServer; fontRid: RID; disableEmbeddedBitmaps: bool): void =
  expandMethodBind(className TextServer, "font_set_disable_embedded_bitmaps", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr disableEmbeddedBitmaps])

proc fontGetDisableEmbeddedBitmaps*(self: TextServer; fontRid: RID): bool =
  expandMethodBind(className TextServer, "font_get_disable_embedded_bitmaps", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(bool)

proc fontSetGenerateMipmaps*(self: TextServer; fontRid: RID; generateMipmaps: bool): void =
  expandMethodBind(className TextServer, "font_set_generate_mipmaps", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr generateMipmaps])

proc fontGetGenerateMipmaps*(self: TextServer; fontRid: RID): bool =
  expandMethodBind(className TextServer, "font_get_generate_mipmaps", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(bool)

proc fontSetMultichannelSignedDistanceField*(self: TextServer; fontRid: RID; msdf: bool): void =
  expandMethodBind(className TextServer, "font_set_multichannel_signed_distance_field", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdf])

proc fontIsMultichannelSignedDistanceField*(self: TextServer; fontRid: RID): bool =
  expandMethodBind(className TextServer, "font_is_multichannel_signed_distance_field", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(bool)

proc fontSetMsdfPixelRange*(self: TextServer; fontRid: RID; msdfPixelRange: int64): void =
  expandMethodBind(className TextServer, "font_set_msdf_pixel_range", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdfPixelRange])

proc fontGetMsdfPixelRange*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_msdf_pixel_range", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetMsdfSize*(self: TextServer; fontRid: RID; msdfSize: int64): void =
  expandMethodBind(className TextServer, "font_set_msdf_size", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdfSize])

proc fontGetMsdfSize*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_msdf_size", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetFixedSize*(self: TextServer; fontRid: RID; fixedSize: int64): void =
  expandMethodBind(className TextServer, "font_set_fixed_size", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr fixedSize])

proc fontGetFixedSize*(self: TextServer; fontRid: RID): int64 =
  expandMethodBind(className TextServer, "font_get_fixed_size", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(int64)

proc fontSetFixedSizeScaleMode*(self: TextServer; fontRid: RID; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void =
  expandMethodBind(className TextServer, "font_set_fixed_size_scale_mode", 1029390307)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr fixedSizeScaleMode])

proc fontGetFixedSizeScaleMode*(self: TextServer; fontRid: RID): TextServer_FixedSizeScaleMode =
  expandMethodBind(className TextServer, "font_get_fixed_size_scale_mode", 4113120379)
  var ret: encoded TextServer_FixedSizeScaleMode
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(TextServer_FixedSizeScaleMode)

proc fontSetAllowSystemFallback*(self: TextServer; fontRid: RID; allowSystemFallback: bool): void =
  expandMethodBind(className TextServer, "font_set_allow_system_fallback", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr allowSystemFallback])

proc fontIsAllowSystemFallback*(self: TextServer; fontRid: RID): bool =
  expandMethodBind(className TextServer, "font_is_allow_system_fallback", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(bool)

proc fontSetForceAutohinter*(self: TextServer; fontRid: RID; forceAutohinter: bool): void =
  expandMethodBind(className TextServer, "font_set_force_autohinter", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr forceAutohinter])

proc fontIsForceAutohinter*(self: TextServer; fontRid: RID): bool =
  expandMethodBind(className TextServer, "font_is_force_autohinter", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(bool)

proc fontSetHinting*(self: TextServer; fontRid: RID; hinting: TextServer_Hinting): void =
  expandMethodBind(className TextServer, "font_set_hinting", 1520010864)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr hinting])

proc fontGetHinting*(self: TextServer; fontRid: RID): TextServer_Hinting =
  expandMethodBind(className TextServer, "font_get_hinting", 3971592737)
  var ret: encoded TextServer_Hinting
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(TextServer_Hinting)

proc fontSetSubpixelPositioning*(self: TextServer; fontRid: RID; subpixelPositioning: TextServer_SubpixelPositioning): void =
  expandMethodBind(className TextServer, "font_set_subpixel_positioning", 3830459669)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr subpixelPositioning])

proc fontGetSubpixelPositioning*(self: TextServer; fontRid: RID): TextServer_SubpixelPositioning =
  expandMethodBind(className TextServer, "font_get_subpixel_positioning", 2752233671)
  var ret: encoded TextServer_SubpixelPositioning
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(TextServer_SubpixelPositioning)

proc fontSetEmbolden*(self: TextServer; fontRid: RID; strength: float64): void =
  expandMethodBind(className TextServer, "font_set_embolden", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr strength])

proc fontGetEmbolden*(self: TextServer; fontRid: RID): float64 =
  expandMethodBind(className TextServer, "font_get_embolden", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(float64)

proc fontSetSpacing*(self: TextServer; fontRid: RID; spacing: TextServer_SpacingType; value: int64): void =
  expandMethodBind(className TextServer, "font_set_spacing", 1307259930)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr spacing, getPtr value])

proc fontGetSpacing*(self: TextServer; fontRid: RID; spacing: TextServer_SpacingType): int64 =
  expandMethodBind(className TextServer, "font_get_spacing", 1213653558)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr spacing], addr ret)
  (addr ret).decode_result(int64)

proc fontSetBaselineOffset*(self: TextServer; fontRid: RID; baselineOffset: float64): void =
  expandMethodBind(className TextServer, "font_set_baseline_offset", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr baselineOffset])

proc fontGetBaselineOffset*(self: TextServer; fontRid: RID): float64 =
  expandMethodBind(className TextServer, "font_get_baseline_offset", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(float64)

proc fontSetTransform*(self: TextServer; fontRid: RID; transform: Transform2D): void =
  expandMethodBind(className TextServer, "font_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr transform])

proc fontGetTransform*(self: TextServer; fontRid: RID): Transform2D =
  expandMethodBind(className TextServer, "font_get_transform", 213527486)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Transform2D)

proc fontSetVariationCoordinates*(self: TextServer; fontRid: RID; variationCoordinates: Dictionary): void =
  expandMethodBind(className TextServer, "font_set_variation_coordinates", 1217542888)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr variationCoordinates])

proc fontGetVariationCoordinates*(self: TextServer; fontRid: RID): Dictionary =
  expandMethodBind(className TextServer, "font_get_variation_coordinates", 1882737106)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSetOversampling*(self: TextServer; fontRid: RID; oversampling: float64): void =
  expandMethodBind(className TextServer, "font_set_oversampling", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr oversampling])

proc fontGetOversampling*(self: TextServer; fontRid: RID): float64 =
  expandMethodBind(className TextServer, "font_get_oversampling", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(float64)

proc fontGetSizeCacheList*(self: TextServer; fontRid: RID): TypedArray[Vector2i] =
  expandMethodBind(className TextServer, "font_get_size_cache_list", 2684255073)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc fontClearSizeCache*(self: TextServer; fontRid: RID): void =
  expandMethodBind(className TextServer, "font_clear_size_cache", 2722037293)
  methodbind.ptrcall(self, [getPtr fontRid])

proc fontRemoveSizeCache*(self: TextServer; fontRid: RID; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_remove_size_cache", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size])

proc fontSetAscent*(self: TextServer; fontRid: RID; size: int64; ascent: float64): void =
  expandMethodBind(className TextServer, "font_set_ascent", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr ascent])

proc fontGetAscent*(self: TextServer; fontRid: RID; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_ascent", 755457166)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(float64)

proc fontSetDescent*(self: TextServer; fontRid: RID; size: int64; descent: float64): void =
  expandMethodBind(className TextServer, "font_set_descent", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr descent])

proc fontGetDescent*(self: TextServer; fontRid: RID; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_descent", 755457166)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(float64)

proc fontSetUnderlinePosition*(self: TextServer; fontRid: RID; size: int64; underlinePosition: float64): void =
  expandMethodBind(className TextServer, "font_set_underline_position", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr underlinePosition])

proc fontGetUnderlinePosition*(self: TextServer; fontRid: RID; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_underline_position", 755457166)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(float64)

proc fontSetUnderlineThickness*(self: TextServer; fontRid: RID; size: int64; underlineThickness: float64): void =
  expandMethodBind(className TextServer, "font_set_underline_thickness", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr underlineThickness])

proc fontGetUnderlineThickness*(self: TextServer; fontRid: RID; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_underline_thickness", 755457166)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(float64)

proc fontSetScale*(self: TextServer; fontRid: RID; size: int64; scale: float64): void =
  expandMethodBind(className TextServer, "font_set_scale", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr scale])

proc fontGetScale*(self: TextServer; fontRid: RID; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_scale", 755457166)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(float64)

proc fontGetTextureCount*(self: TextServer; fontRid: RID; size: Vector2i): int64 =
  expandMethodBind(className TextServer, "font_get_texture_count", 1311001310)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(int64)

proc fontClearTextures*(self: TextServer; fontRid: RID; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_clear_textures", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size])

proc fontRemoveTexture*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): void =
  expandMethodBind(className TextServer, "font_remove_texture", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex])

proc fontSetTextureImage*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64; image: gdref Image): void =
  expandMethodBind(className TextServer, "font_set_texture_image", 2354485091)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr image])

proc fontGetTextureImage*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): gdref Image =
  expandMethodBind(className TextServer, "font_get_texture_image", 2451761155)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex], addr ret)
  (addr ret).decode_result(gdref Image)

proc fontSetTextureOffsets*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64; offset: PackedInt32Array): void =
  expandMethodBind(className TextServer, "font_set_texture_offsets", 3005398047)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr offset])

proc fontGetTextureOffsets*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): PackedInt32Array =
  expandMethodBind(className TextServer, "font_get_texture_offsets", 3420028887)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc fontGetGlyphList*(self: TextServer; fontRid: RID; size: Vector2i): PackedInt32Array =
  expandMethodBind(className TextServer, "font_get_glyph_list", 46086620)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc fontClearGlyphs*(self: TextServer; fontRid: RID; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_clear_glyphs", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size])

proc fontRemoveGlyph*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): void =
  expandMethodBind(className TextServer, "font_remove_glyph", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph])

proc fontGetGlyphAdvance*(self: TextServer; fontRid: RID; size: int64; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_advance", 2555689501)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphAdvance*(self: TextServer; fontRid: RID; size: int64; glyph: int64; advance: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_advance", 3219397315)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr advance])

proc fontGetGlyphOffset*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_offset", 513728628)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphOffset*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; offset: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_offset", 1812632090)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr offset])

proc fontGetGlyphSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_size", 513728628)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; glSize: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_size", 1812632090)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr glSize])

proc fontGetGlyphUvRect*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Rect2 =
  expandMethodBind(className TextServer, "font_get_glyph_uv_rect", 2274268786)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(Rect2)

proc fontSetGlyphUvRect*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; uvRect: Rect2): void =
  expandMethodBind(className TextServer, "font_set_glyph_uv_rect", 1973324081)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr uvRect])

proc fontGetGlyphTextureIdx*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): int64 =
  expandMethodBind(className TextServer, "font_get_glyph_texture_idx", 4292800474)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(int64)

proc fontSetGlyphTextureIdx*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; textureIdx: int64): void =
  expandMethodBind(className TextServer, "font_set_glyph_texture_idx", 4254580980)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr textureIdx])

proc fontGetGlyphTextureRid*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): RID =
  expandMethodBind(className TextServer, "font_get_glyph_texture_rid", 1451696141)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(RID)

proc fontGetGlyphTextureSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_texture_size", 513728628)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], addr ret)
  (addr ret).decode_result(Vector2)

proc fontGetGlyphContours*(self: TextServer; font: RID; size: int64; index: int64): Dictionary =
  expandMethodBind(className TextServer, "font_get_glyph_contours", 2903964473)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr font, getPtr size, getPtr index], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontGetKerningList*(self: TextServer; fontRid: RID; size: int64): TypedArray[Vector2i] =
  expandMethodBind(className TextServer, "font_get_kerning_list", 1778388067)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc fontClearKerningMap*(self: TextServer; fontRid: RID; size: int64): void =
  expandMethodBind(className TextServer, "font_clear_kerning_map", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size])

proc fontRemoveKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i): void =
  expandMethodBind(className TextServer, "font_remove_kerning", 2141860016)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair])

proc fontSetKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i; kerning: Vector2): void =
  expandMethodBind(className TextServer, "font_set_kerning", 3630965883)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair, getPtr kerning])

proc fontGetKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i): Vector2 =
  expandMethodBind(className TextServer, "font_get_kerning", 1019980169)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair], addr ret)
  (addr ret).decode_result(Vector2)

proc fontGetGlyphIndex*(self: TextServer; fontRid: RID; size: int64; char: int64; variationSelector: int64): int64 =
  expandMethodBind(className TextServer, "font_get_glyph_index", 1765635060)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr char, getPtr variationSelector], addr ret)
  (addr ret).decode_result(int64)

proc fontGetCharFromGlyphIndex*(self: TextServer; fontRid: RID; size: int64; glyphIndex: int64): int64 =
  expandMethodBind(className TextServer, "font_get_char_from_glyph_index", 2156738276)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphIndex], addr ret)
  (addr ret).decode_result(int64)

proc fontHasChar*(self: TextServer; fontRid: RID; char: int64): bool =
  expandMethodBind(className TextServer, "font_has_char", 3120086654)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid, getPtr char], addr ret)
  (addr ret).decode_result(bool)

proc fontGetSupportedChars*(self: TextServer; fontRid: RID): String =
  expandMethodBind(className TextServer, "font_get_supported_chars", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(String)

proc fontRenderRange*(self: TextServer; fontRid: RID; size: Vector2i; start: int64; `end`: int64): void =
  expandMethodBind(className TextServer, "font_render_range", 4254580980)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr start, getPtr `end`])

proc fontRenderGlyph*(self: TextServer; fontRid: RID; size: Vector2i; index: int64): void =
  expandMethodBind(className TextServer, "font_render_glyph", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr index])

proc fontDrawGlyph*(self: TextServer; fontRid: RID; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "font_draw_glyph", 1339057948)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color])

proc fontDrawGlyphOutline*(self: TextServer; fontRid: RID; canvas: RID; size: int64; outlineSize: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "font_draw_glyph_outline", 2626165733)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr canvas, getPtr size, getPtr outlineSize, getPtr pos, getPtr index, getPtr color])

proc fontIsLanguageSupported*(self: TextServer; fontRid: RID; language: String): bool =
  expandMethodBind(className TextServer, "font_is_language_supported", 3199320846)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language], addr ret)
  (addr ret).decode_result(bool)

proc fontSetLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String; supported: bool): void =
  expandMethodBind(className TextServer, "font_set_language_support_override", 2313957094)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language, getPtr supported])

proc fontGetLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String): bool =
  expandMethodBind(className TextServer, "font_get_language_support_override", 2829184646)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language], addr ret)
  (addr ret).decode_result(bool)

proc fontRemoveLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String): void =
  expandMethodBind(className TextServer, "font_remove_language_support_override", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language])

proc fontGetLanguageSupportOverrides*(self: TextServer; fontRid: RID): PackedStringArray =
  expandMethodBind(className TextServer, "font_get_language_support_overrides", 2801473409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc fontIsScriptSupported*(self: TextServer; fontRid: RID; script: String): bool =
  expandMethodBind(className TextServer, "font_is_script_supported", 3199320846)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script], addr ret)
  (addr ret).decode_result(bool)

proc fontSetScriptSupportOverride*(self: TextServer; fontRid: RID; script: String; supported: bool): void =
  expandMethodBind(className TextServer, "font_set_script_support_override", 2313957094)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script, getPtr supported])

proc fontGetScriptSupportOverride*(self: TextServer; fontRid: RID; script: String): bool =
  expandMethodBind(className TextServer, "font_get_script_support_override", 2829184646)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script], addr ret)
  (addr ret).decode_result(bool)

proc fontRemoveScriptSupportOverride*(self: TextServer; fontRid: RID; script: String): void =
  expandMethodBind(className TextServer, "font_remove_script_support_override", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script])

proc fontGetScriptSupportOverrides*(self: TextServer; fontRid: RID): PackedStringArray =
  expandMethodBind(className TextServer, "font_get_script_support_overrides", 2801473409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc fontSetOpentypeFeatureOverrides*(self: TextServer; fontRid: RID; overrides: Dictionary): void =
  expandMethodBind(className TextServer, "font_set_opentype_feature_overrides", 1217542888)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr overrides])

proc fontGetOpentypeFeatureOverrides*(self: TextServer; fontRid: RID): Dictionary =
  expandMethodBind(className TextServer, "font_get_opentype_feature_overrides", 1882737106)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSupportedFeatureList*(self: TextServer; fontRid: RID): Dictionary =
  expandMethodBind(className TextServer, "font_supported_feature_list", 1882737106)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSupportedVariationList*(self: TextServer; fontRid: RID): Dictionary =
  expandMethodBind(className TextServer, "font_supported_variation_list", 1882737106)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr fontRid], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontGetGlobalOversampling*(self: TextServer): float64 =
  expandMethodBind(className TextServer, "font_get_global_oversampling", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc fontSetGlobalOversampling*(self: TextServer; oversampling: float64): void =
  expandMethodBind(className TextServer, "font_set_global_oversampling", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling])

proc getHexCodeBoxSize*(self: TextServer; size: int64; index: int64): Vector2 =
  expandMethodBind(className TextServer, "get_hex_code_box_size", 3016396712)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr size, getPtr index], addr ret)
  (addr ret).decode_result(Vector2)

proc drawHexCodeBox*(self: TextServer; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color): void =
  expandMethodBind(className TextServer, "draw_hex_code_box", 1602046441)
  methodbind.ptrcall(self, [getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color])

proc createShapedText*(self: TextServer; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): RID =
  expandMethodBind(className TextServer, "create_shaped_text", 1231398698)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr direction, getPtr orientation], addr ret)
  (addr ret).decode_result(RID)

proc shapedTextClear*(self: TextServer; rid: RID): void =
  expandMethodBind(className TextServer, "shaped_text_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc shapedTextSetDirection*(self: TextServer; shaped: RID; direction: TextServer_Direction = directionAuto): void =
  expandMethodBind(className TextServer, "shaped_text_set_direction", 1551430183)
  methodbind.ptrcall(self, [getPtr shaped, getPtr direction])

proc shapedTextGetDirection*(self: TextServer; shaped: RID): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_direction", 3065904362)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc shapedTextGetInferredDirection*(self: TextServer; shaped: RID): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_inferred_direction", 3065904362)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc shapedTextSetBidiOverride*(self: TextServer; shaped: RID; override: Array): void =
  expandMethodBind(className TextServer, "shaped_text_set_bidi_override", 684822712)
  methodbind.ptrcall(self, [getPtr shaped, getPtr override])

proc shapedTextSetCustomPunctuation*(self: TextServer; shaped: RID; punct: String): void =
  expandMethodBind(className TextServer, "shaped_text_set_custom_punctuation", 2726140452)
  methodbind.ptrcall(self, [getPtr shaped, getPtr punct])

proc shapedTextGetCustomPunctuation*(self: TextServer; shaped: RID): String =
  expandMethodBind(className TextServer, "shaped_text_get_custom_punctuation", 642473191)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(String)

proc shapedTextSetCustomEllipsis*(self: TextServer; shaped: RID; char: int64): void =
  expandMethodBind(className TextServer, "shaped_text_set_custom_ellipsis", 3411492887)
  methodbind.ptrcall(self, [getPtr shaped, getPtr char])

proc shapedTextGetCustomEllipsis*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_custom_ellipsis", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextSetOrientation*(self: TextServer; shaped: RID; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className TextServer, "shaped_text_set_orientation", 3019609126)
  methodbind.ptrcall(self, [getPtr shaped, getPtr orientation])

proc shapedTextGetOrientation*(self: TextServer; shaped: RID): TextServer_Orientation =
  expandMethodBind(className TextServer, "shaped_text_get_orientation", 3142708106)
  var ret: encoded TextServer_Orientation
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TextServer_Orientation)

proc shapedTextSetPreserveInvalid*(self: TextServer; shaped: RID; enabled: bool): void =
  expandMethodBind(className TextServer, "shaped_text_set_preserve_invalid", 1265174801)
  methodbind.ptrcall(self, [getPtr shaped, getPtr enabled])

proc shapedTextGetPreserveInvalid*(self: TextServer; shaped: RID): bool =
  expandMethodBind(className TextServer, "shaped_text_get_preserve_invalid", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextSetPreserveControl*(self: TextServer; shaped: RID; enabled: bool): void =
  expandMethodBind(className TextServer, "shaped_text_set_preserve_control", 1265174801)
  methodbind.ptrcall(self, [getPtr shaped, getPtr enabled])

proc shapedTextGetPreserveControl*(self: TextServer; shaped: RID): bool =
  expandMethodBind(className TextServer, "shaped_text_get_preserve_control", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextSetSpacing*(self: TextServer; shaped: RID; spacing: TextServer_SpacingType; value: int64): void =
  expandMethodBind(className TextServer, "shaped_text_set_spacing", 1307259930)
  methodbind.ptrcall(self, [getPtr shaped, getPtr spacing, getPtr value])

proc shapedTextGetSpacing*(self: TextServer; shaped: RID; spacing: TextServer_SpacingType): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_spacing", 1213653558)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr spacing], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextAddString*(self: TextServer; shaped: RID; text: String; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary = dictionary(); language: String = gdstring""; meta: Variant = default(Variant)): bool =
  expandMethodBind(className TextServer, "shaped_text_add_string", 623473029)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped, getPtr text, getPtr fonts, getPtr size, getPtr opentypeFeatures, getPtr language, getPtr meta], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextAddObject*(self: TextServer; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int64 = 1; baseline: float64 = 0.0): bool =
  expandMethodBind(className TextServer, "shaped_text_add_object", 3664424789)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextResizeObject*(self: TextServer; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: float64 = 0.0): bool =
  expandMethodBind(className TextServer, "shaped_text_resize_object", 790361552)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline], addr ret)
  (addr ret).decode_result(bool)

proc shapedGetSpanCount*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_get_span_count", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedGetSpanMeta*(self: TextServer; shaped: RID; index: int64): Variant =
  expandMethodBind(className TextServer, "shaped_get_span_meta", 4069510997)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], addr ret)
  (addr ret).decode_result(Variant)

proc shapedSetSpanUpdateFont*(self: TextServer; shaped: RID; index: int64; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary = dictionary()): void =
  expandMethodBind(className TextServer, "shaped_set_span_update_font", 2022725822)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index, getPtr fonts, getPtr size, getPtr opentypeFeatures])

proc shapedTextSubstr*(self: TextServer; shaped: RID; start: int64; length: int64): RID =
  expandMethodBind(className TextServer, "shaped_text_substr", 1937682086)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr length], addr ret)
  (addr ret).decode_result(RID)

proc shapedTextGetParent*(self: TextServer; shaped: RID): RID =
  expandMethodBind(className TextServer, "shaped_text_get_parent", 3814569979)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(RID)

proc shapedTextFitToWidth*(self: TextServer; shaped: RID; width: float64; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}): float64 =
  expandMethodBind(className TextServer, "shaped_text_fit_to_width", 530670926)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr justificationFlags], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextTabAlign*(self: TextServer; shaped: RID; tabStops: PackedFloat32Array): float64 =
  expandMethodBind(className TextServer, "shaped_text_tab_align", 1283669550)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped, getPtr tabStops], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextShape*(self: TextServer; shaped: RID): bool =
  expandMethodBind(className TextServer, "shaped_text_shape", 3521089500)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextIsReady*(self: TextServer; shaped: RID): bool =
  expandMethodBind(className TextServer, "shaped_text_is_ready", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextHasVisibleChars*(self: TextServer; shaped: RID): bool =
  expandMethodBind(className TextServer, "shaped_text_has_visible_chars", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextGetGlyphs*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_get_glyphs", 2684255073)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextSortLogical*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_sort_logical", 2670461153)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextGetGlyphCount*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_glyph_count", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetRange*(self: TextServer; shaped: RID): Vector2i =
  expandMethodBind(className TextServer, "shaped_text_get_range", 733700038)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(Vector2i)

proc shapedTextGetLineBreaksAdv*(self: TextServer; shaped: RID; width: PackedFloat32Array; start: int64 = 0; once: bool = true; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_line_breaks_adv", 2376991424)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr start, getPtr once, getPtr breakFlags], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetLineBreaks*(self: TextServer; shaped: RID; width: float64; start: int64 = 0; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_line_breaks", 2651359741)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr start, getPtr breakFlags], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetWordBreaks*(self: TextServer; shaped: RID; graphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsSpace, graphemeIsPunctuation}; skipGraphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsVirtual}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_word_breaks", 4099476853)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr shaped, getPtr graphemeFlags, getPtr skipGraphemeFlags], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetTrimPos*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_trim_pos", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetEllipsisPos*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_pos", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetEllipsisGlyphs*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_glyphs", 2684255073)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextGetEllipsisGlyphCount*(self: TextServer; shaped: RID): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_glyph_count", 2198884583)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextOverrunTrimToWidth*(self: TextServer; shaped: RID; width: float64 = 0; overrunTrimFlags: set[TextServer_TextOverrunFlag] = {}): void =
  expandMethodBind(className TextServer, "shaped_text_overrun_trim_to_width", 2723146520)
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr overrunTrimFlags])

proc shapedTextGetObjects*(self: TextServer; shaped: RID): Array =
  expandMethodBind(className TextServer, "shaped_text_get_objects", 2684255073)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(Array)

proc shapedTextGetObjectRect*(self: TextServer; shaped: RID; key: Variant): Rect2 =
  expandMethodBind(className TextServer, "shaped_text_get_object_rect", 447978354)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], addr ret)
  (addr ret).decode_result(Rect2)

proc shapedTextGetObjectRange*(self: TextServer; shaped: RID; key: Variant): Vector2i =
  expandMethodBind(className TextServer, "shaped_text_get_object_range", 2524675647)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], addr ret)
  (addr ret).decode_result(Vector2i)

proc shapedTextGetObjectGlyph*(self: TextServer; shaped: RID; key: Variant): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_object_glyph", 1260085030)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetSize*(self: TextServer; shaped: RID): Vector2 =
  expandMethodBind(className TextServer, "shaped_text_get_size", 2440833711)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(Vector2)

proc shapedTextGetAscent*(self: TextServer; shaped: RID): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_ascent", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetDescent*(self: TextServer; shaped: RID): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_descent", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetWidth*(self: TextServer; shaped: RID): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_width", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetUnderlinePosition*(self: TextServer; shaped: RID): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_underline_position", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetUnderlineThickness*(self: TextServer; shaped: RID): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_underline_thickness", 866169185)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetCarets*(self: TextServer; shaped: RID; position: int64): Dictionary =
  expandMethodBind(className TextServer, "shaped_text_get_carets", 1574219346)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr shaped, getPtr position], addr ret)
  (addr ret).decode_result(Dictionary)

proc shapedTextGetSelection*(self: TextServer; shaped: RID; start: int64; `end`: int64): PackedVector2Array =
  expandMethodBind(className TextServer, "shaped_text_get_selection", 3714187733)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr `end`], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc shapedTextHitTestGrapheme*(self: TextServer; shaped: RID; coords: float64): int64 =
  expandMethodBind(className TextServer, "shaped_text_hit_test_grapheme", 3149310417)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr coords], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextHitTestPosition*(self: TextServer; shaped: RID; coords: float64): int64 =
  expandMethodBind(className TextServer, "shaped_text_hit_test_position", 3149310417)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr coords], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetGraphemeBounds*(self: TextServer; shaped: RID; pos: int64): Vector2 =
  expandMethodBind(className TextServer, "shaped_text_get_grapheme_bounds", 2546185844)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(Vector2)

proc shapedTextNextGraphemePos*(self: TextServer; shaped: RID; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_next_grapheme_pos", 1120910005)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextPrevGraphemePos*(self: TextServer; shaped: RID; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_prev_grapheme_pos", 1120910005)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetCharacterBreaks*(self: TextServer; shaped: RID): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_character_breaks", 788230395)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr shaped], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextNextCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_next_character_pos", 1120910005)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextPrevCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_prev_character_pos", 1120910005)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextClosestCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_closest_character_pos", 1120910005)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextDraw*(self: TextServer; shaped: RID; canvas: RID; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "shaped_text_draw", 880389142)
  methodbind.ptrcall(self, [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr color])

proc shapedTextDrawOutline*(self: TextServer; shaped: RID; canvas: RID; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; outlineSize: int64 = 1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "shaped_text_draw_outline", 2559184194)
  methodbind.ptrcall(self, [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr outlineSize, getPtr color])

proc shapedTextGetDominantDirectionInRange*(self: TextServer; shaped: RID; start: int64; `end`: int64): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_dominant_direction_in_range", 3326907668)
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr `end`], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc formatNumber*(self: TextServer; number: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "format_number", 2664628024)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr number, getPtr language], addr ret)
  (addr ret).decode_result(String)

proc parseNumber*(self: TextServer; number: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "parse_number", 2664628024)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr number, getPtr language], addr ret)
  (addr ret).decode_result(String)

proc percentSign*(self: TextServer; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "percent_sign", 993269549)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr language], addr ret)
  (addr ret).decode_result(String)

proc stringGetWordBreaks*(self: TextServer; string: String; language: String = gdstring""; charsPerLine: int64 = 0): PackedInt32Array =
  expandMethodBind(className TextServer, "string_get_word_breaks", 581857818)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr string, getPtr language, getPtr charsPerLine], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc stringGetCharacterBreaks*(self: TextServer; string: String; language: String = gdstring""): PackedInt32Array =
  expandMethodBind(className TextServer, "string_get_character_breaks", 2333794773)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr string, getPtr language], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc isConfusable*(self: TextServer; string: String; dict: PackedStringArray): int64 =
  expandMethodBind(className TextServer, "is_confusable", 1433197768)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr string, getPtr dict], addr ret)
  (addr ret).decode_result(int64)

proc spoofCheck*(self: TextServer; string: String): bool =
  expandMethodBind(className TextServer, "spoof_check", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr string], addr ret)
  (addr ret).decode_result(bool)

proc stripDiacritics*(self: TextServer; string: String): String =
  expandMethodBind(className TextServer, "strip_diacritics", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr string], addr ret)
  (addr ret).decode_result(String)

proc isValidIdentifier*(self: TextServer; string: String): bool =
  expandMethodBind(className TextServer, "is_valid_identifier", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr string], addr ret)
  (addr ret).decode_result(bool)

proc isValidLetter*(self: TextServer; unicode: uint64): bool =
  expandMethodBind(className TextServer, "is_valid_letter", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr unicode], addr ret)
  (addr ret).decode_result(bool)

proc stringToUpper*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_upper", 2664628024)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr string, getPtr language], addr ret)
  (addr ret).decode_result(String)

proc stringToLower*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_lower", 2664628024)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr string, getPtr language], addr ret)
  (addr ret).decode_result(String)

proc stringToTitle*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_title", 2664628024)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr string, getPtr language], addr ret)
  (addr ret).decode_result(String)

proc parseStructuredText*(self: TextServer; parserType: TextServer_StructuredTextParser; args: Array; text: String): TypedArray[Vector3i] =
  expandMethodBind(className TextServer, "parse_structured_text", 3310685015)
  var ret: encoded TypedArray[Vector3i]
  methodbind.ptrcall(self, [getPtr parserType, getPtr args, getPtr text], addr ret)
  (addr ret).decode_result(TypedArray[Vector3i])

const TextServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextServer]): Table[string, string] = TextServer_vmap