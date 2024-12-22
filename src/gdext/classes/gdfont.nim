{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setFallbacks*(self: Font; fallbacks: TypedArray[Font]): void =
  expandMethodBind(className Font, "set_fallbacks", 381264803)
  var `?param` = [getPtr fallbacks]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbacks*(self: Font): TypedArray[Font] =
  expandMethodBind(className Font, "get_fallbacks", 3995934104)
  var ret: encoded TypedArray[Font]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Font])

proc findVariation*(self: Font; variationCoordinates: Dictionary; faceIndex: int32 = 0; strength: Float = 0.0; transform: Transform2D = transform2D(); spacingTop: int32 = 0; spacingBottom: int32 = 0; spacingSpace: int32 = 0; spacingGlyph: int32 = 0; baselineOffset: Float = 0.0): RID =
  expandMethodBind(className Font, "find_variation", 2553855095)
  var `?param` = [getPtr variationCoordinates, getPtr faceIndex, getPtr strength, getPtr transform, getPtr spacingTop, getPtr spacingBottom, getPtr spacingSpace, getPtr spacingGlyph, getPtr baselineOffset]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getRids*(self: Font): TypedArray[RID] =
  expandMethodBind(className Font, "get_rids", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc getHeight*(self: Font; fontSize: int32 = 16): Float =
  expandMethodBind(className Font, "get_height", 378113874)
  var `?param` = [getPtr fontSize]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getAscent*(self: Font; fontSize: int32 = 16): Float =
  expandMethodBind(className Font, "get_ascent", 378113874)
  var `?param` = [getPtr fontSize]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getDescent*(self: Font; fontSize: int32 = 16): Float =
  expandMethodBind(className Font, "get_descent", 378113874)
  var `?param` = [getPtr fontSize]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getUnderlinePosition*(self: Font; fontSize: int32 = 16): Float =
  expandMethodBind(className Font, "get_underline_position", 378113874)
  var `?param` = [getPtr fontSize]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getUnderlineThickness*(self: Font; fontSize: int32 = 16): Float =
  expandMethodBind(className Font, "get_underline_thickness", 378113874)
  var `?param` = [getPtr fontSize]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getFontName*(self: Font): String =
  expandMethodBind(className Font, "get_font_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getFontStyleName*(self: Font): String =
  expandMethodBind(className Font, "get_font_style_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getOtNameStrings*(self: Font): Dictionary =
  expandMethodBind(className Font, "get_ot_name_strings", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getFontStyle*(self: Font): set[TextServer_FontStyle] =
  expandMethodBind(className Font, "get_font_style", 2520224254)
  var ret: encoded set[TextServer_FontStyle]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[TextServer_FontStyle])

proc getFontWeight*(self: Font): int32 =
  expandMethodBind(className Font, "get_font_weight", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFontStretch*(self: Font): int32 =
  expandMethodBind(className Font, "get_font_stretch", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSpacing*(self: Font; spacing: TextServer_SpacingType): int32 =
  expandMethodBind(className Font, "get_spacing", 1310880908)
  var `?param` = [getPtr spacing]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getOpentypeFeatures*(self: Font): Dictionary =
  expandMethodBind(className Font, "get_opentype_features", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setCacheCapacity*(self: Font; singleLine: int32; multiLine: int32): void =
  expandMethodBind(className Font, "set_cache_capacity", 3937882851)
  var `?param` = [getPtr singleLine, getPtr multiLine]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStringSize*(self: Font; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): Vector2 =
  expandMethodBind(className Font, "get_string_size", 1868866121)
  var `?param` = [getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr justificationFlags, getPtr direction, getPtr orientation]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getMultilineStringSize*(self: Font; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): Vector2 =
  expandMethodBind(className Font, "get_multiline_string_size", 519636710)
  var `?param` = [getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc drawString*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className Font, "draw_string", 1983721962)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultilineString*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className Font, "draw_multiline_string", 1171506176)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawStringOutline*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className Font, "draw_string_outline", 623754045)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr size, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc drawMultilineStringOutline*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): void =
  expandMethodBind(className Font, "draw_multiline_string_outline", 3206388178)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr size, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCharSize*(self: Font; char: Int; fontSize: int32): Vector2 =
  expandMethodBind(className Font, "get_char_size", 3016396712)
  var `?param` = [getPtr char, getPtr fontSize]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc drawChar*(self: Font; canvasItem: RID; pos: Vector2; char: Int; fontSize: int32; modulate: Color = color(1, 1, 1, 1)): Float =
  expandMethodBind(className Font, "draw_char", 3815617597)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr char, getPtr fontSize, getPtr modulate]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc drawCharOutline*(self: Font; canvasItem: RID; pos: Vector2; char: Int; fontSize: int32; size: int32 = -1; modulate: Color = color(1, 1, 1, 1)): Float =
  expandMethodBind(className Font, "draw_char_outline", 209525354)
  var `?param` = [getPtr canvasItem, getPtr pos, getPtr char, getPtr fontSize, getPtr size, getPtr modulate]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc hasChar*(self: Font; char: Int): bool =
  expandMethodBind(className Font, "has_char", 1116898809)
  var `?param` = [getPtr char]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSupportedChars*(self: Font): String =
  expandMethodBind(className Font, "get_supported_chars", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isLanguageSupported*(self: Font; language: String): bool =
  expandMethodBind(className Font, "is_language_supported", 3927539163)
  var `?param` = [getPtr language]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isScriptSupported*(self: Font; script: String): bool =
  expandMethodBind(className Font, "is_script_supported", 3927539163)
  var `?param` = [getPtr script]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSupportedFeatureList*(self: Font): Dictionary =
  expandMethodBind(className Font, "get_supported_feature_list", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getSupportedVariationList*(self: Font): Dictionary =
  expandMethodBind(className Font, "get_supported_variation_list", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getFaceCount*(self: Font): int64 =
  expandMethodBind(className Font, "get_face_count", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

template fallbacks*(self: Font): untyped = self.getFallbacks()
template `fallbacks=`*(self: Font; value) = self.setFallbacks(value)

const Font_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Font]): Table[string, string] = Font_vmap