{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc hasFeature*(self: TextServer; feature: TextServer_Feature): bool =
  expandMethodBind(className TextServer, "has_feature", 3967367083)
  var `?param` = [getPtr feature]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getName*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getFeatures*(self: TextServer): int64 =
  expandMethodBind(className TextServer, "get_features", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc loadSupportData*(self: TextServer; filename: String): bool =
  expandMethodBind(className TextServer, "load_support_data", 2323990056)
  var `?param` = [getPtr filename]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSupportDataFilename*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_support_data_filename", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getSupportDataInfo*(self: TextServer): String =
  expandMethodBind(className TextServer, "get_support_data_info", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc saveSupportData*(self: TextServer; filename: String): bool =
  expandMethodBind(className TextServer, "save_support_data", 3927539163)
  var `?param` = [getPtr filename]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isLocaleRightToLeft*(self: TextServer; locale: String): bool =
  expandMethodBind(className TextServer, "is_locale_right_to_left", 3927539163)
  var `?param` = [getPtr locale]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc nameToTag*(self: TextServer; name: String): int64 =
  expandMethodBind(className TextServer, "name_to_tag", 1321353865)
  var `?param` = [getPtr name]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc tagToName*(self: TextServer; tag: int64): String =
  expandMethodBind(className TextServer, "tag_to_name", 844755477)
  var `?param` = [getPtr tag]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc has*(self: TextServer; rid: Rid): bool =
  expandMethodBind(className TextServer, "has", 3521089500)
  var `?param` = [getPtr rid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc freeRid*(self: TextServer; rid: Rid): void =
  expandMethodBind(className TextServer, "free_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc createFont*(self: TextServer): Rid =
  expandMethodBind(className TextServer, "create_font", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc createFontLinkedVariation*(self: TextServer; fontRid: Rid): Rid =
  expandMethodBind(className TextServer, "create_font_linked_variation", 41030802)
  var `?param` = [getPtr fontRid]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc fontSetData*(self: TextServer; fontRid: Rid; data: PackedByteArray): void =
  expandMethodBind(className TextServer, "font_set_data", 1355495400)
  var `?param` = [getPtr fontRid, getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontSetFaceIndex*(self: TextServer; fontRid: Rid; faceIndex: int64): void =
  expandMethodBind(className TextServer, "font_set_face_index", 3411492887)
  var `?param` = [getPtr fontRid, getPtr faceIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetFaceIndex*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_face_index", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontGetFaceCount*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_face_count", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetStyle*(self: TextServer; fontRid: Rid; style: set[TextServer_FontStyle]): void =
  expandMethodBind(className TextServer, "font_set_style", 898466325)
  var `?param` = [getPtr fontRid, getPtr style]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetStyle*(self: TextServer; fontRid: Rid): set[TextServer_FontStyle] =
  expandMethodBind(className TextServer, "font_get_style", 3082502592)
  var `?param` = [getPtr fontRid]
  var ret: encoded set[TextServer_FontStyle]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[TextServer_FontStyle])

proc fontSetName*(self: TextServer; fontRid: Rid; name: String): void =
  expandMethodBind(className TextServer, "font_set_name", 2726140452)
  var `?param` = [getPtr fontRid, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetName*(self: TextServer; fontRid: Rid): String =
  expandMethodBind(className TextServer, "font_get_name", 642473191)
  var `?param` = [getPtr fontRid]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc fontGetOtNameStrings*(self: TextServer; fontRid: Rid): Dictionary =
  expandMethodBind(className TextServer, "font_get_ot_name_strings", 1882737106)
  var `?param` = [getPtr fontRid]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSetStyleName*(self: TextServer; fontRid: Rid; name: String): void =
  expandMethodBind(className TextServer, "font_set_style_name", 2726140452)
  var `?param` = [getPtr fontRid, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetStyleName*(self: TextServer; fontRid: Rid): String =
  expandMethodBind(className TextServer, "font_get_style_name", 642473191)
  var `?param` = [getPtr fontRid]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc fontSetWeight*(self: TextServer; fontRid: Rid; weight: int64): void =
  expandMethodBind(className TextServer, "font_set_weight", 3411492887)
  var `?param` = [getPtr fontRid, getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetWeight*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_weight", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetStretch*(self: TextServer; fontRid: Rid; weight: int64): void =
  expandMethodBind(className TextServer, "font_set_stretch", 3411492887)
  var `?param` = [getPtr fontRid, getPtr weight]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetStretch*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_stretch", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetAntialiasing*(self: TextServer; fontRid: Rid; antialiasing: TextServer_FontAntialiasing): void =
  expandMethodBind(className TextServer, "font_set_antialiasing", 958337235)
  var `?param` = [getPtr fontRid, getPtr antialiasing]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetAntialiasing*(self: TextServer; fontRid: Rid): TextServer_FontAntialiasing =
  expandMethodBind(className TextServer, "font_get_antialiasing", 3389420495)
  var `?param` = [getPtr fontRid]
  var ret: encoded TextServer_FontAntialiasing
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_FontAntialiasing)

proc fontSetDisableEmbeddedBitmaps*(self: TextServer; fontRid: Rid; disableEmbeddedBitmaps: bool): void =
  expandMethodBind(className TextServer, "font_set_disable_embedded_bitmaps", 1265174801)
  var `?param` = [getPtr fontRid, getPtr disableEmbeddedBitmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetDisableEmbeddedBitmaps*(self: TextServer; fontRid: Rid): bool =
  expandMethodBind(className TextServer, "font_get_disable_embedded_bitmaps", 4155700596)
  var `?param` = [getPtr fontRid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetGenerateMipmaps*(self: TextServer; fontRid: Rid; generateMipmaps: bool): void =
  expandMethodBind(className TextServer, "font_set_generate_mipmaps", 1265174801)
  var `?param` = [getPtr fontRid, getPtr generateMipmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGenerateMipmaps*(self: TextServer; fontRid: Rid): bool =
  expandMethodBind(className TextServer, "font_get_generate_mipmaps", 4155700596)
  var `?param` = [getPtr fontRid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetMultichannelSignedDistanceField*(self: TextServer; fontRid: Rid; msdf: bool): void =
  expandMethodBind(className TextServer, "font_set_multichannel_signed_distance_field", 1265174801)
  var `?param` = [getPtr fontRid, getPtr msdf]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontIsMultichannelSignedDistanceField*(self: TextServer; fontRid: Rid): bool =
  expandMethodBind(className TextServer, "font_is_multichannel_signed_distance_field", 4155700596)
  var `?param` = [getPtr fontRid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetMsdfPixelRange*(self: TextServer; fontRid: Rid; msdfPixelRange: int64): void =
  expandMethodBind(className TextServer, "font_set_msdf_pixel_range", 3411492887)
  var `?param` = [getPtr fontRid, getPtr msdfPixelRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetMsdfPixelRange*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_msdf_pixel_range", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetMsdfSize*(self: TextServer; fontRid: Rid; msdfSize: int64): void =
  expandMethodBind(className TextServer, "font_set_msdf_size", 3411492887)
  var `?param` = [getPtr fontRid, getPtr msdfSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetMsdfSize*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_msdf_size", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetFixedSize*(self: TextServer; fontRid: Rid; fixedSize: int64): void =
  expandMethodBind(className TextServer, "font_set_fixed_size", 3411492887)
  var `?param` = [getPtr fontRid, getPtr fixedSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetFixedSize*(self: TextServer; fontRid: Rid): int64 =
  expandMethodBind(className TextServer, "font_get_fixed_size", 2198884583)
  var `?param` = [getPtr fontRid]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetFixedSizeScaleMode*(self: TextServer; fontRid: Rid; fixedSizeScaleMode: TextServer_FixedSizeScaleMode): void =
  expandMethodBind(className TextServer, "font_set_fixed_size_scale_mode", 1029390307)
  var `?param` = [getPtr fontRid, getPtr fixedSizeScaleMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetFixedSizeScaleMode*(self: TextServer; fontRid: Rid): TextServer_FixedSizeScaleMode =
  expandMethodBind(className TextServer, "font_get_fixed_size_scale_mode", 4113120379)
  var `?param` = [getPtr fontRid]
  var ret: encoded TextServer_FixedSizeScaleMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_FixedSizeScaleMode)

proc fontSetAllowSystemFallback*(self: TextServer; fontRid: Rid; allowSystemFallback: bool): void =
  expandMethodBind(className TextServer, "font_set_allow_system_fallback", 1265174801)
  var `?param` = [getPtr fontRid, getPtr allowSystemFallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontIsAllowSystemFallback*(self: TextServer; fontRid: Rid): bool =
  expandMethodBind(className TextServer, "font_is_allow_system_fallback", 4155700596)
  var `?param` = [getPtr fontRid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetForceAutohinter*(self: TextServer; fontRid: Rid; forceAutohinter: bool): void =
  expandMethodBind(className TextServer, "font_set_force_autohinter", 1265174801)
  var `?param` = [getPtr fontRid, getPtr forceAutohinter]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontIsForceAutohinter*(self: TextServer; fontRid: Rid): bool =
  expandMethodBind(className TextServer, "font_is_force_autohinter", 4155700596)
  var `?param` = [getPtr fontRid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetHinting*(self: TextServer; fontRid: Rid; hinting: TextServer_Hinting): void =
  expandMethodBind(className TextServer, "font_set_hinting", 1520010864)
  var `?param` = [getPtr fontRid, getPtr hinting]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetHinting*(self: TextServer; fontRid: Rid): TextServer_Hinting =
  expandMethodBind(className TextServer, "font_get_hinting", 3971592737)
  var `?param` = [getPtr fontRid]
  var ret: encoded TextServer_Hinting
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_Hinting)

proc fontSetSubpixelPositioning*(self: TextServer; fontRid: Rid; subpixelPositioning: TextServer_SubpixelPositioning): void =
  expandMethodBind(className TextServer, "font_set_subpixel_positioning", 3830459669)
  var `?param` = [getPtr fontRid, getPtr subpixelPositioning]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetSubpixelPositioning*(self: TextServer; fontRid: Rid): TextServer_SubpixelPositioning =
  expandMethodBind(className TextServer, "font_get_subpixel_positioning", 2752233671)
  var `?param` = [getPtr fontRid]
  var ret: encoded TextServer_SubpixelPositioning
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_SubpixelPositioning)

proc fontSetEmbolden*(self: TextServer; fontRid: Rid; strength: float64): void =
  expandMethodBind(className TextServer, "font_set_embolden", 1794382983)
  var `?param` = [getPtr fontRid, getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetEmbolden*(self: TextServer; fontRid: Rid): float64 =
  expandMethodBind(className TextServer, "font_get_embolden", 866169185)
  var `?param` = [getPtr fontRid]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetSpacing*(self: TextServer; fontRid: Rid; spacing: TextServer_SpacingType; value: int64): void =
  expandMethodBind(className TextServer, "font_set_spacing", 1307259930)
  var `?param` = [getPtr fontRid, getPtr spacing, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetSpacing*(self: TextServer; fontRid: Rid; spacing: TextServer_SpacingType): int64 =
  expandMethodBind(className TextServer, "font_get_spacing", 1213653558)
  var `?param` = [getPtr fontRid, getPtr spacing]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetBaselineOffset*(self: TextServer; fontRid: Rid; baselineOffset: float64): void =
  expandMethodBind(className TextServer, "font_set_baseline_offset", 1794382983)
  var `?param` = [getPtr fontRid, getPtr baselineOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetBaselineOffset*(self: TextServer; fontRid: Rid): float64 =
  expandMethodBind(className TextServer, "font_get_baseline_offset", 866169185)
  var `?param` = [getPtr fontRid]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetTransform*(self: TextServer; fontRid: Rid; transform: Transform2D): void =
  expandMethodBind(className TextServer, "font_set_transform", 1246044741)
  var `?param` = [getPtr fontRid, getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetTransform*(self: TextServer; fontRid: Rid): Transform2D =
  expandMethodBind(className TextServer, "font_get_transform", 213527486)
  var `?param` = [getPtr fontRid]
  var ret: encoded Transform2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform2D)

proc fontSetVariationCoordinates*(self: TextServer; fontRid: Rid; variationCoordinates: Dictionary): void =
  expandMethodBind(className TextServer, "font_set_variation_coordinates", 1217542888)
  var `?param` = [getPtr fontRid, getPtr variationCoordinates]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetVariationCoordinates*(self: TextServer; fontRid: Rid): Dictionary =
  expandMethodBind(className TextServer, "font_get_variation_coordinates", 1882737106)
  var `?param` = [getPtr fontRid]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSetOversampling*(self: TextServer; fontRid: Rid; oversampling: float64): void =
  expandMethodBind(className TextServer, "font_set_oversampling", 1794382983)
  var `?param` = [getPtr fontRid, getPtr oversampling]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetOversampling*(self: TextServer; fontRid: Rid): float64 =
  expandMethodBind(className TextServer, "font_get_oversampling", 866169185)
  var `?param` = [getPtr fontRid]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontGetSizeCacheList*(self: TextServer; fontRid: Rid): TypedArray[Vector2i] =
  expandMethodBind(className TextServer, "font_get_size_cache_list", 2684255073)
  var `?param` = [getPtr fontRid]
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc fontClearSizeCache*(self: TextServer; fontRid: Rid): void =
  expandMethodBind(className TextServer, "font_clear_size_cache", 2722037293)
  var `?param` = [getPtr fontRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontRemoveSizeCache*(self: TextServer; fontRid: Rid; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_remove_size_cache", 2450610377)
  var `?param` = [getPtr fontRid, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontSetAscent*(self: TextServer; fontRid: Rid; size: int64; ascent: float64): void =
  expandMethodBind(className TextServer, "font_set_ascent", 1892459533)
  var `?param` = [getPtr fontRid, getPtr size, getPtr ascent]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetAscent*(self: TextServer; fontRid: Rid; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_ascent", 755457166)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetDescent*(self: TextServer; fontRid: Rid; size: int64; descent: float64): void =
  expandMethodBind(className TextServer, "font_set_descent", 1892459533)
  var `?param` = [getPtr fontRid, getPtr size, getPtr descent]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetDescent*(self: TextServer; fontRid: Rid; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_descent", 755457166)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetUnderlinePosition*(self: TextServer; fontRid: Rid; size: int64; underlinePosition: float64): void =
  expandMethodBind(className TextServer, "font_set_underline_position", 1892459533)
  var `?param` = [getPtr fontRid, getPtr size, getPtr underlinePosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetUnderlinePosition*(self: TextServer; fontRid: Rid; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_underline_position", 755457166)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetUnderlineThickness*(self: TextServer; fontRid: Rid; size: int64; underlineThickness: float64): void =
  expandMethodBind(className TextServer, "font_set_underline_thickness", 1892459533)
  var `?param` = [getPtr fontRid, getPtr size, getPtr underlineThickness]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetUnderlineThickness*(self: TextServer; fontRid: Rid; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_underline_thickness", 755457166)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontSetScale*(self: TextServer; fontRid: Rid; size: int64; scale: float64): void =
  expandMethodBind(className TextServer, "font_set_scale", 1892459533)
  var `?param` = [getPtr fontRid, getPtr size, getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetScale*(self: TextServer; fontRid: Rid; size: int64): float64 =
  expandMethodBind(className TextServer, "font_get_scale", 755457166)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc fontGetTextureCount*(self: TextServer; fontRid: Rid; size: Vector2i): int64 =
  expandMethodBind(className TextServer, "font_get_texture_count", 1311001310)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontClearTextures*(self: TextServer; fontRid: Rid; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_clear_textures", 2450610377)
  var `?param` = [getPtr fontRid, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontRemoveTexture*(self: TextServer; fontRid: Rid; size: Vector2i; textureIndex: int64): void =
  expandMethodBind(className TextServer, "font_remove_texture", 3810512262)
  var `?param` = [getPtr fontRid, getPtr size, getPtr textureIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontSetTextureImage*(self: TextServer; fontRid: Rid; size: Vector2i; textureIndex: int64; image: gdref Image): void =
  expandMethodBind(className TextServer, "font_set_texture_image", 2354485091)
  var `?param` = [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr image]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetTextureImage*(self: TextServer; fontRid: Rid; size: Vector2i; textureIndex: int64): gdref Image =
  expandMethodBind(className TextServer, "font_get_texture_image", 2451761155)
  var `?param` = [getPtr fontRid, getPtr size, getPtr textureIndex]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc fontSetTextureOffsets*(self: TextServer; fontRid: Rid; size: Vector2i; textureIndex: int64; offset: PackedInt32Array): void =
  expandMethodBind(className TextServer, "font_set_texture_offsets", 3005398047)
  var `?param` = [getPtr fontRid, getPtr size, getPtr textureIndex, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetTextureOffsets*(self: TextServer; fontRid: Rid; size: Vector2i; textureIndex: int64): PackedInt32Array =
  expandMethodBind(className TextServer, "font_get_texture_offsets", 3420028887)
  var `?param` = [getPtr fontRid, getPtr size, getPtr textureIndex]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc fontGetGlyphList*(self: TextServer; fontRid: Rid; size: Vector2i): PackedInt32Array =
  expandMethodBind(className TextServer, "font_get_glyph_list", 46086620)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc fontClearGlyphs*(self: TextServer; fontRid: Rid; size: Vector2i): void =
  expandMethodBind(className TextServer, "font_clear_glyphs", 2450610377)
  var `?param` = [getPtr fontRid, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontRemoveGlyph*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): void =
  expandMethodBind(className TextServer, "font_remove_glyph", 3810512262)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphAdvance*(self: TextServer; fontRid: Rid; size: int64; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_advance", 2555689501)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphAdvance*(self: TextServer; fontRid: Rid; size: int64; glyph: int64; advance: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_advance", 3219397315)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph, getPtr advance]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphOffset*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_offset", 513728628)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphOffset*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64; offset: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_offset", 1812632090)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphSize*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_size", 513728628)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc fontSetGlyphSize*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64; glSize: Vector2): void =
  expandMethodBind(className TextServer, "font_set_glyph_size", 1812632090)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph, getPtr glSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphUvRect*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): Rect2 =
  expandMethodBind(className TextServer, "font_get_glyph_uv_rect", 2274268786)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc fontSetGlyphUvRect*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64; uvRect: Rect2): void =
  expandMethodBind(className TextServer, "font_set_glyph_uv_rect", 1973324081)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph, getPtr uvRect]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphTextureIdx*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): int64 =
  expandMethodBind(className TextServer, "font_get_glyph_texture_idx", 4292800474)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontSetGlyphTextureIdx*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64; textureIdx: int64): void =
  expandMethodBind(className TextServer, "font_set_glyph_texture_idx", 4254580980)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph, getPtr textureIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetGlyphTextureRid*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): Rid =
  expandMethodBind(className TextServer, "font_get_glyph_texture_rid", 1451696141)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc fontGetGlyphTextureSize*(self: TextServer; fontRid: Rid; size: Vector2i; glyph: int64): Vector2 =
  expandMethodBind(className TextServer, "font_get_glyph_texture_size", 513728628)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyph]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc fontGetGlyphContours*(self: TextServer; font: Rid; size: int64; index: int64): Dictionary =
  expandMethodBind(className TextServer, "font_get_glyph_contours", 2903964473)
  var `?param` = [getPtr font, getPtr size, getPtr index]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontGetKerningList*(self: TextServer; fontRid: Rid; size: int64): TypedArray[Vector2i] =
  expandMethodBind(className TextServer, "font_get_kerning_list", 1778388067)
  var `?param` = [getPtr fontRid, getPtr size]
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc fontClearKerningMap*(self: TextServer; fontRid: Rid; size: int64): void =
  expandMethodBind(className TextServer, "font_clear_kerning_map", 3411492887)
  var `?param` = [getPtr fontRid, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontRemoveKerning*(self: TextServer; fontRid: Rid; size: int64; glyphPair: Vector2i): void =
  expandMethodBind(className TextServer, "font_remove_kerning", 2141860016)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyphPair]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontSetKerning*(self: TextServer; fontRid: Rid; size: int64; glyphPair: Vector2i; kerning: Vector2): void =
  expandMethodBind(className TextServer, "font_set_kerning", 3630965883)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyphPair, getPtr kerning]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetKerning*(self: TextServer; fontRid: Rid; size: int64; glyphPair: Vector2i): Vector2 =
  expandMethodBind(className TextServer, "font_get_kerning", 1019980169)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyphPair]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc fontGetGlyphIndex*(self: TextServer; fontRid: Rid; size: int64; char: int64; variationSelector: int64): int64 =
  expandMethodBind(className TextServer, "font_get_glyph_index", 1765635060)
  var `?param` = [getPtr fontRid, getPtr size, getPtr char, getPtr variationSelector]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontGetCharFromGlyphIndex*(self: TextServer; fontRid: Rid; size: int64; glyphIndex: int64): int64 =
  expandMethodBind(className TextServer, "font_get_char_from_glyph_index", 2156738276)
  var `?param` = [getPtr fontRid, getPtr size, getPtr glyphIndex]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc fontHasChar*(self: TextServer; fontRid: Rid; char: int64): bool =
  expandMethodBind(className TextServer, "font_has_char", 3120086654)
  var `?param` = [getPtr fontRid, getPtr char]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontGetSupportedChars*(self: TextServer; fontRid: Rid): String =
  expandMethodBind(className TextServer, "font_get_supported_chars", 642473191)
  var `?param` = [getPtr fontRid]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc fontRenderRange*(self: TextServer; fontRid: Rid; size: Vector2i; start: int64; `end`: int64): void =
  expandMethodBind(className TextServer, "font_render_range", 4254580980)
  var `?param` = [getPtr fontRid, getPtr size, getPtr start, getPtr `end`]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontRenderGlyph*(self: TextServer; fontRid: Rid; size: Vector2i; index: int64): void =
  expandMethodBind(className TextServer, "font_render_glyph", 3810512262)
  var `?param` = [getPtr fontRid, getPtr size, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontDrawGlyph*(self: TextServer; fontRid: Rid; canvas: Rid; size: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "font_draw_glyph", 1339057948)
  var `?param` = [getPtr fontRid, getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontDrawGlyphOutline*(self: TextServer; fontRid: Rid; canvas: Rid; size: int64; outlineSize: int64; pos: Vector2; index: int64; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "font_draw_glyph_outline", 2626165733)
  var `?param` = [getPtr fontRid, getPtr canvas, getPtr size, getPtr outlineSize, getPtr pos, getPtr index, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontIsLanguageSupported*(self: TextServer; fontRid: Rid; language: String): bool =
  expandMethodBind(className TextServer, "font_is_language_supported", 3199320846)
  var `?param` = [getPtr fontRid, getPtr language]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetLanguageSupportOverride*(self: TextServer; fontRid: Rid; language: String; supported: bool): void =
  expandMethodBind(className TextServer, "font_set_language_support_override", 2313957094)
  var `?param` = [getPtr fontRid, getPtr language, getPtr supported]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetLanguageSupportOverride*(self: TextServer; fontRid: Rid; language: String): bool =
  expandMethodBind(className TextServer, "font_get_language_support_override", 2829184646)
  var `?param` = [getPtr fontRid, getPtr language]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontRemoveLanguageSupportOverride*(self: TextServer; fontRid: Rid; language: String): void =
  expandMethodBind(className TextServer, "font_remove_language_support_override", 2726140452)
  var `?param` = [getPtr fontRid, getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetLanguageSupportOverrides*(self: TextServer; fontRid: Rid): PackedStringArray =
  expandMethodBind(className TextServer, "font_get_language_support_overrides", 2801473409)
  var `?param` = [getPtr fontRid]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc fontIsScriptSupported*(self: TextServer; fontRid: Rid; script: String): bool =
  expandMethodBind(className TextServer, "font_is_script_supported", 3199320846)
  var `?param` = [getPtr fontRid, getPtr script]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontSetScriptSupportOverride*(self: TextServer; fontRid: Rid; script: String; supported: bool): void =
  expandMethodBind(className TextServer, "font_set_script_support_override", 2313957094)
  var `?param` = [getPtr fontRid, getPtr script, getPtr supported]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetScriptSupportOverride*(self: TextServer; fontRid: Rid; script: String): bool =
  expandMethodBind(className TextServer, "font_get_script_support_override", 2829184646)
  var `?param` = [getPtr fontRid, getPtr script]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc fontRemoveScriptSupportOverride*(self: TextServer; fontRid: Rid; script: String): void =
  expandMethodBind(className TextServer, "font_remove_script_support_override", 2726140452)
  var `?param` = [getPtr fontRid, getPtr script]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetScriptSupportOverrides*(self: TextServer; fontRid: Rid): PackedStringArray =
  expandMethodBind(className TextServer, "font_get_script_support_overrides", 2801473409)
  var `?param` = [getPtr fontRid]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc fontSetOpentypeFeatureOverrides*(self: TextServer; fontRid: Rid; overrides: Dictionary): void =
  expandMethodBind(className TextServer, "font_set_opentype_feature_overrides", 1217542888)
  var `?param` = [getPtr fontRid, getPtr overrides]
  methodbind.ptrcall(self, addr `?param`[0])

proc fontGetOpentypeFeatureOverrides*(self: TextServer; fontRid: Rid): Dictionary =
  expandMethodBind(className TextServer, "font_get_opentype_feature_overrides", 1882737106)
  var `?param` = [getPtr fontRid]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSupportedFeatureList*(self: TextServer; fontRid: Rid): Dictionary =
  expandMethodBind(className TextServer, "font_supported_feature_list", 1882737106)
  var `?param` = [getPtr fontRid]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontSupportedVariationList*(self: TextServer; fontRid: Rid): Dictionary =
  expandMethodBind(className TextServer, "font_supported_variation_list", 1882737106)
  var `?param` = [getPtr fontRid]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc fontGetGlobalOversampling*(self: TextServer): float64 =
  expandMethodBind(className TextServer, "font_get_global_oversampling", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc fontSetGlobalOversampling*(self: TextServer; oversampling: float64): void =
  expandMethodBind(className TextServer, "font_set_global_oversampling", 373806689)
  var `?param` = [getPtr oversampling]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHexCodeBoxSize*(self: TextServer; size: int64; index: int64): Vector2 =
  expandMethodBind(className TextServer, "get_hex_code_box_size", 3016396712)
  var `?param` = [getPtr size, getPtr index]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc drawHexCodeBox*(self: TextServer; canvas: Rid; size: int64; pos: Vector2; index: int64; color: Color): void =
  expandMethodBind(className TextServer, "draw_hex_code_box", 1602046441)
  var `?param` = [getPtr canvas, getPtr size, getPtr pos, getPtr index, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc createShapedText*(self: TextServer; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): Rid =
  expandMethodBind(className TextServer, "create_shaped_text", 1231398698)
  var `?param` = [getPtr direction, getPtr orientation]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shapedTextClear*(self: TextServer; rid: Rid): void =
  expandMethodBind(className TextServer, "shaped_text_clear", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextSetDirection*(self: TextServer; shaped: Rid; direction: TextServer_Direction = directionAuto): void =
  expandMethodBind(className TextServer, "shaped_text_set_direction", 1551430183)
  var `?param` = [getPtr shaped, getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetDirection*(self: TextServer; shaped: Rid): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_direction", 3065904362)
  var `?param` = [getPtr shaped]
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc shapedTextGetInferredDirection*(self: TextServer; shaped: Rid): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_inferred_direction", 3065904362)
  var `?param` = [getPtr shaped]
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc shapedTextSetBidiOverride*(self: TextServer; shaped: Rid; override: Array): void =
  expandMethodBind(className TextServer, "shaped_text_set_bidi_override", 684822712)
  var `?param` = [getPtr shaped, getPtr override]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextSetCustomPunctuation*(self: TextServer; shaped: Rid; punct: String): void =
  expandMethodBind(className TextServer, "shaped_text_set_custom_punctuation", 2726140452)
  var `?param` = [getPtr shaped, getPtr punct]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetCustomPunctuation*(self: TextServer; shaped: Rid): String =
  expandMethodBind(className TextServer, "shaped_text_get_custom_punctuation", 642473191)
  var `?param` = [getPtr shaped]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc shapedTextSetCustomEllipsis*(self: TextServer; shaped: Rid; char: int64): void =
  expandMethodBind(className TextServer, "shaped_text_set_custom_ellipsis", 3411492887)
  var `?param` = [getPtr shaped, getPtr char]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetCustomEllipsis*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_custom_ellipsis", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextSetOrientation*(self: TextServer; shaped: Rid; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className TextServer, "shaped_text_set_orientation", 3019609126)
  var `?param` = [getPtr shaped, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetOrientation*(self: TextServer; shaped: Rid): TextServer_Orientation =
  expandMethodBind(className TextServer, "shaped_text_get_orientation", 3142708106)
  var `?param` = [getPtr shaped]
  var ret: encoded TextServer_Orientation
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_Orientation)

proc shapedTextSetPreserveInvalid*(self: TextServer; shaped: Rid; enabled: bool): void =
  expandMethodBind(className TextServer, "shaped_text_set_preserve_invalid", 1265174801)
  var `?param` = [getPtr shaped, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetPreserveInvalid*(self: TextServer; shaped: Rid): bool =
  expandMethodBind(className TextServer, "shaped_text_get_preserve_invalid", 4155700596)
  var `?param` = [getPtr shaped]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextSetPreserveControl*(self: TextServer; shaped: Rid; enabled: bool): void =
  expandMethodBind(className TextServer, "shaped_text_set_preserve_control", 1265174801)
  var `?param` = [getPtr shaped, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetPreserveControl*(self: TextServer; shaped: Rid): bool =
  expandMethodBind(className TextServer, "shaped_text_get_preserve_control", 4155700596)
  var `?param` = [getPtr shaped]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextSetSpacing*(self: TextServer; shaped: Rid; spacing: TextServer_SpacingType; value: int64): void =
  expandMethodBind(className TextServer, "shaped_text_set_spacing", 1307259930)
  var `?param` = [getPtr shaped, getPtr spacing, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetSpacing*(self: TextServer; shaped: Rid; spacing: TextServer_SpacingType): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_spacing", 1213653558)
  var `?param` = [getPtr shaped, getPtr spacing]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextAddString*(self: TextServer; shaped: Rid; text: String; fonts: TypedArray[Rid]; size: int64; opentypeFeatures: Dictionary = dictionary(); language: String = gdstring""; meta: Variant = default(Variant)): bool =
  expandMethodBind(className TextServer, "shaped_text_add_string", 623473029)
  var `?param` = [getPtr shaped, getPtr text, getPtr fonts, getPtr size, getPtr opentypeFeatures, getPtr language, getPtr meta]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextAddObject*(self: TextServer; shaped: Rid; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; length: int64 = 1; baseline: float64 = 0.0): bool =
  expandMethodBind(className TextServer, "shaped_text_add_object", 3664424789)
  var `?param` = [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr length, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextResizeObject*(self: TextServer; shaped: Rid; key: Variant; size: Vector2; inlineAlign: InlineAlignment = inlineAlignmentCenter; baseline: float64 = 0.0): bool =
  expandMethodBind(className TextServer, "shaped_text_resize_object", 790361552)
  var `?param` = [getPtr shaped, getPtr key, getPtr size, getPtr inlineAlign, getPtr baseline]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedGetSpanCount*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_get_span_count", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedGetSpanMeta*(self: TextServer; shaped: Rid; index: int64): Variant =
  expandMethodBind(className TextServer, "shaped_get_span_meta", 4069510997)
  var `?param` = [getPtr shaped, getPtr index]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc shapedSetSpanUpdateFont*(self: TextServer; shaped: Rid; index: int64; fonts: TypedArray[Rid]; size: int64; opentypeFeatures: Dictionary = dictionary()): void =
  expandMethodBind(className TextServer, "shaped_set_span_update_font", 2022725822)
  var `?param` = [getPtr shaped, getPtr index, getPtr fonts, getPtr size, getPtr opentypeFeatures]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextSubstr*(self: TextServer; shaped: Rid; start: int64; length: int64): Rid =
  expandMethodBind(className TextServer, "shaped_text_substr", 1937682086)
  var `?param` = [getPtr shaped, getPtr start, getPtr length]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shapedTextGetParent*(self: TextServer; shaped: Rid): Rid =
  expandMethodBind(className TextServer, "shaped_text_get_parent", 3814569979)
  var `?param` = [getPtr shaped]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

proc shapedTextFitToWidth*(self: TextServer; shaped: Rid; width: float64; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}): float64 =
  expandMethodBind(className TextServer, "shaped_text_fit_to_width", 530670926)
  var `?param` = [getPtr shaped, getPtr width, getPtr justificationFlags]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextTabAlign*(self: TextServer; shaped: Rid; tabStops: PackedFloat32Array): float64 =
  expandMethodBind(className TextServer, "shaped_text_tab_align", 1283669550)
  var `?param` = [getPtr shaped, getPtr tabStops]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextShape*(self: TextServer; shaped: Rid): bool =
  expandMethodBind(className TextServer, "shaped_text_shape", 3521089500)
  var `?param` = [getPtr shaped]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextIsReady*(self: TextServer; shaped: Rid): bool =
  expandMethodBind(className TextServer, "shaped_text_is_ready", 4155700596)
  var `?param` = [getPtr shaped]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextHasVisibleChars*(self: TextServer; shaped: Rid): bool =
  expandMethodBind(className TextServer, "shaped_text_has_visible_chars", 4155700596)
  var `?param` = [getPtr shaped]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc shapedTextGetGlyphs*(self: TextServer; shaped: Rid): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_get_glyphs", 2684255073)
  var `?param` = [getPtr shaped]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextSortLogical*(self: TextServer; shaped: Rid): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_sort_logical", 2670461153)
  var `?param` = [getPtr shaped]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextGetGlyphCount*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_glyph_count", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetRange*(self: TextServer; shaped: Rid): Vector2i =
  expandMethodBind(className TextServer, "shaped_text_get_range", 733700038)
  var `?param` = [getPtr shaped]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc shapedTextGetLineBreaksAdv*(self: TextServer; shaped: Rid; width: PackedFloat32Array; start: int64 = 0; once: bool = true; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_line_breaks_adv", 2376991424)
  var `?param` = [getPtr shaped, getPtr width, getPtr start, getPtr once, getPtr breakFlags]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetLineBreaks*(self: TextServer; shaped: Rid; width: float64; start: int64 = 0; breakFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_line_breaks", 2651359741)
  var `?param` = [getPtr shaped, getPtr width, getPtr start, getPtr breakFlags]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetWordBreaks*(self: TextServer; shaped: Rid; graphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsSpace, graphemeIsPunctuation}; skipGraphemeFlags: set[TextServer_GraphemeFlag] = {graphemeIsVirtual}): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_word_breaks", 4099476853)
  var `?param` = [getPtr shaped, getPtr graphemeFlags, getPtr skipGraphemeFlags]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextGetTrimPos*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_trim_pos", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetEllipsisPos*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_pos", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetEllipsisGlyphs*(self: TextServer; shaped: Rid): TypedArray[Dictionary] =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_glyphs", 2684255073)
  var `?param` = [getPtr shaped]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc shapedTextGetEllipsisGlyphCount*(self: TextServer; shaped: Rid): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_ellipsis_glyph_count", 2198884583)
  var `?param` = [getPtr shaped]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextOverrunTrimToWidth*(self: TextServer; shaped: Rid; width: float64 = 0; overrunTrimFlags: set[TextServer_TextOverrunFlag] = {}): void =
  expandMethodBind(className TextServer, "shaped_text_overrun_trim_to_width", 2723146520)
  var `?param` = [getPtr shaped, getPtr width, getPtr overrunTrimFlags]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetObjects*(self: TextServer; shaped: Rid): Array =
  expandMethodBind(className TextServer, "shaped_text_get_objects", 2684255073)
  var `?param` = [getPtr shaped]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc shapedTextGetObjectRect*(self: TextServer; shaped: Rid; key: Variant): Rect2 =
  expandMethodBind(className TextServer, "shaped_text_get_object_rect", 447978354)
  var `?param` = [getPtr shaped, getPtr key]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc shapedTextGetObjectRange*(self: TextServer; shaped: Rid; key: Variant): Vector2i =
  expandMethodBind(className TextServer, "shaped_text_get_object_range", 2524675647)
  var `?param` = [getPtr shaped, getPtr key]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc shapedTextGetObjectGlyph*(self: TextServer; shaped: Rid; key: Variant): int64 =
  expandMethodBind(className TextServer, "shaped_text_get_object_glyph", 1260085030)
  var `?param` = [getPtr shaped, getPtr key]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetSize*(self: TextServer; shaped: Rid): Vector2 =
  expandMethodBind(className TextServer, "shaped_text_get_size", 2440833711)
  var `?param` = [getPtr shaped]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc shapedTextGetAscent*(self: TextServer; shaped: Rid): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_ascent", 866169185)
  var `?param` = [getPtr shaped]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetDescent*(self: TextServer; shaped: Rid): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_descent", 866169185)
  var `?param` = [getPtr shaped]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetWidth*(self: TextServer; shaped: Rid): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_width", 866169185)
  var `?param` = [getPtr shaped]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetUnderlinePosition*(self: TextServer; shaped: Rid): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_underline_position", 866169185)
  var `?param` = [getPtr shaped]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetUnderlineThickness*(self: TextServer; shaped: Rid): float64 =
  expandMethodBind(className TextServer, "shaped_text_get_underline_thickness", 866169185)
  var `?param` = [getPtr shaped]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc shapedTextGetCarets*(self: TextServer; shaped: Rid; position: int64): Dictionary =
  expandMethodBind(className TextServer, "shaped_text_get_carets", 1574219346)
  var `?param` = [getPtr shaped, getPtr position]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc shapedTextGetSelection*(self: TextServer; shaped: Rid; start: int64; `end`: int64): PackedVector2Array =
  expandMethodBind(className TextServer, "shaped_text_get_selection", 3714187733)
  var `?param` = [getPtr shaped, getPtr start, getPtr `end`]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc shapedTextHitTestGrapheme*(self: TextServer; shaped: Rid; coords: float64): int64 =
  expandMethodBind(className TextServer, "shaped_text_hit_test_grapheme", 3149310417)
  var `?param` = [getPtr shaped, getPtr coords]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextHitTestPosition*(self: TextServer; shaped: Rid; coords: float64): int64 =
  expandMethodBind(className TextServer, "shaped_text_hit_test_position", 3149310417)
  var `?param` = [getPtr shaped, getPtr coords]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetGraphemeBounds*(self: TextServer; shaped: Rid; pos: int64): Vector2 =
  expandMethodBind(className TextServer, "shaped_text_get_grapheme_bounds", 2546185844)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc shapedTextNextGraphemePos*(self: TextServer; shaped: Rid; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_next_grapheme_pos", 1120910005)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextPrevGraphemePos*(self: TextServer; shaped: Rid; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_prev_grapheme_pos", 1120910005)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextGetCharacterBreaks*(self: TextServer; shaped: Rid): PackedInt32Array =
  expandMethodBind(className TextServer, "shaped_text_get_character_breaks", 788230395)
  var `?param` = [getPtr shaped]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc shapedTextNextCharacterPos*(self: TextServer; shaped: Rid; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_next_character_pos", 1120910005)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextPrevCharacterPos*(self: TextServer; shaped: Rid; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_prev_character_pos", 1120910005)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextClosestCharacterPos*(self: TextServer; shaped: Rid; pos: int64): int64 =
  expandMethodBind(className TextServer, "shaped_text_closest_character_pos", 1120910005)
  var `?param` = [getPtr shaped, getPtr pos]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc shapedTextDraw*(self: TextServer; shaped: Rid; canvas: Rid; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "shaped_text_draw", 880389142)
  var `?param` = [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextDrawOutline*(self: TextServer; shaped: Rid; canvas: Rid; pos: Vector2; clipL: float64 = -1; clipR: float64 = -1; outlineSize: int64 = 1; color: Color = color(1, 1, 1, 1)): void =
  expandMethodBind(className TextServer, "shaped_text_draw_outline", 2559184194)
  var `?param` = [getPtr shaped, getPtr canvas, getPtr pos, getPtr clipL, getPtr clipR, getPtr outlineSize, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc shapedTextGetDominantDirectionInRange*(self: TextServer; shaped: Rid; start: int64; `end`: int64): TextServer_Direction =
  expandMethodBind(className TextServer, "shaped_text_get_dominant_direction_in_range", 3326907668)
  var `?param` = [getPtr shaped, getPtr start, getPtr `end`]
  var ret: encoded TextServer_Direction
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_Direction)

proc formatNumber*(self: TextServer; number: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "format_number", 2664628024)
  var `?param` = [getPtr number, getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc parseNumber*(self: TextServer; number: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "parse_number", 2664628024)
  var `?param` = [getPtr number, getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc percentSign*(self: TextServer; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "percent_sign", 993269549)
  var `?param` = [getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc stringGetWordBreaks*(self: TextServer; string: String; language: String = gdstring""; charsPerLine: int64 = 0): PackedInt32Array =
  expandMethodBind(className TextServer, "string_get_word_breaks", 581857818)
  var `?param` = [getPtr string, getPtr language, getPtr charsPerLine]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc stringGetCharacterBreaks*(self: TextServer; string: String; language: String = gdstring""): PackedInt32Array =
  expandMethodBind(className TextServer, "string_get_character_breaks", 2333794773)
  var `?param` = [getPtr string, getPtr language]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc isConfusable*(self: TextServer; string: String; dict: PackedStringArray): int64 =
  expandMethodBind(className TextServer, "is_confusable", 1433197768)
  var `?param` = [getPtr string, getPtr dict]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc spoofCheck*(self: TextServer; string: String): bool =
  expandMethodBind(className TextServer, "spoof_check", 3927539163)
  var `?param` = [getPtr string]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc stripDiacritics*(self: TextServer; string: String): String =
  expandMethodBind(className TextServer, "strip_diacritics", 3135753539)
  var `?param` = [getPtr string]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isValidIdentifier*(self: TextServer; string: String): bool =
  expandMethodBind(className TextServer, "is_valid_identifier", 3927539163)
  var `?param` = [getPtr string]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isValidLetter*(self: TextServer; unicode: uint64): bool =
  expandMethodBind(className TextServer, "is_valid_letter", 1116898809)
  var `?param` = [getPtr unicode]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc stringToUpper*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_upper", 2664628024)
  var `?param` = [getPtr string, getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc stringToLower*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_lower", 2664628024)
  var `?param` = [getPtr string, getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc stringToTitle*(self: TextServer; string: String; language: String = gdstring""): String =
  expandMethodBind(className TextServer, "string_to_title", 2664628024)
  var `?param` = [getPtr string, getPtr language]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc parseStructuredText*(self: TextServer; parserType: TextServer_StructuredTextParser; args: Array; text: String): TypedArray[Vector3i] =
  expandMethodBind(className TextServer, "parse_structured_text", 3310685015)
  var `?param` = [getPtr parserType, getPtr args, getPtr text]
  var ret: encoded TypedArray[Vector3i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector3i])

const TextServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextServer]): Table[string, string] = TextServer_vmap