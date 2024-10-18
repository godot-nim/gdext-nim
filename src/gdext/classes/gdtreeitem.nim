{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc setCellMode*(self: TreeItem; column: int32; mode: TreeItem_TreeCellMode): void =
  expandMethodBind(className TreeItem, "set_cell_mode", 289920701)
  var `?param` = [getPtr column, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellMode*(self: TreeItem; column: int32): TreeItem_TreeCellMode =
  expandMethodBind(className TreeItem, "get_cell_mode", 3406114978)
  var `?param` = [getPtr column]
  var ret: encoded TreeItem_TreeCellMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem_TreeCellMode)

proc setEditMultiline*(self: TreeItem; column: int32; multiline: bool): void =
  expandMethodBind(className TreeItem, "set_edit_multiline", 300928843)
  var `?param` = [getPtr column, getPtr multiline]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditMultiline*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_edit_multiline", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setChecked*(self: TreeItem; column: int32; checked: bool): void =
  expandMethodBind(className TreeItem, "set_checked", 300928843)
  var `?param` = [getPtr column, getPtr checked]
  methodbind.ptrcall(self, addr `?param`[0])

proc setIndeterminate*(self: TreeItem; column: int32; indeterminate: bool): void =
  expandMethodBind(className TreeItem, "set_indeterminate", 300928843)
  var `?param` = [getPtr column, getPtr indeterminate]
  methodbind.ptrcall(self, addr `?param`[0])

proc isChecked*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_checked", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isIndeterminate*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_indeterminate", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc propagateCheck*(self: TreeItem; column: int32; emitSignal: bool = true): void =
  expandMethodBind(className TreeItem, "propagate_check", 972357352)
  var `?param` = [getPtr column, getPtr emitSignal]
  methodbind.ptrcall(self, addr `?param`[0])

proc setText*(self: TreeItem; column: int32; text: String): void =
  expandMethodBind(className TreeItem, "set_text", 501894301)
  var `?param` = [getPtr column, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getText*(self: TreeItem; column: int32): String =
  expandMethodBind(className TreeItem, "get_text", 844755477)
  var `?param` = [getPtr column]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setTextDirection*(self: TreeItem; column: int32; direction: Control_TextDirection): void =
  expandMethodBind(className TreeItem, "set_text_direction", 1707680378)
  var `?param` = [getPtr column, getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextDirection*(self: TreeItem; column: int32): Control_TextDirection =
  expandMethodBind(className TreeItem, "get_text_direction", 4235602388)
  var `?param` = [getPtr column]
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setAutowrapMode*(self: TreeItem; column: int32; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className TreeItem, "set_autowrap_mode", 3633006561)
  var `?param` = [getPtr column, getPtr autowrapMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutowrapMode*(self: TreeItem; column: int32): TextServer_AutowrapMode =
  expandMethodBind(className TreeItem, "get_autowrap_mode", 2902757236)
  var `?param` = [getPtr column]
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc setTextOverrunBehavior*(self: TreeItem; column: int32; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className TreeItem, "set_text_overrun_behavior", 1940772195)
  var `?param` = [getPtr column, getPtr overrunBehavior]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextOverrunBehavior*(self: TreeItem; column: int32): TextServer_OverrunBehavior =
  expandMethodBind(className TreeItem, "get_text_overrun_behavior", 3782727860)
  var `?param` = [getPtr column]
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc setStructuredTextBidiOverride*(self: TreeItem; column: int32; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className TreeItem, "set_structured_text_bidi_override", 868756907)
  var `?param` = [getPtr column, getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverride*(self: TreeItem; column: int32): TextServer_StructuredTextParser =
  expandMethodBind(className TreeItem, "get_structured_text_bidi_override", 3377823772)
  var `?param` = [getPtr column]
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TreeItem; column: int32; args: Array): void =
  expandMethodBind(className TreeItem, "set_structured_text_bidi_override_options", 537221740)
  var `?param` = [getPtr column, getPtr args]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverrideOptions*(self: TreeItem; column: int32): Array =
  expandMethodBind(className TreeItem, "get_structured_text_bidi_override_options", 663333327)
  var `?param` = [getPtr column]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc setLanguage*(self: TreeItem; column: int32; language: String): void =
  expandMethodBind(className TreeItem, "set_language", 501894301)
  var `?param` = [getPtr column, getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: TreeItem; column: int32): String =
  expandMethodBind(className TreeItem, "get_language", 844755477)
  var `?param` = [getPtr column]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setSuffix*(self: TreeItem; column: int32; text: String): void =
  expandMethodBind(className TreeItem, "set_suffix", 501894301)
  var `?param` = [getPtr column, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSuffix*(self: TreeItem; column: int32): String =
  expandMethodBind(className TreeItem, "get_suffix", 844755477)
  var `?param` = [getPtr column]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setIcon*(self: TreeItem; column: int32; texture: gdref Texture2D): void =
  expandMethodBind(className TreeItem, "set_icon", 666127730)
  var `?param` = [getPtr column, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIcon*(self: TreeItem; column: int32): gdref Texture2D =
  expandMethodBind(className TreeItem, "get_icon", 3536238170)
  var `?param` = [getPtr column]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setIconRegion*(self: TreeItem; column: int32; region: Rect2): void =
  expandMethodBind(className TreeItem, "set_icon_region", 1356297692)
  var `?param` = [getPtr column, getPtr region]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIconRegion*(self: TreeItem; column: int32): Rect2 =
  expandMethodBind(className TreeItem, "get_icon_region", 3327874267)
  var `?param` = [getPtr column]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc setIconMaxWidth*(self: TreeItem; column: int32; width: int32): void =
  expandMethodBind(className TreeItem, "set_icon_max_width", 3937882851)
  var `?param` = [getPtr column, getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIconMaxWidth*(self: TreeItem; column: int32): int32 =
  expandMethodBind(className TreeItem, "get_icon_max_width", 923996154)
  var `?param` = [getPtr column]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setIconModulate*(self: TreeItem; column: int32; modulate: Color): void =
  expandMethodBind(className TreeItem, "set_icon_modulate", 2878471219)
  var `?param` = [getPtr column, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIconModulate*(self: TreeItem; column: int32): Color =
  expandMethodBind(className TreeItem, "get_icon_modulate", 3457211756)
  var `?param` = [getPtr column]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setRange*(self: TreeItem; column: int32; value: float64): void =
  expandMethodBind(className TreeItem, "set_range", 1602489585)
  var `?param` = [getPtr column, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRange*(self: TreeItem; column: int32): float64 =
  expandMethodBind(className TreeItem, "get_range", 2339986948)
  var `?param` = [getPtr column]
  var ret: encoded float64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(float64)

proc setRangeConfig*(self: TreeItem; column: int32; min: float64; max: float64; step: float64; expr: bool = false): void =
  expandMethodBind(className TreeItem, "set_range_config", 1547181014)
  var `?param` = [getPtr column, getPtr min, getPtr max, getPtr step, getPtr expr]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRangeConfig*(self: TreeItem; column: int32): Dictionary =
  expandMethodBind(className TreeItem, "get_range_config", 3554694381)
  var `?param` = [getPtr column]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc setMetadata*(self: TreeItem; column: int32; meta: Variant): void =
  expandMethodBind(className TreeItem, "set_metadata", 2152698145)
  var `?param` = [getPtr column, getPtr meta]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMetadata*(self: TreeItem; column: int32): Variant =
  expandMethodBind(className TreeItem, "get_metadata", 4227898402)
  var `?param` = [getPtr column]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setCustomDraw*(self: TreeItem; column: int32; `object`: Object; callback: StringName): void =
  expandMethodBind(className TreeItem, "set_custom_draw", 272420368)
  var `?param` = [getPtr column, getPtr `object`, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCustomDrawCallback*(self: TreeItem; column: int32; callback: Callable): void =
  expandMethodBind(className TreeItem, "set_custom_draw_callback", 957362965)
  var `?param` = [getPtr column, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomDrawCallback*(self: TreeItem; column: int32): Callable =
  expandMethodBind(className TreeItem, "get_custom_draw_callback", 1317077508)
  var `?param` = [getPtr column]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc setCollapsed*(self: TreeItem; enable: bool): void =
  expandMethodBind(className TreeItem, "set_collapsed", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollapsed*(self: TreeItem): bool =
  expandMethodBind(className TreeItem, "is_collapsed", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollapsedRecursive*(self: TreeItem; enable: bool): void =
  expandMethodBind(className TreeItem, "set_collapsed_recursive", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAnyCollapsed*(self: TreeItem; onlyVisible: bool = false): bool =
  expandMethodBind(className TreeItem, "is_any_collapsed", 2595650253)
  var `?param` = [getPtr onlyVisible]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setVisible*(self: TreeItem; enable: bool): void =
  expandMethodBind(className TreeItem, "set_visible", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVisible*(self: TreeItem): bool =
  expandMethodBind(className TreeItem, "is_visible", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isVisibleInTree*(self: TreeItem): bool =
  expandMethodBind(className TreeItem, "is_visible_in_tree", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc uncollapseTree*(self: TreeItem): void =
  expandMethodBind(className TreeItem, "uncollapse_tree", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCustomMinimumHeight*(self: TreeItem; height: int32): void =
  expandMethodBind(className TreeItem, "set_custom_minimum_height", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomMinimumHeight*(self: TreeItem): int32 =
  expandMethodBind(className TreeItem, "get_custom_minimum_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSelectable*(self: TreeItem; column: int32; selectable: bool): void =
  expandMethodBind(className TreeItem, "set_selectable", 300928843)
  var `?param` = [getPtr column, getPtr selectable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSelectable*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_selectable", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isSelected*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_selected", 3067735520)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc select*(self: TreeItem; column: int32): void =
  expandMethodBind(className TreeItem, "select", 1286410249)
  var `?param` = [getPtr column]
  methodbind.ptrcall(self, addr `?param`[0])

proc deselect*(self: TreeItem; column: int32): void =
  expandMethodBind(className TreeItem, "deselect", 1286410249)
  var `?param` = [getPtr column]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEditable*(self: TreeItem; column: int32; enabled: bool): void =
  expandMethodBind(className TreeItem, "set_editable", 300928843)
  var `?param` = [getPtr column, getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditable*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_editable", 3067735520)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCustomColor*(self: TreeItem; column: int32; color: Color): void =
  expandMethodBind(className TreeItem, "set_custom_color", 2878471219)
  var `?param` = [getPtr column, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomColor*(self: TreeItem; column: int32): Color =
  expandMethodBind(className TreeItem, "get_custom_color", 3457211756)
  var `?param` = [getPtr column]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc clearCustomColor*(self: TreeItem; column: int32): void =
  expandMethodBind(className TreeItem, "clear_custom_color", 1286410249)
  var `?param` = [getPtr column]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCustomFont*(self: TreeItem; column: int32; font: gdref Font): void =
  expandMethodBind(className TreeItem, "set_custom_font", 2637609184)
  var `?param` = [getPtr column, getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomFont*(self: TreeItem; column: int32): gdref Font =
  expandMethodBind(className TreeItem, "get_custom_font", 4244553094)
  var `?param` = [getPtr column]
  var ret: encoded gdref Font
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Font)

proc setCustomFontSize*(self: TreeItem; column: int32; fontSize: int32): void =
  expandMethodBind(className TreeItem, "set_custom_font_size", 3937882851)
  var `?param` = [getPtr column, getPtr fontSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomFontSize*(self: TreeItem; column: int32): int32 =
  expandMethodBind(className TreeItem, "get_custom_font_size", 923996154)
  var `?param` = [getPtr column]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setCustomBgColor*(self: TreeItem; column: int32; color: Color; justOutline: bool = false): void =
  expandMethodBind(className TreeItem, "set_custom_bg_color", 894174518)
  var `?param` = [getPtr column, getPtr color, getPtr justOutline]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearCustomBgColor*(self: TreeItem; column: int32): void =
  expandMethodBind(className TreeItem, "clear_custom_bg_color", 1286410249)
  var `?param` = [getPtr column]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomBgColor*(self: TreeItem; column: int32): Color =
  expandMethodBind(className TreeItem, "get_custom_bg_color", 3457211756)
  var `?param` = [getPtr column]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setCustomAsButton*(self: TreeItem; column: int32; enable: bool): void =
  expandMethodBind(className TreeItem, "set_custom_as_button", 300928843)
  var `?param` = [getPtr column, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCustomSetAsButton*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "is_custom_set_as_button", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addButton*(self: TreeItem; column: int32; button: gdref Texture2D; id: int32 = -1; disabled: bool = false; tooltipText: String = gdstring""): void =
  expandMethodBind(className TreeItem, "add_button", 1688223362)
  var `?param` = [getPtr column, getPtr button, getPtr id, getPtr disabled, getPtr tooltipText]
  methodbind.ptrcall(self, addr `?param`[0])

proc getButtonCount*(self: TreeItem; column: int32): int32 =
  expandMethodBind(className TreeItem, "get_button_count", 923996154)
  var `?param` = [getPtr column]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getButtonTooltipText*(self: TreeItem; column: int32; buttonIndex: int32): String =
  expandMethodBind(className TreeItem, "get_button_tooltip_text", 1391810591)
  var `?param` = [getPtr column, getPtr buttonIndex]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getButtonId*(self: TreeItem; column: int32; buttonIndex: int32): int32 =
  expandMethodBind(className TreeItem, "get_button_id", 3175239445)
  var `?param` = [getPtr column, getPtr buttonIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getButtonById*(self: TreeItem; column: int32; id: int32): int32 =
  expandMethodBind(className TreeItem, "get_button_by_id", 3175239445)
  var `?param` = [getPtr column, getPtr id]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getButtonColor*(self: TreeItem; column: int32; id: int32): Color =
  expandMethodBind(className TreeItem, "get_button_color", 2165839948)
  var `?param` = [getPtr column, getPtr id]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getButton*(self: TreeItem; column: int32; buttonIndex: int32): gdref Texture2D =
  expandMethodBind(className TreeItem, "get_button", 2584904275)
  var `?param` = [getPtr column, getPtr buttonIndex]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setButtonTooltipText*(self: TreeItem; column: int32; buttonIndex: int32; tooltip: String): void =
  expandMethodBind(className TreeItem, "set_button_tooltip_text", 2285447957)
  var `?param` = [getPtr column, getPtr buttonIndex, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc setButton*(self: TreeItem; column: int32; buttonIndex: int32; button: gdref Texture2D): void =
  expandMethodBind(className TreeItem, "set_button", 176101966)
  var `?param` = [getPtr column, getPtr buttonIndex, getPtr button]
  methodbind.ptrcall(self, addr `?param`[0])

proc eraseButton*(self: TreeItem; column: int32; buttonIndex: int32): void =
  expandMethodBind(className TreeItem, "erase_button", 3937882851)
  var `?param` = [getPtr column, getPtr buttonIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setButtonDisabled*(self: TreeItem; column: int32; buttonIndex: int32; disabled: bool): void =
  expandMethodBind(className TreeItem, "set_button_disabled", 1383440665)
  var `?param` = [getPtr column, getPtr buttonIndex, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setButtonColor*(self: TreeItem; column: int32; buttonIndex: int32; color: Color): void =
  expandMethodBind(className TreeItem, "set_button_color", 3733378741)
  var `?param` = [getPtr column, getPtr buttonIndex, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc isButtonDisabled*(self: TreeItem; column: int32; buttonIndex: int32): bool =
  expandMethodBind(className TreeItem, "is_button_disabled", 2522259332)
  var `?param` = [getPtr column, getPtr buttonIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setTooltipText*(self: TreeItem; column: int32; tooltip: String): void =
  expandMethodBind(className TreeItem, "set_tooltip_text", 501894301)
  var `?param` = [getPtr column, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTooltipText*(self: TreeItem; column: int32): String =
  expandMethodBind(className TreeItem, "get_tooltip_text", 844755477)
  var `?param` = [getPtr column]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setTextAlignment*(self: TreeItem; column: int32; textAlignment: HorizontalAlignment): void =
  expandMethodBind(className TreeItem, "set_text_alignment", 3276431499)
  var `?param` = [getPtr column, getPtr textAlignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextAlignment*(self: TreeItem; column: int32): HorizontalAlignment =
  expandMethodBind(className TreeItem, "get_text_alignment", 4171562184)
  var `?param` = [getPtr column]
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setExpandRight*(self: TreeItem; column: int32; enable: bool): void =
  expandMethodBind(className TreeItem, "set_expand_right", 300928843)
  var `?param` = [getPtr column, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExpandRight*(self: TreeItem; column: int32): bool =
  expandMethodBind(className TreeItem, "get_expand_right", 1116898809)
  var `?param` = [getPtr column]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setDisableFolding*(self: TreeItem; disable: bool): void =
  expandMethodBind(className TreeItem, "set_disable_folding", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFoldingDisabled*(self: TreeItem): bool =
  expandMethodBind(className TreeItem, "is_folding_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc createChild*(self: TreeItem; index: int32 = -1): TreeItem =
  expandMethodBind(className TreeItem, "create_child", 954243986)
  var `?param` = [getPtr index]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc addChild*(self: TreeItem; child: TreeItem): void =
  expandMethodBind(className TreeItem, "add_child", 1819951137)
  var `?param` = [getPtr child]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeChild*(self: TreeItem; child: TreeItem): void =
  expandMethodBind(className TreeItem, "remove_child", 1819951137)
  var `?param` = [getPtr child]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTree*(self: TreeItem): Tree =
  expandMethodBind(className TreeItem, "get_tree", 2243340556)
  var ret: encoded Tree
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Tree)

proc getNext*(self: TreeItem): TreeItem =
  expandMethodBind(className TreeItem, "get_next", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TreeItem)

proc getPrev*(self: TreeItem): TreeItem =
  expandMethodBind(className TreeItem, "get_prev", 2768121250)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TreeItem)

proc getParent*(self: TreeItem): TreeItem =
  expandMethodBind(className TreeItem, "get_parent", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TreeItem)

proc getFirstChild*(self: TreeItem): TreeItem =
  expandMethodBind(className TreeItem, "get_first_child", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TreeItem)

proc getNextInTree*(self: TreeItem; wrap: bool = false): TreeItem =
  expandMethodBind(className TreeItem, "get_next_in_tree", 1666920593)
  var `?param` = [getPtr wrap]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc getPrevInTree*(self: TreeItem; wrap: bool = false): TreeItem =
  expandMethodBind(className TreeItem, "get_prev_in_tree", 1666920593)
  var `?param` = [getPtr wrap]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc getNextVisible*(self: TreeItem; wrap: bool = false): TreeItem =
  expandMethodBind(className TreeItem, "get_next_visible", 1666920593)
  var `?param` = [getPtr wrap]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc getPrevVisible*(self: TreeItem; wrap: bool = false): TreeItem =
  expandMethodBind(className TreeItem, "get_prev_visible", 1666920593)
  var `?param` = [getPtr wrap]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc getChild*(self: TreeItem; index: int32): TreeItem =
  expandMethodBind(className TreeItem, "get_child", 306700752)
  var `?param` = [getPtr index]
  var ret: encoded TreeItem
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TreeItem)

proc getChildCount*(self: TreeItem): int32 =
  expandMethodBind(className TreeItem, "get_child_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getChildren*(self: TreeItem): TypedArray[TreeItem] =
  expandMethodBind(className TreeItem, "get_children", 2915620761)
  var ret: encoded TypedArray[TreeItem]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[TreeItem])

proc getIndex*(self: TreeItem): int32 =
  expandMethodBind(className TreeItem, "get_index", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc moveBefore*(self: TreeItem; item: TreeItem): void =
  expandMethodBind(className TreeItem, "move_before", 1819951137)
  var `?param` = [getPtr item]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveAfter*(self: TreeItem; item: TreeItem): void =
  expandMethodBind(className TreeItem, "move_after", 1819951137)
  var `?param` = [getPtr item]
  methodbind.ptrcall(self, addr `?param`[0])

proc callRecursive*(self: TreeItem; `method`: Variant; args: varargs[Variant]): void =
  expandMethodBind(className TreeItem, "call_recursive", 2866548813)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callRecursive*(self: TreeItem; `method`: StringName; args: varargs[Variant]): void =
  callRecursive(self, variant `method`, args)

template collapsed*(self: TreeItem): untyped = self.isCollapsed()
template `collapsed=`*(self: TreeItem; value) = self.setCollapsed(value)

template visible*(self: TreeItem): untyped = self.isVisible()
template `visible=`*(self: TreeItem; value) = self.setVisible(value)

template disableFolding*(self: TreeItem): untyped = self.isFoldingDisabled()
template `disableFolding=`*(self: TreeItem; value) = self.setDisableFolding(value)

template customMinimumHeight*(self: TreeItem): untyped = self.getCustomMinimumHeight()
template `customMinimumHeight=`*(self: TreeItem; value) = self.setCustomMinimumHeight(value)

const TreeItem_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TreeItem]): Table[string, string] = TreeItem_vmap