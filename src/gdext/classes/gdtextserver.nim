{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TextServer, RefCounted)

proc hasFeature*(self: TextServer; feature: TextServer_Feature): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "has_feature", 3967367083)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc getName*(self: TextServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getFeatures*(self: TextServer): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_features", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc loadSupportData*(self: TextServer; filename: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "load_support_data", 2323990056)
  methodbind.ptrcall(self, [getPtr filename], bool)

proc getSupportDataFilename*(self: TextServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_support_data_filename", 201670096)
  methodbind.ptrcall(self, [], String)

proc getSupportDataInfo*(self: TextServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_support_data_info", 201670096)
  methodbind.ptrcall(self, [], String)

proc saveSupportData*(self: TextServer; filename: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "save_support_data", 3927539163)
  methodbind.ptrcall(self, [getPtr filename], bool)

proc getSupportData*(self: TextServer): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_support_data", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc isLocaleRightToLeft*(self: TextServer; locale: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "is_locale_right_to_left", 3927539163)
  methodbind.ptrcall(self, [getPtr locale], bool)

proc nameToTag*(self: TextServer; name: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "name_to_tag", 1321353865)
  methodbind.ptrcall(self, [getPtr name], int64)

proc tagToName*(self: TextServer; tag: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "tag_to_name", 844755477)
  methodbind.ptrcall(self, [getPtr tag], String)

proc has*(self: TextServer; rid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "has", 3521089500)
  methodbind.ptrcall(self, [getPtr rid], bool)

proc freeRid*(self: TextServer; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "free_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc createFont*(self: TextServer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "create_font", 529393457)
  methodbind.ptrcall(self, [], RID)

proc createFontLinkedVariation*(self: TextServer; fontRid: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "create_font_linked_variation", 41030802)
  methodbind.ptrcall(self, [getPtr fontRid], RID)

proc fontSetData*(self: TextServer; fontRid: RID; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_data", 1355495400)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr data], void)

proc fontSetFaceIndex*(self: TextServer; fontRid: RID; faceIndex: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_face_index", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr faceIndex], void)

proc fontGetFaceIndex*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_face_index", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontGetFaceCount*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_face_count", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetStyle*(self: TextServer; fontRid: RID; style: set[TextServer_FontStyle]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_style", 898466325)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr style], void)

proc fontGetStyle*(self: TextServer; fontRid: RID): set[TextServer_FontStyle] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_style", 3082502592)
  methodbind.ptrcall(self, [getPtr fontRid], set[TextServer_FontStyle])

proc fontSetName*(self: TextServer; fontRid: RID; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_name", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr name], void)

proc fontGetName*(self: TextServer; fontRid: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_name", 642473191)
  methodbind.ptrcall(self, [getPtr fontRid], String)

proc fontGetOtNameStrings*(self: TextServer; fontRid: RID): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_ot_name_strings", 1882737106)
  methodbind.ptrcall(self, [getPtr fontRid], Dictionary)

proc fontSetStyleName*(self: TextServer; fontRid: RID; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_style_name", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr name], void)

proc fontGetStyleName*(self: TextServer; fontRid: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_style_name", 642473191)
  methodbind.ptrcall(self, [getPtr fontRid], String)

proc fontSetWeight*(self: TextServer; fontRid: RID; weight: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_weight", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr weight], void)

proc fontGetWeight*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_weight", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetStretch*(self: TextServer; fontRid: RID; weight: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_stretch", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr weight], void)

proc fontGetStretch*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_stretch", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetAntialiasing*(self: TextServer; fontRid: RID; antialiasing: TextServer_FontAntialiasing): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_antialiasing", 958337235)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr antialiasing], void)

proc fontGetAntialiasing*(self: TextServer; fontRid: RID): TextServer_FontAntialiasing =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_antialiasing", 3389420495)
  methodbind.ptrcall(self, [getPtr fontRid], TextServer_FontAntialiasing)

proc fontSetDisableEmbeddedBitmaps*(self: TextServer; fontRid: RID; disableEmbeddedBitmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_disable_embedded_bitmaps", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr disableEmbeddedBitmaps], void)

proc fontGetDisableEmbeddedBitmaps*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_disable_embedded_bitmaps", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetGenerateMipmaps*(self: TextServer; fontRid: RID; generateMipmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_generate_mipmaps", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr generateMipmaps], void)

proc fontGetGenerateMipmaps*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_generate_mipmaps", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetMultichannelSignedDistanceField*(self: TextServer; fontRid: RID; msdf: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_multichannel_signed_distance_field", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdf], void)

proc fontIsMultichannelSignedDistanceField*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_multichannel_signed_distance_field", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetMsdfPixelRange*(self: TextServer; fontRid: RID; msdfPixelRange: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_msdf_pixel_range", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdfPixelRange], void)

proc fontGetMsdfPixelRange*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_msdf_pixel_range", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetMsdfSize*(self: TextServer; fontRid: RID; msdfSize: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_msdf_size", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr msdfSize], void)

proc fontGetMsdfSize*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_msdf_size", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetFixedSize*(self: TextServer; fontRid: RID; fixedSize: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_fixed_size", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr fixedSize], void)

proc fontGetFixedSize*(self: TextServer; fontRid: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_fixed_size", 2198884583)
  methodbind.ptrcall(self, [getPtr fontRid], int64)

proc fontSetFixedSizeScaleMode*(self: TextServer; fontRid: RID; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_fixed_size_scale_mode", 1029390307)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr fixedSizeScaleMode], void)

proc fontGetFixedSizeScaleMode*(self: TextServer; fontRid: RID): TextServer_FixedSizeScaleMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_fixed_size_scale_mode", 4113120379)
  methodbind.ptrcall(self, [getPtr fontRid], TextServer_FixedSizeScaleMode)

proc fontSetAllowSystemFallback*(self: TextServer; fontRid: RID; allowSystemFallback: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_allow_system_fallback", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr allowSystemFallback], void)

proc fontIsAllowSystemFallback*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_allow_system_fallback", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontClearSystemFallbackCache*(self: TextServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_clear_system_fallback_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc fontSetForceAutohinter*(self: TextServer; fontRid: RID; forceAutohinter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_force_autohinter", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr forceAutohinter], void)

proc fontIsForceAutohinter*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_force_autohinter", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetModulateColorGlyphs*(self: TextServer; fontRid: RID; forceAutohinter: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_modulate_color_glyphs", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr forceAutohinter], void)

proc fontIsModulateColorGlyphs*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_modulate_color_glyphs", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetHinting*(self: TextServer; fontRid: RID; hinting: TextServer_Hinting): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_hinting", 1520010864)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr hinting], void)

proc fontGetHinting*(self: TextServer; fontRid: RID): TextServer_Hinting =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_hinting", 3971592737)
  methodbind.ptrcall(self, [getPtr fontRid], TextServer_Hinting)

proc fontSetSubpixelPositioning*(self: TextServer; fontRid: RID; subpixelPositioning: TextServer_SubpixelPositioning): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_subpixel_positioning", 3830459669)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr subpixelPositioning], void)

proc fontGetSubpixelPositioning*(self: TextServer; fontRid: RID): TextServer_SubpixelPositioning =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_subpixel_positioning", 2752233671)
  methodbind.ptrcall(self, [getPtr fontRid], TextServer_SubpixelPositioning)

proc fontSetKeepRoundingRemainders*(self: TextServer; fontRid: RID; keepRoundingRemainders: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_keep_rounding_remainders", 1265174801)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr keepRoundingRemainders], void)

proc fontGetKeepRoundingRemainders*(self: TextServer; fontRid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_keep_rounding_remainders", 4155700596)
  methodbind.ptrcall(self, [getPtr fontRid], bool)

proc fontSetEmbolden*(self: TextServer; fontRid: RID; strength: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_embolden", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr strength], void)

proc fontGetEmbolden*(self: TextServer; fontRid: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_embolden", 866169185)
  methodbind.ptrcall(self, [getPtr fontRid], float64)

proc fontSetSpacing*(self: TextServer; fontRid: RID; spacing: TextServer_SpacingType; value: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_spacing", 1307259930)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr spacing, getPtr value], void)

proc fontGetSpacing*(self: TextServer; fontRid: RID; spacing: TextServer_SpacingType): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_spacing", 1213653558)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr spacing], int64)

proc fontSetBaselineOffset*(self: TextServer; fontRid: RID; baselineOffset: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_baseline_offset", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr baselineOffset], void)

proc fontGetBaselineOffset*(self: TextServer; fontRid: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_baseline_offset", 866169185)
  methodbind.ptrcall(self, [getPtr fontRid], float64)

proc fontSetTransform*(self: TextServer; fontRid: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr transform], void)

proc fontGetTransform*(self: TextServer; fontRid: RID): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_transform", 213527486)
  methodbind.ptrcall(self, [getPtr fontRid], Transform2D)

proc fontSetVariationCoordinates*(self: TextServer; fontRid: RID; variationCoordinates: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_variation_coordinates", 1217542888)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr variationCoordinates], void)

proc fontGetVariationCoordinates*(self: TextServer; fontRid: RID): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_variation_coordinates", 1882737106)
  methodbind.ptrcall(self, [getPtr fontRid], Dictionary)

proc fontSetOversampling*(self: TextServer; fontRid: RID; oversampling: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_oversampling", 1794382983)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr oversampling], void)

proc fontGetOversampling*(self: TextServer; fontRid: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_oversampling", 866169185)
  methodbind.ptrcall(self, [getPtr fontRid], float64)

proc fontGetSizeCacheList*(self: TextServer; fontRid: RID): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_size_cache_list", 2684255073)
  methodbind.ptrcall(self, [getPtr fontRid], TypedArray[Vector2i])

proc fontClearSizeCache*(self: TextServer; fontRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_clear_size_cache", 2722037293)
  methodbind.ptrcall(self, [getPtr fontRid], void)

proc fontRemoveSizeCache*(self: TextServer; fontRid: RID; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_size_cache", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], void)

proc fontGetSizeCacheInfo*(self: TextServer; fontRid: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_size_cache_info", 2684255073)
  methodbind.ptrcall(self, [getPtr fontRid], TypedArray[Dictionary])

proc fontSetAscent*(self: TextServer; fontRid: RID; size: int64; ascent: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_ascent", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr ascent], void)

proc fontGetAscent*(self: TextServer; fontRid: RID; size: int64): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_ascent", 755457166)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], float64)

proc fontSetDescent*(self: TextServer; fontRid: RID; size: int64; descent: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_descent", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr descent], void)

proc fontGetDescent*(self: TextServer; fontRid: RID; size: int64): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_descent", 755457166)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], float64)

proc fontSetUnderlinePosition*(self: TextServer; fontRid: RID; size: int64; underlinePosition: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_underline_position", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr underlinePosition], void)

proc fontGetUnderlinePosition*(self: TextServer; fontRid: RID; size: int64): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_underline_position", 755457166)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], float64)

proc fontSetUnderlineThickness*(self: TextServer; fontRid: RID; size: int64; underlineThickness: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_underline_thickness", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr underlineThickness], void)

proc fontGetUnderlineThickness*(self: TextServer; fontRid: RID; size: int64): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_underline_thickness", 755457166)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], float64)

proc fontSetScale*(self: TextServer; fontRid: RID; size: int64; scale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_scale", 1892459533)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr scale], void)

proc fontGetScale*(self: TextServer; fontRid: RID; size: int64): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_scale", 755457166)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], float64)

proc fontGetTextureCount*(self: TextServer; fontRid: RID; size: Vector2i): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_texture_count", 1311001310)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], int64)

proc fontClearTextures*(self: TextServer; fontRid: RID; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_clear_textures", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], void)

proc fontRemoveTexture*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_texture", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex], void)

proc fontSetTextureImage*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64; image: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_texture_image", 2354485091)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr image], void)

proc fontGetTextureImage*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_texture_image", 2451761155)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex], gdref Image)

proc fontSetTextureOffsets*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64; offset: PackedInt32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_texture_offsets", 3005398047)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr offset], void)

proc fontGetTextureOffsets*(self: TextServer; fontRid: RID; size: Vector2i; textureIndex: int64): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_texture_offsets", 3420028887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr textureIndex], PackedInt32Array)

proc fontGetGlyphList*(self: TextServer; fontRid: RID; size: Vector2i): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_list", 46086620)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], PackedInt32Array)

proc fontClearGlyphs*(self: TextServer; fontRid: RID; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_clear_glyphs", 2450610377)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], void)

proc fontRemoveGlyph*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_glyph", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], void)

proc fontGetGlyphAdvance*(self: TextServer; fontRid: RID; size: int64; glyph: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_advance", 2555689501)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], Vector2)

proc fontSetGlyphAdvance*(self: TextServer; fontRid: RID; size: int64; glyph: int64; advance: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_glyph_advance", 3219397315)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr advance], void)

proc fontGetGlyphOffset*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_offset", 513728628)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], Vector2)

proc fontSetGlyphOffset*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_glyph_offset", 1812632090)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr offset], void)

proc fontGetGlyphSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_size", 513728628)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], Vector2)

proc fontSetGlyphSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; glSize: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_glyph_size", 1812632090)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr glSize], void)

proc fontGetGlyphUvRect*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_uv_rect", 2274268786)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], Rect2)

proc fontSetGlyphUvRect*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; uvRect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_glyph_uv_rect", 1973324081)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr uvRect], void)

proc fontGetGlyphTextureIdx*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_texture_idx", 4292800474)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], int64)

proc fontSetGlyphTextureIdx*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64; textureIdx: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_glyph_texture_idx", 4254580980)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph, getPtr textureIdx], void)

proc fontGetGlyphTextureRid*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_texture_rid", 1451696141)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], RID)

proc fontGetGlyphTextureSize*(self: TextServer; fontRid: RID; size: Vector2i; glyph: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_texture_size", 513728628)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyph], Vector2)

proc fontGetGlyphContours*(self: TextServer; font: RID; size: int64; index: int64): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_contours", 2903964473)
  methodbind.ptrcall(self, [getPtr font, getPtr size, getPtr index], Dictionary)

proc fontGetKerningList*(self: TextServer; fontRid: RID; size: int64): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_kerning_list", 1778388067)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], TypedArray[Vector2i])

proc fontClearKerningMap*(self: TextServer; fontRid: RID; size: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_clear_kerning_map", 3411492887)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size], void)

proc fontRemoveKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_kerning", 2141860016)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair], void)

proc fontSetKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i; kerning: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_kerning", 3630965883)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair, getPtr kerning], void)

proc fontGetKerning*(self: TextServer; fontRid: RID; size: int64; glyphPair: Vector2i): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_kerning", 1019980169)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphPair], Vector2)

proc fontGetGlyphIndex*(self: TextServer; fontRid: RID; size: int64; char: int64; variationSelector: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_glyph_index", 1765635060)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr char, getPtr variationSelector], int64)

proc fontGetCharFromGlyphIndex*(self: TextServer; fontRid: RID; size: int64; glyphIndex: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_char_from_glyph_index", 2156738276)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr glyphIndex], int64)

proc fontHasChar*(self: TextServer; fontRid: RID; char: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_has_char", 3120086654)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr char], bool)

proc fontGetSupportedChars*(self: TextServer; fontRid: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_supported_chars", 642473191)
  methodbind.ptrcall(self, [getPtr fontRid], String)

proc fontGetSupportedGlyphs*(self: TextServer; fontRid: RID): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_supported_glyphs", 788230395)
  methodbind.ptrcall(self, [getPtr fontRid], PackedInt32Array)

proc fontRenderRange*(self: TextServer; fontRid: RID; size: Vector2i; start: int64; `end`: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_render_range", 4254580980)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr start, getPtr `end`], void)

proc fontRenderGlyph*(self: TextServer; fontRid: RID; size: Vector2i; index: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_render_glyph", 3810512262)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr size, getPtr index], void)

proc fontDrawGlyph*(self: TextServer; fontRid: RID; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_draw_glyph", 3103234926)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color, getPtr oversampling], void)

proc fontDrawGlyphOutline*(self: TextServer; fontRid: RID; canvas: RID; size: int64; outlineSize: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_draw_glyph_outline", 1976041553)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr canvas, getPtr size, getPtr outlineSize, getPtr pos, getPtr index, getPtr color, getPtr oversampling], void)

proc fontIsLanguageSupported*(self: TextServer; fontRid: RID; language: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_language_supported", 3199320846)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language], bool)

proc fontSetLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String; supported: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_language_support_override", 2313957094)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language, getPtr supported], void)

proc fontGetLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_language_support_override", 2829184646)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language], bool)

proc fontRemoveLanguageSupportOverride*(self: TextServer; fontRid: RID; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_language_support_override", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr language], void)

proc fontGetLanguageSupportOverrides*(self: TextServer; fontRid: RID): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_language_support_overrides", 2801473409)
  methodbind.ptrcall(self, [getPtr fontRid], PackedStringArray)

proc fontIsScriptSupported*(self: TextServer; fontRid: RID; script: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_is_script_supported", 3199320846)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script], bool)

proc fontSetScriptSupportOverride*(self: TextServer; fontRid: RID; script: String; supported: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_script_support_override", 2313957094)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script, getPtr supported], void)

proc fontGetScriptSupportOverride*(self: TextServer; fontRid: RID; script: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_script_support_override", 2829184646)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script], bool)

proc fontRemoveScriptSupportOverride*(self: TextServer; fontRid: RID; script: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_remove_script_support_override", 2726140452)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr script], void)

proc fontGetScriptSupportOverrides*(self: TextServer; fontRid: RID): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_script_support_overrides", 2801473409)
  methodbind.ptrcall(self, [getPtr fontRid], PackedStringArray)

proc fontSetOpentypeFeatureOverrides*(self: TextServer; fontRid: RID; overrides: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_opentype_feature_overrides", 1217542888)
  methodbind.ptrcall(self, [getPtr fontRid, getPtr overrides], void)

proc fontGetOpentypeFeatureOverrides*(self: TextServer; fontRid: RID): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_opentype_feature_overrides", 1882737106)
  methodbind.ptrcall(self, [getPtr fontRid], Dictionary)

proc fontSupportedFeatureList*(self: TextServer; fontRid: RID): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_supported_feature_list", 1882737106)
  methodbind.ptrcall(self, [getPtr fontRid], Dictionary)

proc fontSupportedVariationList*(self: TextServer; fontRid: RID): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_supported_variation_list", 1882737106)
  methodbind.ptrcall(self, [getPtr fontRid], Dictionary)

proc fontGetGlobalOversampling*(self: TextServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_get_global_oversampling", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc fontSetGlobalOversampling*(self: TextServer; oversampling: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "font_set_global_oversampling", 373806689)
  methodbind.ptrcall(self, [getPtr oversampling], void)

proc getHexCodeBoxSize*(self: TextServer; size: int64; index: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "get_hex_code_box_size", 3016396712)
  methodbind.ptrcall(self, [getPtr size, getPtr index], Vector2)

proc drawHexCodeBox*(self: TextServer; canvas: RID; size: int64; pos: Vector2; index: int64; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "draw_hex_code_box", 1602046441)
  methodbind.ptrcall(self, [getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color], void)

proc createShapedText*(self: TextServer; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "create_shaped_text", 1231398698)
  methodbind.ptrcall(self, [getPtr direction, getPtr orientation], RID)

proc shapedTextClear*(self: TextServer; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_clear", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc shapedTextSetDirection*(self: TextServer; shaped: RID; direction: TextServer_Direction = directionAuto): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_direction", 1551430183)
  methodbind.ptrcall(self, [getPtr shaped, getPtr direction], void)

proc shapedTextGetDirection*(self: TextServer; shaped: RID): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_direction", 3065904362)
  methodbind.ptrcall(self, [getPtr shaped], TextServer_Direction)

proc shapedTextGetInferredDirection*(self: TextServer; shaped: RID): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_inferred_direction", 3065904362)
  methodbind.ptrcall(self, [getPtr shaped], TextServer_Direction)

proc shapedTextSetBidiOverride*(self: TextServer; shaped: RID; override: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_bidi_override", 684822712)
  methodbind.ptrcall(self, [getPtr shaped, getPtr override], void)

proc shapedTextSetCustomPunctuation*(self: TextServer; shaped: RID; punct: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_custom_punctuation", 2726140452)
  methodbind.ptrcall(self, [getPtr shaped, getPtr punct], void)

proc shapedTextGetCustomPunctuation*(self: TextServer; shaped: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_custom_punctuation", 642473191)
  methodbind.ptrcall(self, [getPtr shaped], String)

proc shapedTextSetCustomEllipsis*(self: TextServer; shaped: RID; char: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_custom_ellipsis", 3411492887)
  methodbind.ptrcall(self, [getPtr shaped, getPtr char], void)

proc shapedTextGetCustomEllipsis*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_custom_ellipsis", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedTextSetOrientation*(self: TextServer; shaped: RID; orientation: TextServer_Orientation = orientationHorizontal): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_orientation", 3019609126)
  methodbind.ptrcall(self, [getPtr shaped, getPtr orientation], void)

proc shapedTextGetOrientation*(self: TextServer; shaped: RID): TextServer_Orientation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_orientation", 3142708106)
  methodbind.ptrcall(self, [getPtr shaped], TextServer_Orientation)

proc shapedTextSetPreserveInvalid*(self: TextServer; shaped: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_preserve_invalid", 1265174801)
  methodbind.ptrcall(self, [getPtr shaped, getPtr enabled], void)

proc shapedTextGetPreserveInvalid*(self: TextServer; shaped: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_preserve_invalid", 4155700596)
  methodbind.ptrcall(self, [getPtr shaped], bool)

proc shapedTextSetPreserveControl*(self: TextServer; shaped: RID; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_preserve_control", 1265174801)
  methodbind.ptrcall(self, [getPtr shaped, getPtr enabled], void)

proc shapedTextGetPreserveControl*(self: TextServer; shaped: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_preserve_control", 4155700596)
  methodbind.ptrcall(self, [getPtr shaped], bool)

proc shapedTextSetSpacing*(self: TextServer; shaped: RID; spacing: TextServer_SpacingType; value: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_set_spacing", 1307259930)
  methodbind.ptrcall(self, [getPtr shaped, getPtr spacing, getPtr value], void)

proc shapedTextGetSpacing*(self: TextServer; shaped: RID; spacing: TextServer_SpacingType): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_spacing", 1213653558)
  methodbind.ptrcall(self, [getPtr shaped, getPtr spacing], int64)

proc shapedTextAddString*(self: TextServer; shaped: RID; text: String; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary = newDictionary(); language: String = newGdString(); meta: Variant = default(Variant)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_add_string", 623473029)
  methodbind.ptrcall(self, [getPtr shaped, getPtr text, getPtr fonts, getPtr size, getPtr opentypeFeatures, getPtr language, getPtr meta], bool)

proc shapedTextAddObject*(self: TextServer; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int64 = 1; baseline: float64 = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_add_object", 3664424789)
  methodbind.ptrcall(self, [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline], bool)

proc shapedTextResizeObject*(self: TextServer; shaped: RID; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: float64 = 0.0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_resize_object", 790361552)
  methodbind.ptrcall(self, [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline], bool)

proc shapedGetText*(self: TextServer; shaped: RID): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_text", 642473191)
  methodbind.ptrcall(self, [getPtr shaped], String)

proc shapedGetSpanCount*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_span_count", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedGetSpanMeta*(self: TextServer; shaped: RID; index: int64): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_span_meta", 4069510997)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], Variant)

proc shapedGetSpanEmbeddedObject*(self: TextServer; shaped: RID; index: int64): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_span_embedded_object", 4069510997)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], Variant)

proc shapedGetSpanText*(self: TextServer; shaped: RID; index: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_span_text", 1464764419)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], String)

proc shapedGetSpanObject*(self: TextServer; shaped: RID; index: int64): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_span_object", 4069510997)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], Variant)

proc shapedSetSpanUpdateFont*(self: TextServer; shaped: RID; index: int64; fonts: TypedArray[RID]; size: int64; opentypeFeatures: Dictionary = newDictionary()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_set_span_update_font", 2022725822)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index, getPtr fonts, getPtr size, getPtr opentypeFeatures], void)

proc shapedGetRunCount*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_count", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedGetRunText*(self: TextServer; shaped: RID; index: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_text", 1464764419)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], String)

proc shapedGetRunRange*(self: TextServer; shaped: RID; index: int64): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_range", 4069534484)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], Vector2i)

proc shapedGetRunFontRid*(self: TextServer; shaped: RID; index: int64): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_font_rid", 1066463050)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], RID)

proc shapedGetRunFontSize*(self: TextServer; shaped: RID; index: int64): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_font_size", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], int32)

proc shapedGetRunLanguage*(self: TextServer; shaped: RID; index: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_language", 1464764419)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], String)

proc shapedGetRunDirection*(self: TextServer; shaped: RID; index: int64): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_direction", 2413896864)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], TextServer_Direction)

proc shapedGetRunObject*(self: TextServer; shaped: RID; index: int64): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_get_run_object", 4069510997)
  methodbind.ptrcall(self, [getPtr shaped, getPtr index], Variant)

proc shapedTextSubstr*(self: TextServer; shaped: RID; start: int64; length: int64): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_substr", 1937682086)
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr length], RID)

proc shapedTextGetParent*(self: TextServer; shaped: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_parent", 3814569979)
  methodbind.ptrcall(self, [getPtr shaped], RID)

proc shapedTextFitToWidth*(self: TextServer; shaped: RID; width: float64; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_fit_to_width", 530670926)
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr justificationFlags], float64)

proc shapedTextTabAlign*(self: TextServer; shaped: RID; tabStops: PackedFloat32Array): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_tab_align", 1283669550)
  methodbind.ptrcall(self, [getPtr shaped, getPtr tabStops], float64)

proc shapedTextShape*(self: TextServer; shaped: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_shape", 3521089500)
  methodbind.ptrcall(self, [getPtr shaped], bool)

proc shapedTextIsReady*(self: TextServer; shaped: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_is_ready", 4155700596)
  methodbind.ptrcall(self, [getPtr shaped], bool)

proc shapedTextHasVisibleChars*(self: TextServer; shaped: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_has_visible_chars", 4155700596)
  methodbind.ptrcall(self, [getPtr shaped], bool)

proc shapedTextGetGlyphs*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_glyphs", 2684255073)
  methodbind.ptrcall(self, [getPtr shaped], TypedArray[Dictionary])

proc shapedTextSortLogical*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_sort_logical", 2670461153)
  methodbind.ptrcall(self, [getPtr shaped], TypedArray[Dictionary])

proc shapedTextGetGlyphCount*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_glyph_count", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedTextGetRange*(self: TextServer; shaped: RID): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_range", 733700038)
  methodbind.ptrcall(self, [getPtr shaped], Vector2i)

proc shapedTextGetLineBreaksAdv*(self: TextServer; shaped: RID; width: PackedFloat32Array; start: int64 = 0; once: bool = true; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_line_breaks_adv", 2376991424)
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr start, getPtr once, getPtr breakFlags], PackedInt32Array)

proc shapedTextGetLineBreaks*(self: TextServer; shaped: RID; width: float64; start: int64 = 0; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_line_breaks", 2651359741)
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr start, getPtr breakFlags], PackedInt32Array)

proc shapedTextGetWordBreaks*(self: TextServer; shaped: RID; graphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsSpace, graphemeIsPunctuation}; skipGraphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsVirtual}): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_word_breaks", 4099476853)
  methodbind.ptrcall(self, [getPtr shaped, getPtr graphemeFlags, getPtr skipGraphemeFlags], PackedInt32Array)

proc shapedTextGetTrimPos*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_trim_pos", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedTextGetEllipsisPos*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_ellipsis_pos", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedTextGetEllipsisGlyphs*(self: TextServer; shaped: RID): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_ellipsis_glyphs", 2684255073)
  methodbind.ptrcall(self, [getPtr shaped], TypedArray[Dictionary])

proc shapedTextGetEllipsisGlyphCount*(self: TextServer; shaped: RID): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_ellipsis_glyph_count", 2198884583)
  methodbind.ptrcall(self, [getPtr shaped], int64)

proc shapedTextOverrunTrimToWidth*(self: TextServer; shaped: RID; width: float64 = 0; overrunTrimFlags: set[TextServer_TextOverrunFlag] = {}): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_overrun_trim_to_width", 2723146520)
  methodbind.ptrcall(self, [getPtr shaped, getPtr width, getPtr overrunTrimFlags], void)

proc shapedTextGetObjects*(self: TextServer; shaped: RID): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_objects", 2684255073)
  methodbind.ptrcall(self, [getPtr shaped], Array)

proc shapedTextGetObjectRect*(self: TextServer; shaped: RID; key: Variant): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_object_rect", 447978354)
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], Rect2)

proc shapedTextGetObjectRange*(self: TextServer; shaped: RID; key: Variant): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_object_range", 2524675647)
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], Vector2i)

proc shapedTextGetObjectGlyph*(self: TextServer; shaped: RID; key: Variant): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_object_glyph", 1260085030)
  methodbind.ptrcall(self, [getPtr shaped, getPtr key], int64)

proc shapedTextGetSize*(self: TextServer; shaped: RID): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_size", 2440833711)
  methodbind.ptrcall(self, [getPtr shaped], Vector2)

proc shapedTextGetAscent*(self: TextServer; shaped: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_ascent", 866169185)
  methodbind.ptrcall(self, [getPtr shaped], float64)

proc shapedTextGetDescent*(self: TextServer; shaped: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_descent", 866169185)
  methodbind.ptrcall(self, [getPtr shaped], float64)

proc shapedTextGetWidth*(self: TextServer; shaped: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_width", 866169185)
  methodbind.ptrcall(self, [getPtr shaped], float64)

proc shapedTextGetUnderlinePosition*(self: TextServer; shaped: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_underline_position", 866169185)
  methodbind.ptrcall(self, [getPtr shaped], float64)

proc shapedTextGetUnderlineThickness*(self: TextServer; shaped: RID): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_underline_thickness", 866169185)
  methodbind.ptrcall(self, [getPtr shaped], float64)

proc shapedTextGetCarets*(self: TextServer; shaped: RID; position: int64): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_carets", 1574219346)
  methodbind.ptrcall(self, [getPtr shaped, getPtr position], Dictionary)

proc shapedTextGetSelection*(self: TextServer; shaped: RID; start: int64; `end`: int64): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_selection", 3714187733)
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr `end`], PackedVector2Array)

proc shapedTextHitTestGrapheme*(self: TextServer; shaped: RID; coords: float64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_hit_test_grapheme", 3149310417)
  methodbind.ptrcall(self, [getPtr shaped, getPtr coords], int64)

proc shapedTextHitTestPosition*(self: TextServer; shaped: RID; coords: float64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_hit_test_position", 3149310417)
  methodbind.ptrcall(self, [getPtr shaped, getPtr coords], int64)

proc shapedTextGetGraphemeBounds*(self: TextServer; shaped: RID; pos: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_grapheme_bounds", 2546185844)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], Vector2)

proc shapedTextNextGraphemePos*(self: TextServer; shaped: RID; pos: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_next_grapheme_pos", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], int64)

proc shapedTextPrevGraphemePos*(self: TextServer; shaped: RID; pos: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_prev_grapheme_pos", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], int64)

proc shapedTextGetCharacterBreaks*(self: TextServer; shaped: RID): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_character_breaks", 788230395)
  methodbind.ptrcall(self, [getPtr shaped], PackedInt32Array)

proc shapedTextNextCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_next_character_pos", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], int64)

proc shapedTextPrevCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_prev_character_pos", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], int64)

proc shapedTextClosestCharacterPos*(self: TextServer; shaped: RID; pos: int64): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_closest_character_pos", 1120910005)
  methodbind.ptrcall(self, [getPtr shaped, getPtr pos], int64)

proc shapedTextDraw*(self: TextServer; shaped: RID; canvas: RID; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_draw", 1647687596)
  methodbind.ptrcall(self, [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr color, getPtr oversampling], void)

proc shapedTextDrawOutline*(self: TextServer; shaped: RID; canvas: RID; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; outlineSize: int64 = 1; color: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_draw_outline", 1217146601)
  methodbind.ptrcall(self, [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr outlineSize, getPtr color, getPtr oversampling], void)

proc shapedTextGetDominantDirectionInRange*(self: TextServer; shaped: RID; start: int64; `end`: int64): TextServer_Direction =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "shaped_text_get_dominant_direction_in_range", 3326907668)
  methodbind.ptrcall(self, [getPtr shaped, getPtr start, getPtr `end`], TextServer_Direction)

proc formatNumber*(self: TextServer; number: String; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "format_number", 2664628024)
  methodbind.ptrcall(self, [getPtr number, getPtr language], String)

proc parseNumber*(self: TextServer; number: String; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "parse_number", 2664628024)
  methodbind.ptrcall(self, [getPtr number, getPtr language], String)

proc percentSign*(self: TextServer; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "percent_sign", 993269549)
  methodbind.ptrcall(self, [getPtr language], String)

proc stringGetWordBreaks*(self: TextServer; string: String; language: String = newGdString(); charsPerLine: int64 = 0): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "string_get_word_breaks", 581857818)
  methodbind.ptrcall(self, [getPtr string, getPtr language, getPtr charsPerLine], PackedInt32Array)

proc stringGetCharacterBreaks*(self: TextServer; string: String; language: String = newGdString()): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "string_get_character_breaks", 2333794773)
  methodbind.ptrcall(self, [getPtr string, getPtr language], PackedInt32Array)

proc isConfusable*(self: TextServer; string: String; dict: PackedStringArray): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "is_confusable", 1433197768)
  methodbind.ptrcall(self, [getPtr string, getPtr dict], int64)

proc spoofCheck*(self: TextServer; string: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "spoof_check", 3927539163)
  methodbind.ptrcall(self, [getPtr string], bool)

proc stripDiacritics*(self: TextServer; string: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "strip_diacritics", 3135753539)
  methodbind.ptrcall(self, [getPtr string], String)

proc isValidIdentifier*(self: TextServer; string: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "is_valid_identifier", 3927539163)
  methodbind.ptrcall(self, [getPtr string], bool)

proc isValidLetter*(self: TextServer; unicode: uint64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "is_valid_letter", 1116898809)
  methodbind.ptrcall(self, [getPtr unicode], bool)

proc stringToUpper*(self: TextServer; string: String; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "string_to_upper", 2664628024)
  methodbind.ptrcall(self, [getPtr string, getPtr language], String)

proc stringToLower*(self: TextServer; string: String; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "string_to_lower", 2664628024)
  methodbind.ptrcall(self, [getPtr string, getPtr language], String)

proc stringToTitle*(self: TextServer; string: String; language: String = newGdString()): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "string_to_title", 2664628024)
  methodbind.ptrcall(self, [getPtr string, getPtr language], String)

proc parseStructuredText*(self: TextServer; parserType: TextServer_StructuredTextParser; args: Array; text: String): TypedArray[Vector3i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextServer, "parse_structured_text", 3310685015)
  methodbind.ptrcall(self, [getPtr parserType, getPtr args, getPtr text], TypedArray[Vector3i])
