{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc getParsedText*(self: RichTextLabel): String =
  expandMethodBind(className RichTextLabel, "get_parsed_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc addText*(self: RichTextLabel; text: String): void =
  expandMethodBind(className RichTextLabel, "add_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc setText*(self: RichTextLabel; text: String): void =
  expandMethodBind(className RichTextLabel, "set_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc addImage*(self: RichTextLabel; image: gdref Texture2D; width: int32 = 0; height: int32 = 0; color: Color = color(1, 1, 1, 1); inlineAlign: InlineAlignment = inlineAlignmentCenter; region: Rect2 = rect2(0, 0, 0, 0); key: Variant = default(Variant); pad: bool = false; tooltip: String = gdstring""; sizeInPercent: bool = false): void =
  expandMethodBind(className RichTextLabel, "add_image", 3017663154)
  var `?param` = [getPtr image, getPtr width, getPtr height, getPtr color, getPtr inlineAlign, getPtr region, getPtr key, getPtr pad, getPtr tooltip, getPtr sizeInPercent]
  methodbind.ptrcall(self, addr `?param`[0])

proc updateImage*(self: RichTextLabel; key: Variant; mask: set[RichTextLabel_ImageUpdateMask]; image: gdref Texture2D; width: int32 = 0; height: int32 = 0; color: Color = color(1, 1, 1, 1); inlineAlign: InlineAlignment = inlineAlignmentCenter; region: Rect2 = rect2(0, 0, 0, 0); pad: bool = false; tooltip: String = gdstring""; sizeInPercent: bool = false): void =
  expandMethodBind(className RichTextLabel, "update_image", 815048486)
  var `?param` = [getPtr key, getPtr mask, getPtr image, getPtr width, getPtr height, getPtr color, getPtr inlineAlign, getPtr region, getPtr pad, getPtr tooltip, getPtr sizeInPercent]
  methodbind.ptrcall(self, addr `?param`[0])

proc newline*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "newline", 3218959716)
  methodbind.ptrcall(self, nil)

proc removeParagraph*(self: RichTextLabel; paragraph: int32; noInvalidate: bool = false): bool =
  expandMethodBind(className RichTextLabel, "remove_paragraph", 3262369265)
  var `?param` = [getPtr paragraph, getPtr noInvalidate]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc invalidateParagraph*(self: RichTextLabel; paragraph: int32): bool =
  expandMethodBind(className RichTextLabel, "invalidate_paragraph", 3067735520)
  var `?param` = [getPtr paragraph]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc pushFont*(self: RichTextLabel; font: gdref Font; fontSize: int32 = 0): void =
  expandMethodBind(className RichTextLabel, "push_font", 2347424842)
  var `?param` = [getPtr font, getPtr fontSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushFontSize*(self: RichTextLabel; fontSize: int32): void =
  expandMethodBind(className RichTextLabel, "push_font_size", 1286410249)
  var `?param` = [getPtr fontSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushNormal*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_normal", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushBold*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_bold", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushBoldItalics*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_bold_italics", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushItalics*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_italics", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushMono*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_mono", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushColor*(self: RichTextLabel; color: Color): void =
  expandMethodBind(className RichTextLabel, "push_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushOutlineSize*(self: RichTextLabel; outlineSize: int32): void =
  expandMethodBind(className RichTextLabel, "push_outline_size", 1286410249)
  var `?param` = [getPtr outlineSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushOutlineColor*(self: RichTextLabel; color: Color): void =
  expandMethodBind(className RichTextLabel, "push_outline_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushParagraph*(self: RichTextLabel; alignment: HorizontalAlignment; baseDirection: Control_TextDirection = textDirectionAuto; language: String = gdstring""; stParser: TextServer_StructuredTextParser = structuredTextDefault; justificationFlags: set[TextServer_JustificationFlag] = {justificationKashida, justificationWordBound, justificationSkipLastLine, justificationDoNotSkipSingleLine}; tabStops: PackedFloat32Array = PackedFloat32Array()): void =
  expandMethodBind(className RichTextLabel, "push_paragraph", 3089306873)
  var `?param` = [getPtr alignment, getPtr baseDirection, getPtr language, getPtr stParser, getPtr justificationFlags, getPtr tabStops]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushIndent*(self: RichTextLabel; level: int32): void =
  expandMethodBind(className RichTextLabel, "push_indent", 1286410249)
  var `?param` = [getPtr level]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushList*(self: RichTextLabel; level: int32; `type`: RichTextLabel_ListType; capitalize: bool; bullet: String = gdstring"•"): void =
  expandMethodBind(className RichTextLabel, "push_list", 3017143144)
  var `?param` = [getPtr level, getPtr `type`, getPtr capitalize, getPtr bullet]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushMeta*(self: RichTextLabel; data: Variant; underlineMode: RichTextLabel_MetaUnderline = metaUnderlineAlways): void =
  expandMethodBind(className RichTextLabel, "push_meta", 2206155733)
  var `?param` = [getPtr data, getPtr underlineMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushHint*(self: RichTextLabel; description: String): void =
  expandMethodBind(className RichTextLabel, "push_hint", 83702148)
  var `?param` = [getPtr description]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushLanguage*(self: RichTextLabel; language: String): void =
  expandMethodBind(className RichTextLabel, "push_language", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushUnderline*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_underline", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushStrikethrough*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_strikethrough", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushTable*(self: RichTextLabel; columns: int32; inlineAlign: InlineAlignment = inlineAlignmentTopTo; alignToRow: int32 = -1): void =
  expandMethodBind(className RichTextLabel, "push_table", 2623499273)
  var `?param` = [getPtr columns, getPtr inlineAlign, getPtr alignToRow]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushDropcap*(self: RichTextLabel; string: String; font: gdref Font; size: int32; dropcapMargins: Rect2 = rect2(0, 0, 0, 0); color: Color = color(1, 1, 1, 1); outlineSize: int32 = 0; outlineColor: Color = color(0, 0, 0, 0)): void =
  expandMethodBind(className RichTextLabel, "push_dropcap", 4061635501)
  var `?param` = [getPtr string, getPtr font, getPtr size, getPtr dropcapMargins, getPtr color, getPtr outlineSize, getPtr outlineColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTableColumnExpand*(self: RichTextLabel; column: int32; expand: bool; ratio: int32 = 1): void =
  expandMethodBind(className RichTextLabel, "set_table_column_expand", 2185176273)
  var `?param` = [getPtr column, getPtr expand, getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCellRowBackgroundColor*(self: RichTextLabel; oddRowBg: Color; evenRowBg: Color): void =
  expandMethodBind(className RichTextLabel, "set_cell_row_background_color", 3465483165)
  var `?param` = [getPtr oddRowBg, getPtr evenRowBg]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCellBorderColor*(self: RichTextLabel; color: Color): void =
  expandMethodBind(className RichTextLabel, "set_cell_border_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCellSizeOverride*(self: RichTextLabel; minSize: Vector2; maxSize: Vector2): void =
  expandMethodBind(className RichTextLabel, "set_cell_size_override", 3108078480)
  var `?param` = [getPtr minSize, getPtr maxSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCellPadding*(self: RichTextLabel; padding: Rect2): void =
  expandMethodBind(className RichTextLabel, "set_cell_padding", 2046264180)
  var `?param` = [getPtr padding]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushCell*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_cell", 3218959716)
  methodbind.ptrcall(self, nil)

proc pushFgcolor*(self: RichTextLabel; fgcolor: Color): void =
  expandMethodBind(className RichTextLabel, "push_fgcolor", 2920490490)
  var `?param` = [getPtr fgcolor]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushBgcolor*(self: RichTextLabel; bgcolor: Color): void =
  expandMethodBind(className RichTextLabel, "push_bgcolor", 2920490490)
  var `?param` = [getPtr bgcolor]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushCustomfx*(self: RichTextLabel; effect: gdref RichTextEffect; env: Dictionary): void =
  expandMethodBind(className RichTextLabel, "push_customfx", 2337942958)
  var `?param` = [getPtr effect, getPtr env]
  methodbind.ptrcall(self, addr `?param`[0])

proc pushContext*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "push_context", 3218959716)
  methodbind.ptrcall(self, nil)

proc popContext*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "pop_context", 3218959716)
  methodbind.ptrcall(self, nil)

proc pop*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "pop", 3218959716)
  methodbind.ptrcall(self, nil)

proc popAll*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "pop_all", 3218959716)
  methodbind.ptrcall(self, nil)

proc clear*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc setStructuredTextBidiOverride*(self: RichTextLabel; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className RichTextLabel, "set_structured_text_bidi_override", 55961453)
  var `?param` = [getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverride*(self: RichTextLabel): TextServer_StructuredTextParser =
  expandMethodBind(className RichTextLabel, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: RichTextLabel; args: Array): void =
  expandMethodBind(className RichTextLabel, "set_structured_text_bidi_override_options", 381264803)
  var `?param` = [getPtr args]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverrideOptions*(self: RichTextLabel): Array =
  expandMethodBind(className RichTextLabel, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setTextDirection*(self: RichTextLabel; direction: Control_TextDirection): void =
  expandMethodBind(className RichTextLabel, "set_text_direction", 119160795)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextDirection*(self: RichTextLabel): Control_TextDirection =
  expandMethodBind(className RichTextLabel, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: RichTextLabel; language: String): void =
  expandMethodBind(className RichTextLabel, "set_language", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: RichTextLabel): String =
  expandMethodBind(className RichTextLabel, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setAutowrapMode*(self: RichTextLabel; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className RichTextLabel, "set_autowrap_mode", 3289138044)
  var `?param` = [getPtr autowrapMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutowrapMode*(self: RichTextLabel): TextServer_AutowrapMode =
  expandMethodBind(className RichTextLabel, "get_autowrap_mode", 1549071663)
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc setMetaUnderline*(self: RichTextLabel; enable: bool): void =
  expandMethodBind(className RichTextLabel, "set_meta_underline", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMetaUnderlined*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_meta_underlined", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHintUnderline*(self: RichTextLabel; enable: bool): void =
  expandMethodBind(className RichTextLabel, "set_hint_underline", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHintUnderlined*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_hint_underlined", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setScrollActive*(self: RichTextLabel; active: bool): void =
  expandMethodBind(className RichTextLabel, "set_scroll_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc isScrollActive*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_scroll_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setScrollFollow*(self: RichTextLabel; follow: bool): void =
  expandMethodBind(className RichTextLabel, "set_scroll_follow", 2586408642)
  var `?param` = [getPtr follow]
  methodbind.ptrcall(self, addr `?param`[0])

proc isScrollFollowing*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_scroll_following", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getVScrollBar*(self: RichTextLabel): VScrollBar =
  expandMethodBind(className RichTextLabel, "get_v_scroll_bar", 2630340773)
  var ret: encoded VScrollBar
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VScrollBar)

proc scrollToLine*(self: RichTextLabel; line: int32): void =
  expandMethodBind(className RichTextLabel, "scroll_to_line", 1286410249)
  var `?param` = [getPtr line]
  methodbind.ptrcall(self, addr `?param`[0])

proc scrollToParagraph*(self: RichTextLabel; paragraph: int32): void =
  expandMethodBind(className RichTextLabel, "scroll_to_paragraph", 1286410249)
  var `?param` = [getPtr paragraph]
  methodbind.ptrcall(self, addr `?param`[0])

proc scrollToSelection*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "scroll_to_selection", 3218959716)
  methodbind.ptrcall(self, nil)

proc setTabSize*(self: RichTextLabel; spaces: int32): void =
  expandMethodBind(className RichTextLabel, "set_tab_size", 1286410249)
  var `?param` = [getPtr spaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabSize*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_tab_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFitContent*(self: RichTextLabel; enabled: bool): void =
  expandMethodBind(className RichTextLabel, "set_fit_content", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFitContentEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_fit_content_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSelectionEnabled*(self: RichTextLabel; enabled: bool): void =
  expandMethodBind(className RichTextLabel, "set_selection_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSelectionEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_selection_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setContextMenuEnabled*(self: RichTextLabel; enabled: bool): void =
  expandMethodBind(className RichTextLabel, "set_context_menu_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isContextMenuEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_context_menu_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShortcutKeysEnabled*(self: RichTextLabel; enabled: bool): void =
  expandMethodBind(className RichTextLabel, "set_shortcut_keys_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShortcutKeysEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_shortcut_keys_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDeselectOnFocusLossEnabled*(self: RichTextLabel; enable: bool): void =
  expandMethodBind(className RichTextLabel, "set_deselect_on_focus_loss_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeselectOnFocusLossEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_deselect_on_focus_loss_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDragAndDropSelectionEnabled*(self: RichTextLabel; enable: bool): void =
  expandMethodBind(className RichTextLabel, "set_drag_and_drop_selection_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDragAndDropSelectionEnabled*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_drag_and_drop_selection_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSelectionFrom*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_selection_from", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSelectionTo*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_selection_to", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc selectAll*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "select_all", 3218959716)
  methodbind.ptrcall(self, nil)

proc getSelectedText*(self: RichTextLabel): String =
  expandMethodBind(className RichTextLabel, "get_selected_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc deselect*(self: RichTextLabel): void =
  expandMethodBind(className RichTextLabel, "deselect", 3218959716)
  methodbind.ptrcall(self, nil)

proc parseBbcode*(self: RichTextLabel; bbcode: String): void =
  expandMethodBind(className RichTextLabel, "parse_bbcode", 83702148)
  var `?param` = [getPtr bbcode]
  methodbind.ptrcall(self, addr `?param`[0])

proc appendText*(self: RichTextLabel; bbcode: String): void =
  expandMethodBind(className RichTextLabel, "append_text", 83702148)
  var `?param` = [getPtr bbcode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getText*(self: RichTextLabel): String =
  expandMethodBind(className RichTextLabel, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isReady*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_ready", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setThreaded*(self: RichTextLabel; threaded: bool): void =
  expandMethodBind(className RichTextLabel, "set_threaded", 2586408642)
  var `?param` = [getPtr threaded]
  methodbind.ptrcall(self, addr `?param`[0])

proc isThreaded*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_threaded", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProgressBarDelay*(self: RichTextLabel; delayMs: int32): void =
  expandMethodBind(className RichTextLabel, "set_progress_bar_delay", 1286410249)
  var `?param` = [getPtr delayMs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProgressBarDelay*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_progress_bar_delay", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setVisibleCharacters*(self: RichTextLabel; amount: int32): void =
  expandMethodBind(className RichTextLabel, "set_visible_characters", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibleCharacters*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_visible_characters", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getVisibleCharactersBehavior*(self: RichTextLabel): TextServer_VisibleCharactersBehavior =
  expandMethodBind(className RichTextLabel, "get_visible_characters_behavior", 258789322)
  var ret: encoded TextServer_VisibleCharactersBehavior
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_VisibleCharactersBehavior)

proc setVisibleCharactersBehavior*(self: RichTextLabel; behavior: TextServer_VisibleCharactersBehavior): void =
  expandMethodBind(className RichTextLabel, "set_visible_characters_behavior", 3383839701)
  var `?param` = [getPtr behavior]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibleRatio*(self: RichTextLabel; ratio: Float): void =
  expandMethodBind(className RichTextLabel, "set_visible_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibleRatio*(self: RichTextLabel): Float =
  expandMethodBind(className RichTextLabel, "get_visible_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getCharacterLine*(self: RichTextLabel; character: int32): int32 =
  expandMethodBind(className RichTextLabel, "get_character_line", 3744713108)
  var `?param` = [getPtr character]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getCharacterParagraph*(self: RichTextLabel; character: int32): int32 =
  expandMethodBind(className RichTextLabel, "get_character_paragraph", 3744713108)
  var `?param` = [getPtr character]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getTotalCharacterCount*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_total_character_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseBbcode*(self: RichTextLabel; enable: bool): void =
  expandMethodBind(className RichTextLabel, "set_use_bbcode", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingBbcode*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_using_bbcode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLineCount*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getVisibleLineCount*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_visible_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getParagraphCount*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_paragraph_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getVisibleParagraphCount*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_visible_paragraph_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getContentHeight*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_content_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getContentWidth*(self: RichTextLabel): int32 =
  expandMethodBind(className RichTextLabel, "get_content_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLineOffset*(self: RichTextLabel; line: int32): Float =
  expandMethodBind(className RichTextLabel, "get_line_offset", 4025615559)
  var `?param` = [getPtr line]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getParagraphOffset*(self: RichTextLabel; paragraph: int32): Float =
  expandMethodBind(className RichTextLabel, "get_paragraph_offset", 4025615559)
  var `?param` = [getPtr paragraph]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc parseExpressionsForValues*(self: RichTextLabel; expressions: PackedStringArray): Dictionary =
  expandMethodBind(className RichTextLabel, "parse_expressions_for_values", 1522900837)
  var `?param` = [getPtr expressions]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc setEffects*(self: RichTextLabel; effects: Array): void =
  expandMethodBind(className RichTextLabel, "set_effects", 381264803)
  var `?param` = [getPtr effects]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEffects*(self: RichTextLabel): Array =
  expandMethodBind(className RichTextLabel, "get_effects", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc installEffect*(self: RichTextLabel; effect: Variant): void =
  expandMethodBind(className RichTextLabel, "install_effect", 1114965689)
  var `?param` = [getPtr effect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMenu*(self: RichTextLabel): PopupMenu =
  expandMethodBind(className RichTextLabel, "get_menu", 229722558)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PopupMenu)

proc isMenuVisible*(self: RichTextLabel): bool =
  expandMethodBind(className RichTextLabel, "is_menu_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc menuOption*(self: RichTextLabel; option: int32): void =
  expandMethodBind(className RichTextLabel, "menu_option", 1286410249)
  var `?param` = [getPtr option]
  methodbind.ptrcall(self, addr `?param`[0])

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

template autowrapMode*(self: RichTextLabel): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: RichTextLabel; value) = self.setAutowrapMode(value)

template tabSize*(self: RichTextLabel): untyped = self.getTabSize()
template `tabSize=`*(self: RichTextLabel; value) = self.setTabSize(value)

template contextMenuEnabled*(self: RichTextLabel): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: RichTextLabel; value) = self.setContextMenuEnabled(value)

template shortcutKeysEnabled*(self: RichTextLabel): untyped = self.isShortcutKeysEnabled()
template `shortcutKeysEnabled=`*(self: RichTextLabel; value) = self.setShortcutKeysEnabled(value)

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

const RichTextLabel_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RichTextLabel]): Table[string, string] = RichTextLabel_vmap

proc metaClicked*(self: RichTextLabel; meta: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("meta_clicked")
  let args = [meta]
  self.emitSignal(signalname, args)
template metaClicked*(self: RichTextLabel; meta: Variant): Error =
  self.metaClicked(variant meta)

proc metaHoverStarted*(self: RichTextLabel; meta: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("meta_hover_started")
  let args = [meta]
  self.emitSignal(signalname, args)
template metaHoverStarted*(self: RichTextLabel; meta: Variant): Error =
  self.metaHoverStarted(variant meta)

proc metaHoverEnded*(self: RichTextLabel; meta: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("meta_hover_ended")
  let args = [meta]
  self.emitSignal(signalname, args)
template metaHoverEnded*(self: RichTextLabel; meta: Variant): Error =
  self.metaHoverEnded(variant meta)

proc finished*(self: RichTextLabel): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)