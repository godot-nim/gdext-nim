{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(RichTextLabel, Control)

proc getParsedText*(self: RichTextLabel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_parsed_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc addText*(self: RichTextLabel; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "add_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc setText*(self: RichTextLabel; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc addHr*(self: RichTextLabel; width: int32 = 90; height: int32 = 2; color: Color = color(1, 1, 1, 1); alignment: HorizontalAlignment = horizontalAlignmentCenter; widthInPercent: bool = true; heightInPercent: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "add_hr", 16816895)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr color, getPtr alignment, getPtr widthInPercent, getPtr heightInPercent], void)

proc addImage*(self: RichTextLabel; image: gdref Texture2D; width: int32 = 0; height: int32 = 0; color: Color = color(1, 1, 1, 1); inlineAlign: InlineAlignment = inlineAlignmentCenter; region: Rect2 = rect2(0, 0, 0, 0); key: Variant = default(Variant); pad: bool = false; tooltip: String = newGdString(); widthInPercent: bool = false; heightInPercent: bool = false; altText: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "add_image", 1390915033)
  methodbind.ptrcall(self, [getPtr image, getPtr width, getPtr height, getPtr color, getPtr inlineAlign, getPtr region, getPtr key, getPtr pad, getPtr tooltip, getPtr widthInPercent, getPtr heightInPercent, getPtr altText], void)

proc updateImage*(self: RichTextLabel; key: Variant; mask: set[RichTextLabel_ImageUpdateMask]; image: gdref Texture2D; width: int32 = 0; height: int32 = 0; color: Color = color(1, 1, 1, 1); inlineAlign: InlineAlignment = inlineAlignmentCenter; region: Rect2 = rect2(0, 0, 0, 0); pad: bool = false; tooltip: String = newGdString(); widthInPercent: bool = false; heightInPercent: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "update_image", 6389170)
  methodbind.ptrcall(self, [getPtr key, getPtr mask, getPtr image, getPtr width, getPtr height, getPtr color, getPtr inlineAlign, getPtr region, getPtr pad, getPtr tooltip, getPtr widthInPercent, getPtr heightInPercent], void)

proc newline*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "newline", 3218959716)
  methodbind.ptrcall(self, [], void)

proc removeParagraph*(self: RichTextLabel; paragraph: int32; noInvalidate: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "remove_paragraph", 3262369265)
  methodbind.ptrcall(self, [getPtr paragraph, getPtr noInvalidate], bool)

proc invalidateParagraph*(self: RichTextLabel; paragraph: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "invalidate_paragraph", 3067735520)
  methodbind.ptrcall(self, [getPtr paragraph], bool)

proc pushFont*(self: RichTextLabel; font: gdref Font; fontSize: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_font", 2347424842)
  methodbind.ptrcall(self, [getPtr font, getPtr fontSize], void)

proc pushFontSize*(self: RichTextLabel; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize], void)

proc pushNormal*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_normal", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushBold*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_bold", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushBoldItalics*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_bold_italics", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushItalics*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_italics", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushMono*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_mono", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushColor*(self: RichTextLabel; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc pushOutlineSize*(self: RichTextLabel; outlineSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_outline_size", 1286410249)
  methodbind.ptrcall(self, [getPtr outlineSize], void)

proc pushOutlineColor*(self: RichTextLabel; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_outline_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc pushParagraph*(self: RichTextLabel; alignment: HorizontalAlignment; baseDirection: Control_TextDirection = textDirectionAuto; language: String = newGdString(); stParser: TextServer_StructuredTextParser = structuredTextDefault; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound, justificationSkipLastLine, justificationDoNotSkipSingleLine}; tabStops: PackedFloat32Array = PackedFloat32Array()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_paragraph", 3089306873)
  methodbind.ptrcall(self, [getPtr alignment, getPtr baseDirection, getPtr language, getPtr stParser, getPtr justificationFlags, getPtr tabStops], void)

proc pushIndent*(self: RichTextLabel; level: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_indent", 1286410249)
  methodbind.ptrcall(self, [getPtr level], void)

proc pushList*(self: RichTextLabel; level: int32; `type`: RichTextLabel_ListType; capitalize: bool; bullet: String = newGdString("•")): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_list", 3017143144)
  methodbind.ptrcall(self, [getPtr level, getPtr `type`, getPtr capitalize, getPtr bullet], void)

proc pushMeta*(self: RichTextLabel; data: Variant; underlineMode: RichTextLabel_MetaUnderline = metaUnderlineAlways; tooltip: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_meta", 3765356747)
  methodbind.ptrcall(self, [getPtr data, getPtr underlineMode, getPtr tooltip], void)

proc pushHint*(self: RichTextLabel; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_hint", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

proc pushLanguage*(self: RichTextLabel; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc pushUnderline*(self: RichTextLabel; color: Color = color(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_underline", 1458098034)
  methodbind.ptrcall(self, [getPtr color], void)

proc pushStrikethrough*(self: RichTextLabel; color: Color = color(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_strikethrough", 1458098034)
  methodbind.ptrcall(self, [getPtr color], void)

proc pushTable*(self: RichTextLabel; columns: int32; inlineAlign: InlineAlignment = inlineAlignmentTopTo; alignToRow: int32 = -1; name: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_table", 3426862026)
  methodbind.ptrcall(self, [getPtr columns, getPtr inlineAlign, getPtr alignToRow, getPtr name], void)

proc pushDropcap*(self: RichTextLabel; string: String; font: gdref Font; size: int32; dropcapMargins: Rect2 = rect2(0, 0, 0, 0); color: Color = color(1, 1, 1, 1); outlineSize: int32 = 0; outlineColor: Color = color(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_dropcap", 4061635501)
  methodbind.ptrcall(self, [getPtr string, getPtr font, getPtr size, getPtr dropcapMargins, getPtr color, getPtr outlineSize, getPtr outlineColor], void)

proc setTableColumnExpand*(self: RichTextLabel; column: int32; expand: bool; ratio: int32 = 1; shrink: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_table_column_expand", 117236061)
  methodbind.ptrcall(self, [getPtr column, getPtr expand, getPtr ratio, getPtr shrink], void)

proc setTableColumnName*(self: RichTextLabel; column: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_table_column_name", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr name], void)

proc setCellRowBackgroundColor*(self: RichTextLabel; oddRowBg: Color; evenRowBg: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_cell_row_background_color", 3465483165)
  methodbind.ptrcall(self, [getPtr oddRowBg, getPtr evenRowBg], void)

proc setCellBorderColor*(self: RichTextLabel; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_cell_border_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc setCellSizeOverride*(self: RichTextLabel; minSize: Vector2; maxSize: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_cell_size_override", 3108078480)
  methodbind.ptrcall(self, [getPtr minSize, getPtr maxSize], void)

proc setCellPadding*(self: RichTextLabel; padding: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_cell_padding", 2046264180)
  methodbind.ptrcall(self, [getPtr padding], void)

proc pushCell*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_cell", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pushFgcolor*(self: RichTextLabel; fgcolor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_fgcolor", 2920490490)
  methodbind.ptrcall(self, [getPtr fgcolor], void)

proc pushBgcolor*(self: RichTextLabel; bgcolor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_bgcolor", 2920490490)
  methodbind.ptrcall(self, [getPtr bgcolor], void)

proc pushCustomfx*(self: RichTextLabel; effect: gdref RichTextEffect; env: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_customfx", 2337942958)
  methodbind.ptrcall(self, [getPtr effect, getPtr env], void)

proc pushContext*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "push_context", 3218959716)
  methodbind.ptrcall(self, [], void)

proc popContext*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "pop_context", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pop*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "pop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc popAll*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "pop_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clear*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setStructuredTextBidiOverride*(self: RichTextLabel; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: RichTextLabel): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: RichTextLabel; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: RichTextLabel): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setTextDirection*(self: RichTextLabel; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: RichTextLabel): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: RichTextLabel; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: RichTextLabel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setHorizontalAlignment*(self: RichTextLabel; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: RichTextLabel): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setVerticalAlignment*(self: RichTextLabel; alignment: VerticalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_vertical_alignment", 1796458609)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getVerticalAlignment*(self: RichTextLabel): VerticalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_vertical_alignment", 3274884059)
  methodbind.ptrcall(self, [], VerticalAlignment)

proc setJustificationFlags*(self: RichTextLabel; justificationFlags: set[TextServer_JustificationFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_justification_flags", 2877345813)
  methodbind.ptrcall(self, [getPtr justificationFlags], void)

proc getJustificationFlags*(self: RichTextLabel): set[TextServer_JustificationFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_justification_flags", 1583363614)
  methodbind.ptrcall(self, [], set[TextServer_JustificationFlag])

proc setTabStops*(self: RichTextLabel; tabStops: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_tab_stops", 2899603908)
  methodbind.ptrcall(self, [getPtr tabStops], void)

proc getTabStops*(self: RichTextLabel): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_tab_stops", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc setAutowrapMode*(self: RichTextLabel; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: RichTextLabel): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc setAutowrapTrimFlags*(self: RichTextLabel; autowrapTrimFlags: set[TextServer_LineBreakFlag]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_autowrap_trim_flags", 2809697122)
  methodbind.ptrcall(self, [getPtr autowrapTrimFlags], void)

proc getAutowrapTrimFlags*(self: RichTextLabel): set[TextServer_LineBreakFlag] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_autowrap_trim_flags", 2340632602)
  methodbind.ptrcall(self, [], set[TextServer_LineBreakFlag])

proc setMetaUnderline*(self: RichTextLabel; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_meta_underline", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMetaUnderlined*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_meta_underlined", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHintUnderline*(self: RichTextLabel; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_hint_underline", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHintUnderlined*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_hint_underlined", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setScrollActive*(self: RichTextLabel; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_scroll_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc isScrollActive*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_scroll_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setScrollFollowVisibleCharacters*(self: RichTextLabel; follow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_scroll_follow_visible_characters", 2586408642)
  methodbind.ptrcall(self, [getPtr follow], void)

proc isScrollFollowingVisibleCharacters*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_scroll_following_visible_characters", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setScrollFollow*(self: RichTextLabel; follow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_scroll_follow", 2586408642)
  methodbind.ptrcall(self, [getPtr follow], void)

proc isScrollFollowing*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_scroll_following", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getVScrollBar*(self: RichTextLabel): VScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_v_scroll_bar", 2630340773)
  methodbind.ptrcall(self, [], VScrollBar)

proc scrollToLine*(self: RichTextLabel; line: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "scroll_to_line", 1286410249)
  methodbind.ptrcall(self, [getPtr line], void)

proc scrollToParagraph*(self: RichTextLabel; paragraph: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "scroll_to_paragraph", 1286410249)
  methodbind.ptrcall(self, [getPtr paragraph], void)

proc scrollToSelection*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "scroll_to_selection", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTabSize*(self: RichTextLabel; spaces: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_tab_size", 1286410249)
  methodbind.ptrcall(self, [getPtr spaces], void)

proc getTabSize*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_tab_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFitContent*(self: RichTextLabel; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_fit_content", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFitContentEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_fit_content_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectionEnabled*(self: RichTextLabel; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_selection_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSelectionEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_selection_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setContextMenuEnabled*(self: RichTextLabel; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_context_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isContextMenuEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_context_menu_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcutKeysEnabled*(self: RichTextLabel; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_shortcut_keys_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isShortcutKeysEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_shortcut_keys_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeselectOnFocusLossEnabled*(self: RichTextLabel; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_deselect_on_focus_loss_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDeselectOnFocusLossEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_deselect_on_focus_loss_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragAndDropSelectionEnabled*(self: RichTextLabel; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_drag_and_drop_selection_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDragAndDropSelectionEnabled*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_drag_and_drop_selection_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSelectionFrom*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_selection_from", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSelectionTo*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_selection_to", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSelectionLineOffset*(self: RichTextLabel): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_selection_line_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc selectAll*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "select_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSelectedText*(self: RichTextLabel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_selected_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc deselect*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "deselect", 3218959716)
  methodbind.ptrcall(self, [], void)

proc parseBbcode*(self: RichTextLabel; bbcode: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "parse_bbcode", 83702148)
  methodbind.ptrcall(self, [getPtr bbcode], void)

proc appendText*(self: RichTextLabel; bbcode: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "append_text", 83702148)
  methodbind.ptrcall(self, [getPtr bbcode], void)

proc getText*(self: RichTextLabel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc isReady*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_ready", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isFinished*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_finished", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setThreaded*(self: RichTextLabel; threaded: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_threaded", 2586408642)
  methodbind.ptrcall(self, [getPtr threaded], void)

proc isThreaded*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_threaded", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProgressBarDelay*(self: RichTextLabel; delayMs: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_progress_bar_delay", 1286410249)
  methodbind.ptrcall(self, [getPtr delayMs], void)

proc getProgressBarDelay*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_progress_bar_delay", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVisibleCharacters*(self: RichTextLabel; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_visible_characters", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getVisibleCharacters*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_characters", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleCharactersBehavior*(self: RichTextLabel): TextServer_VisibleCharactersBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_characters_behavior", 258789322)
  methodbind.ptrcall(self, [], TextServer_VisibleCharactersBehavior)

proc setVisibleCharactersBehavior*(self: RichTextLabel; behavior: TextServer_VisibleCharactersBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_visible_characters_behavior", 3383839701)
  methodbind.ptrcall(self, [getPtr behavior], void)

proc setVisibleRatio*(self: RichTextLabel; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_visible_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getVisibleRatio*(self: RichTextLabel): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCharacterLine*(self: RichTextLabel; character: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_character_line", 3744713108)
  methodbind.ptrcall(self, [getPtr character], int32)

proc getCharacterParagraph*(self: RichTextLabel; character: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_character_paragraph", 3744713108)
  methodbind.ptrcall(self, [getPtr character], int32)

proc getTotalCharacterCount*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_total_character_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setUseBbcode*(self: RichTextLabel; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_use_bbcode", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingBbcode*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_using_bbcode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getLineCount*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLineRange*(self: RichTextLabel; line: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_line_range", 3665014314)
  methodbind.ptrcall(self, [getPtr line], Vector2i)

proc getVisibleLineCount*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getParagraphCount*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_paragraph_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleParagraphCount*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_paragraph_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getContentHeight*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_content_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getContentWidth*(self: RichTextLabel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_content_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLineHeight*(self: RichTextLabel; line: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_line_height", 923996154)
  methodbind.ptrcall(self, [getPtr line], int32)

proc getLineWidth*(self: RichTextLabel; line: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_line_width", 923996154)
  methodbind.ptrcall(self, [getPtr line], int32)

proc getVisibleContentRect*(self: RichTextLabel): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_visible_content_rect", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc getLineOffset*(self: RichTextLabel; line: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_line_offset", 4025615559)
  methodbind.ptrcall(self, [getPtr line], Float)

proc getParagraphOffset*(self: RichTextLabel; paragraph: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_paragraph_offset", 4025615559)
  methodbind.ptrcall(self, [getPtr paragraph], Float)

proc parseExpressionsForValues*(self: RichTextLabel; expressions: PackedStringArray): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "parse_expressions_for_values", 1522900837)
  methodbind.ptrcall(self, [getPtr expressions], Dictionary)

proc setEffects*(self: RichTextLabel; effects: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "set_effects", 381264803)
  methodbind.ptrcall(self, [getPtr effects], void)

proc getEffects*(self: RichTextLabel): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_effects", 2915620761)
  methodbind.ptrcall(self, [], Array)

proc installEffect*(self: RichTextLabel; effect: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "install_effect", 1114965689)
  methodbind.ptrcall(self, [getPtr effect], void)

proc reloadEffects*(self: RichTextLabel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "reload_effects", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getMenu*(self: RichTextLabel): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "get_menu", 229722558)
  methodbind.ptrcall(self, [], PopupMenu)

proc isMenuVisible*(self: RichTextLabel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "is_menu_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc menuOption*(self: RichTextLabel; option: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RichTextLabel, "menu_option", 1286410249)
  methodbind.ptrcall(self, [getPtr option], void)

template bbcodeEnabled*(self: RichTextLabel): untyped = self.isUsingBbcode()
template `bbcodeEnabled=`*(self: RichTextLabel; value) = self.setUseBbcode(value)

template text*(self: RichTextLabel): untyped = self.getText()
template `text=`*(self: RichTextLabel; value) = self.setText(value)

template fitContent*(self: RichTextLabel): untyped = self.isFitContentEnabled()
template `fitContent=`*(self: RichTextLabel; value) = self.setFitContent(value)

template scrollActive*(self: RichTextLabel): untyped = self.isScrollActive()
template `scrollActive=`*(self: RichTextLabel; value) = self.setScrollActive(value)

template scrollFollowing*(self: RichTextLabel): untyped = self.isScrollFollowing()
template `scrollFollowing=`*(self: RichTextLabel; value) = self.setScrollFollow(value)

template scrollFollowingVisibleCharacters*(self: RichTextLabel): untyped = self.isScrollFollowingVisibleCharacters()
template `scrollFollowingVisibleCharacters=`*(self: RichTextLabel; value) = self.setScrollFollowVisibleCharacters(value)

template autowrapMode*(self: RichTextLabel): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: RichTextLabel; value) = self.setAutowrapMode(value)

template autowrapTrimFlags*(self: RichTextLabel): untyped = self.getAutowrapTrimFlags()
template `autowrapTrimFlags=`*(self: RichTextLabel; value) = self.setAutowrapTrimFlags(value)

template tabSize*(self: RichTextLabel): untyped = self.getTabSize()
template `tabSize=`*(self: RichTextLabel; value) = self.setTabSize(value)

template contextMenuEnabled*(self: RichTextLabel): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: RichTextLabel; value) = self.setContextMenuEnabled(value)

template shortcutKeysEnabled*(self: RichTextLabel): untyped = self.isShortcutKeysEnabled()
template `shortcutKeysEnabled=`*(self: RichTextLabel; value) = self.setShortcutKeysEnabled(value)

template horizontalAlignment*(self: RichTextLabel): untyped = self.getHorizontalAlignment()
template `horizontalAlignment=`*(self: RichTextLabel; value) = self.setHorizontalAlignment(value)

template verticalAlignment*(self: RichTextLabel): untyped = self.getVerticalAlignment()
template `verticalAlignment=`*(self: RichTextLabel; value) = self.setVerticalAlignment(value)

template justificationFlags*(self: RichTextLabel): untyped = self.getJustificationFlags()
template `justificationFlags=`*(self: RichTextLabel; value) = self.setJustificationFlags(value)

template tabStops*(self: RichTextLabel): untyped = self.getTabStops()
template `tabStops=`*(self: RichTextLabel; value) = self.setTabStops(value)

template customEffects*(self: RichTextLabel): untyped = self.getEffects()
template `customEffects=`*(self: RichTextLabel; value) = self.setEffects(value)

template metaUnderlined*(self: RichTextLabel): untyped = self.isMetaUnderlined()
template `metaUnderlined=`*(self: RichTextLabel; value) = self.setMetaUnderline(value)

template hintUnderlined*(self: RichTextLabel): untyped = self.isHintUnderlined()
template `hintUnderlined=`*(self: RichTextLabel; value) = self.setHintUnderline(value)

template threaded*(self: RichTextLabel): untyped = self.isThreaded()
template `threaded=`*(self: RichTextLabel; value) = self.setThreaded(value)

template progressBarDelay*(self: RichTextLabel): untyped = self.getProgressBarDelay()
template `progressBarDelay=`*(self: RichTextLabel; value) = self.setProgressBarDelay(value)

template selectionEnabled*(self: RichTextLabel): untyped = self.isSelectionEnabled()
template `selectionEnabled=`*(self: RichTextLabel; value) = self.setSelectionEnabled(value)

template deselectOnFocusLossEnabled*(self: RichTextLabel): untyped = self.isDeselectOnFocusLossEnabled()
template `deselectOnFocusLossEnabled=`*(self: RichTextLabel; value) = self.setDeselectOnFocusLossEnabled(value)

template dragAndDropSelectionEnabled*(self: RichTextLabel): untyped = self.isDragAndDropSelectionEnabled()
template `dragAndDropSelectionEnabled=`*(self: RichTextLabel; value) = self.setDragAndDropSelectionEnabled(value)

template visibleCharacters*(self: RichTextLabel): untyped = self.getVisibleCharacters()
template `visibleCharacters=`*(self: RichTextLabel; value) = self.setVisibleCharacters(value)

template visibleCharactersBehavior*(self: RichTextLabel): untyped = self.getVisibleCharactersBehavior()
template `visibleCharactersBehavior=`*(self: RichTextLabel; value) = self.setVisibleCharactersBehavior(value)

template visibleRatio*(self: RichTextLabel): untyped = self.getVisibleRatio()
template `visibleRatio=`*(self: RichTextLabel; value) = self.setVisibleRatio(value)

template textDirection*(self: RichTextLabel): untyped = self.getTextDirection()
template `textDirection=`*(self: RichTextLabel; value) = self.setTextDirection(value)

template language*(self: RichTextLabel): untyped = self.getLanguage()
template `language=`*(self: RichTextLabel; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: RichTextLabel): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: RichTextLabel; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: RichTextLabel): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: RichTextLabel; value) = self.setStructuredTextBidiOverrideOptions(value)
