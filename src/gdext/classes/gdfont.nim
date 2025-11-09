{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Font, Resource)

proc setFallbacks*(self: Font; fallbacks: TypedArray[gdref Font]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "set_fallbacks", 381264803)
  methodbind.ptrcall(self, [getPtr fallbacks], void)

proc getFallbacks*(self: Font): TypedArray[gdref Font] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_fallbacks", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref Font])

proc findVariation*(self: Font; variationCoordinates: Dictionary; faceIndex: int32 = 0; strength: Float = 0.0; transform: Transform2D = transform2D(); spacingTop: int32 = 0; spacingBottom: int32 = 0; spacingSpace: int32 = 0; spacingGlyph: int32 = 0; baselineOffset: Float = 0.0): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "find_variation", 2553855095)
  methodbind.ptrcall(self, [getPtr variationCoordinates, getPtr faceIndex, getPtr strength, getPtr transform, getPtr spacingTop, getPtr spacingBottom, getPtr spacingSpace, getPtr spacingGlyph, getPtr baselineOffset], RID)

proc getRids*(self: Font): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_rids", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc getHeight*(self: Font; fontSize: int32 = 16): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_height", 378113874)
  methodbind.ptrcall(self, [getPtr fontSize], Float)

proc getAscent*(self: Font; fontSize: int32 = 16): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_ascent", 378113874)
  methodbind.ptrcall(self, [getPtr fontSize], Float)

proc getDescent*(self: Font; fontSize: int32 = 16): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_descent", 378113874)
  methodbind.ptrcall(self, [getPtr fontSize], Float)

proc getUnderlinePosition*(self: Font; fontSize: int32 = 16): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_underline_position", 378113874)
  methodbind.ptrcall(self, [getPtr fontSize], Float)

proc getUnderlineThickness*(self: Font; fontSize: int32 = 16): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_underline_thickness", 378113874)
  methodbind.ptrcall(self, [getPtr fontSize], Float)

proc getFontName*(self: Font): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_font_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getFontStyleName*(self: Font): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_font_style_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getOtNameStrings*(self: Font): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_ot_name_strings", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getFontStyle*(self: Font): set[TextServer_FontStyle] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_font_style", 2520224254)
  methodbind.ptrcall(self, [], set[TextServer_FontStyle])

proc getFontWeight*(self: Font): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_font_weight", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFontStretch*(self: Font): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_font_stretch", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSpacing*(self: Font; spacing: TextServer_SpacingType): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_spacing", 1310880908)
  methodbind.ptrcall(self, [getPtr spacing], int32)

proc getOpentypeFeatures*(self: Font): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_opentype_features", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc setCacheCapacity*(self: Font; singleLine: int32; multiLine: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "set_cache_capacity", 3937882851)
  methodbind.ptrcall(self, [getPtr singleLine, getPtr multiLine], void)

proc getStringSize*(self: Font; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_string_size", 1868866121)
  methodbind.ptrcall(self, [getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr justificationFlags, getPtr direction, getPtr orientation], Vector2)

proc getMultilineStringSize*(self: Font; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_multiline_string_size", 519636710)
  methodbind.ptrcall(self, [getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation], Vector2)

proc drawString*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_string", 1976686372)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawMultilineString*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_multiline_string", 2686601589)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawStringOutline*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_string_outline", 701417663)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr size, getPtr modulate, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc drawMultilineStringOutline*(self: Font; canvasItem: RID; pos: Vector2; text: String; alignment: HorizontalAlignment = horizontalAlignmentLeft; width: Float = -1; fontSize: int32 = 16; maxLines: int32 = -1; size: int32 = 1; modulate: Color = color(1, 1, 1, 1); brkFlags: set[TextServer_LineBreakFlag] = {breakMandatory, breakWordBound}; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound}; direction: TextServer_Direction = directionAuto; orientation: TextServer_Orientation = orientationHorizontal; oversampling: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_multiline_string_outline", 4147839237)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr text, getPtr alignment, getPtr width, getPtr fontSize, getPtr maxLines, getPtr size, getPtr modulate, getPtr brkFlags, getPtr justificationFlags, getPtr direction, getPtr orientation, getPtr oversampling], void)

proc getCharSize*(self: Font; char: char32; fontSize: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_char_size", 3016396712)
  methodbind.ptrcall(self, [getPtr char, getPtr fontSize], Vector2)

proc drawChar*(self: Font; canvasItem: RID; pos: Vector2; char: char32; fontSize: int32; modulate: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_char", 3500170256)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr char, getPtr fontSize, getPtr modulate, getPtr oversampling], Float)

proc drawCharOutline*(self: Font; canvasItem: RID; pos: Vector2; char: char32; fontSize: int32; size: int32 = -1; modulate: Color = color(1, 1, 1, 1); oversampling: Float = 0.0): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "draw_char_outline", 1684114874)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr pos, getPtr char, getPtr fontSize, getPtr size, getPtr modulate, getPtr oversampling], Float)

proc hasChar*(self: Font; char: char32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "has_char", 1116898809)
  methodbind.ptrcall(self, [getPtr char], bool)

proc getSupportedChars*(self: Font): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_supported_chars", 201670096)
  methodbind.ptrcall(self, [], String)

proc isLanguageSupported*(self: Font; language: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "is_language_supported", 3927539163)
  methodbind.ptrcall(self, [getPtr language], bool)

proc isScriptSupported*(self: Font; script: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "is_script_supported", 3927539163)
  methodbind.ptrcall(self, [getPtr script], bool)

proc getSupportedFeatureList*(self: Font): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_supported_feature_list", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getSupportedVariationList*(self: Font): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_supported_variation_list", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getFaceCount*(self: Font): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Font, "get_face_count", 3905245786)
  methodbind.ptrcall(self, [], int64)

template fallbacks*(self: Font): untyped = self.getFallbacks()
template `fallbacks=`*(self: Font; value) = self.setFallbacks(value)
