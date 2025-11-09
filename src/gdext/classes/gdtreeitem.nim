{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(TreeItem, Object)

proc setCellMode*(self: TreeItem; column: int32; mode: TreeItem_TreeCellMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_cell_mode", 289920701)
  methodbind.ptrcall(self, [getPtr column, getPtr mode], void)

proc getCellMode*(self: TreeItem; column: int32): TreeItem_TreeCellMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_cell_mode", 3406114978)
  methodbind.ptrcall(self, [getPtr column], TreeItem_TreeCellMode)

proc setAutoTranslateMode*(self: TreeItem; column: int32; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_auto_translate_mode", 287402019)
  methodbind.ptrcall(self, [getPtr column, getPtr mode], void)

proc getAutoTranslateMode*(self: TreeItem; column: int32): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_auto_translate_mode", 906302372)
  methodbind.ptrcall(self, [getPtr column], Node_AutoTranslateMode)

proc setEditMultiline*(self: TreeItem; column: int32; multiline: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_edit_multiline", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr multiline], void)

proc isEditMultiline*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_edit_multiline", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc setChecked*(self: TreeItem; column: int32; checked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_checked", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr checked], void)

proc setIndeterminate*(self: TreeItem; column: int32; indeterminate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_indeterminate", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr indeterminate], void)

proc isChecked*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_checked", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc isIndeterminate*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_indeterminate", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc propagateCheck*(self: TreeItem; column: int32; emitSignal: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "propagate_check", 972357352)
  methodbind.ptrcall(self, [getPtr column, getPtr emitSignal], void)

proc setText*(self: TreeItem; column: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_text", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr text], void)

proc getText*(self: TreeItem; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_text", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setDescription*(self: TreeItem; column: int32; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_description", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr description], void)

proc getDescription*(self: TreeItem; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_description", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setTextDirection*(self: TreeItem; column: int32; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_text_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr column, getPtr direction], void)

proc getTextDirection*(self: TreeItem; column: int32): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_text_direction", 4235602388)
  methodbind.ptrcall(self, [getPtr column], Control_TextDirection)

proc setAutowrapMode*(self: TreeItem; column: int32; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_autowrap_mode", 3633006561)
  methodbind.ptrcall(self, [getPtr column, getPtr autowrapMode], void)

proc getAutowrapMode*(self: TreeItem; column: int32): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_autowrap_mode", 2902757236)
  methodbind.ptrcall(self, [getPtr column], TextServer_AutowrapMode)

proc setTextOverrunBehavior*(self: TreeItem; column: int32; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_text_overrun_behavior", 1940772195)
  methodbind.ptrcall(self, [getPtr column, getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: TreeItem; column: int32): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_text_overrun_behavior", 3782727860)
  methodbind.ptrcall(self, [getPtr column], TextServer_OverrunBehavior)

proc setStructuredTextBidiOverride*(self: TreeItem; column: int32; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_structured_text_bidi_override", 868756907)
  methodbind.ptrcall(self, [getPtr column, getPtr parser], void)

proc getStructuredTextBidiOverride*(self: TreeItem; column: int32): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_structured_text_bidi_override", 3377823772)
  methodbind.ptrcall(self, [getPtr column], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TreeItem; column: int32; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_structured_text_bidi_override_options", 537221740)
  methodbind.ptrcall(self, [getPtr column, getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: TreeItem; column: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_structured_text_bidi_override_options", 663333327)
  methodbind.ptrcall(self, [getPtr column], Array)

proc setLanguage*(self: TreeItem; column: int32; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_language", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr language], void)

proc getLanguage*(self: TreeItem; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_language", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setSuffix*(self: TreeItem; column: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_suffix", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr text], void)

proc getSuffix*(self: TreeItem; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_suffix", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setIcon*(self: TreeItem; column: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_icon", 666127730)
  methodbind.ptrcall(self, [getPtr column, getPtr texture], void)

proc getIcon*(self: TreeItem; column: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr column], gdref Texture2D)

proc setIconOverlay*(self: TreeItem; column: int32; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_icon_overlay", 666127730)
  methodbind.ptrcall(self, [getPtr column, getPtr texture], void)

proc getIconOverlay*(self: TreeItem; column: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_icon_overlay", 3536238170)
  methodbind.ptrcall(self, [getPtr column], gdref Texture2D)

proc setIconRegion*(self: TreeItem; column: int32; region: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_icon_region", 1356297692)
  methodbind.ptrcall(self, [getPtr column, getPtr region], void)

proc getIconRegion*(self: TreeItem; column: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_icon_region", 3327874267)
  methodbind.ptrcall(self, [getPtr column], Rect2)

proc setIconMaxWidth*(self: TreeItem; column: int32; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_icon_max_width", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr width], void)

proc getIconMaxWidth*(self: TreeItem; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_icon_max_width", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc setIconModulate*(self: TreeItem; column: int32; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_icon_modulate", 2878471219)
  methodbind.ptrcall(self, [getPtr column, getPtr modulate], void)

proc getIconModulate*(self: TreeItem; column: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_icon_modulate", 3457211756)
  methodbind.ptrcall(self, [getPtr column], Color)

proc setRange*(self: TreeItem; column: int32; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_range", 1602489585)
  methodbind.ptrcall(self, [getPtr column, getPtr value], void)

proc getRange*(self: TreeItem; column: int32): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_range", 2339986948)
  methodbind.ptrcall(self, [getPtr column], float64)

proc setRangeConfig*(self: TreeItem; column: int32; min: float64; max: float64; step: float64; expr: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_range_config", 1547181014)
  methodbind.ptrcall(self, [getPtr column, getPtr min, getPtr max, getPtr step, getPtr expr], void)

proc getRangeConfig*(self: TreeItem; column: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_range_config", 3554694381)
  methodbind.ptrcall(self, [getPtr column], Dictionary)

proc setMetadata*(self: TreeItem; column: int32; meta: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr column, getPtr meta], void)

proc getMetadata*(self: TreeItem; column: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr column], Variant)

proc setCustomDraw*(self: TreeItem; column: int32; `object`: Object; callback: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_draw", 272420368)
  methodbind.ptrcall(self, [getPtr column, getPtr `object`, getPtr callback], void)

proc setCustomDrawCallback*(self: TreeItem; column: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_draw_callback", 957362965)
  methodbind.ptrcall(self, [getPtr column, getPtr callback], void)

proc getCustomDrawCallback*(self: TreeItem; column: int32): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_draw_callback", 1317077508)
  methodbind.ptrcall(self, [getPtr column], Callable)

proc setCollapsed*(self: TreeItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_collapsed", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollapsed*(self: TreeItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_collapsed", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setCollapsedRecursive*(self: TreeItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_collapsed_recursive", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAnyCollapsed*(self: TreeItem; onlyVisible: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_any_collapsed", 2595650253)
  methodbind.ptrcall(self, [getPtr onlyVisible], bool)

proc setVisible*(self: TreeItem; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isVisible*(self: TreeItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_visible", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isVisibleInTree*(self: TreeItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_visible_in_tree", 36873697)
  methodbind.ptrcall(self, [], bool)

proc uncollapseTree*(self: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "uncollapse_tree", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCustomMinimumHeight*(self: TreeItem; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_minimum_height", 1286410249)
  methodbind.ptrcall(self, [getPtr height], void)

proc getCustomMinimumHeight*(self: TreeItem): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_minimum_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSelectable*(self: TreeItem; column: int32; selectable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_selectable", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr selectable], void)

proc isSelectable*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_selectable", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc isSelected*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_selected", 3067735520)
  methodbind.ptrcall(self, [getPtr column], bool)

proc select*(self: TreeItem; column: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "select", 1286410249)
  methodbind.ptrcall(self, [getPtr column], void)

proc deselect*(self: TreeItem; column: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "deselect", 1286410249)
  methodbind.ptrcall(self, [getPtr column], void)

proc setEditable*(self: TreeItem; column: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_editable", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr enabled], void)

proc isEditable*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_editable", 3067735520)
  methodbind.ptrcall(self, [getPtr column], bool)

proc setCustomColor*(self: TreeItem; column: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_color", 2878471219)
  methodbind.ptrcall(self, [getPtr column, getPtr color], void)

proc getCustomColor*(self: TreeItem; column: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_color", 3457211756)
  methodbind.ptrcall(self, [getPtr column], Color)

proc clearCustomColor*(self: TreeItem; column: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "clear_custom_color", 1286410249)
  methodbind.ptrcall(self, [getPtr column], void)

proc setCustomFont*(self: TreeItem; column: int32; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_font", 2637609184)
  methodbind.ptrcall(self, [getPtr column, getPtr font], void)

proc getCustomFont*(self: TreeItem; column: int32): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_font", 4244553094)
  methodbind.ptrcall(self, [getPtr column], gdref Font)

proc setCustomFontSize*(self: TreeItem; column: int32; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_font_size", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr fontSize], void)

proc getCustomFontSize*(self: TreeItem; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_font_size", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc setCustomBgColor*(self: TreeItem; column: int32; color: Color; justOutline: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_bg_color", 894174518)
  methodbind.ptrcall(self, [getPtr column, getPtr color, getPtr justOutline], void)

proc clearCustomBgColor*(self: TreeItem; column: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "clear_custom_bg_color", 1286410249)
  methodbind.ptrcall(self, [getPtr column], void)

proc getCustomBgColor*(self: TreeItem; column: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_custom_bg_color", 3457211756)
  methodbind.ptrcall(self, [getPtr column], Color)

proc setCustomAsButton*(self: TreeItem; column: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_custom_as_button", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr enable], void)

proc isCustomSetAsButton*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_custom_set_as_button", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc clearButtons*(self: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "clear_buttons", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addButton*(self: TreeItem; column: int32; button: gdref Texture2D; id: int32 = -1; disabled: bool = false; tooltipText: String = newGdString(); description: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "add_button", 973481897)
  methodbind.ptrcall(self, [getPtr column, getPtr button, getPtr id, getPtr disabled, getPtr tooltipText, getPtr description], void)

proc getButtonCount*(self: TreeItem; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button_count", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc getButtonTooltipText*(self: TreeItem; column: int32; buttonIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button_tooltip_text", 1391810591)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex], String)

proc getButtonId*(self: TreeItem; column: int32; buttonIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button_id", 3175239445)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex], int32)

proc getButtonById*(self: TreeItem; column: int32; id: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button_by_id", 3175239445)
  methodbind.ptrcall(self, [getPtr column, getPtr id], int32)

proc getButtonColor*(self: TreeItem; column: int32; id: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button_color", 2165839948)
  methodbind.ptrcall(self, [getPtr column, getPtr id], Color)

proc getButton*(self: TreeItem; column: int32; buttonIndex: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_button", 2584904275)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex], gdref Texture2D)

proc setButtonTooltipText*(self: TreeItem; column: int32; buttonIndex: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_button_tooltip_text", 2285447957)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex, getPtr tooltip], void)

proc setButton*(self: TreeItem; column: int32; buttonIndex: int32; button: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_button", 176101966)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex, getPtr button], void)

proc eraseButton*(self: TreeItem; column: int32; buttonIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "erase_button", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex], void)

proc setButtonDescription*(self: TreeItem; column: int32; buttonIndex: int32; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_button_description", 2285447957)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex, getPtr description], void)

proc setButtonDisabled*(self: TreeItem; column: int32; buttonIndex: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_button_disabled", 1383440665)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex, getPtr disabled], void)

proc setButtonColor*(self: TreeItem; column: int32; buttonIndex: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_button_color", 3733378741)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex, getPtr color], void)

proc isButtonDisabled*(self: TreeItem; column: int32; buttonIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_button_disabled", 2522259332)
  methodbind.ptrcall(self, [getPtr column, getPtr buttonIndex], bool)

proc setTooltipText*(self: TreeItem; column: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_tooltip_text", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr tooltip], void)

proc getTooltipText*(self: TreeItem; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_tooltip_text", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setTextAlignment*(self: TreeItem; column: int32; textAlignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_text_alignment", 3276431499)
  methodbind.ptrcall(self, [getPtr column, getPtr textAlignment], void)

proc getTextAlignment*(self: TreeItem; column: int32): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_text_alignment", 4171562184)
  methodbind.ptrcall(self, [getPtr column], HorizontalAlignment)

proc setExpandRight*(self: TreeItem; column: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_expand_right", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr enable], void)

proc getExpandRight*(self: TreeItem; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_expand_right", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc setDisableFolding*(self: TreeItem; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "set_disable_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc isFoldingDisabled*(self: TreeItem): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "is_folding_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc createChild*(self: TreeItem; index: int32 = -1): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "create_child", 954243986)
  methodbind.ptrcall(self, [getPtr index], TreeItem)

proc addChild*(self: TreeItem; child: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "add_child", 1819951137)
  methodbind.ptrcall(self, [getPtr child], void)

proc removeChild*(self: TreeItem; child: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "remove_child", 1819951137)
  methodbind.ptrcall(self, [getPtr child], void)

proc getTree*(self: TreeItem): Tree =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_tree", 2243340556)
  methodbind.ptrcall(self, [], Tree)

proc getNext*(self: TreeItem): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_next", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc getPrev*(self: TreeItem): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_prev", 2768121250)
  methodbind.ptrcall(self, [], TreeItem)

proc getParent*(self: TreeItem): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_parent", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc getFirstChild*(self: TreeItem): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_first_child", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc getNextInTree*(self: TreeItem; wrap: bool = false): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_next_in_tree", 1666920593)
  methodbind.ptrcall(self, [getPtr wrap], TreeItem)

proc getPrevInTree*(self: TreeItem; wrap: bool = false): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_prev_in_tree", 1666920593)
  methodbind.ptrcall(self, [getPtr wrap], TreeItem)

proc getNextVisible*(self: TreeItem; wrap: bool = false): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_next_visible", 1666920593)
  methodbind.ptrcall(self, [getPtr wrap], TreeItem)

proc getPrevVisible*(self: TreeItem; wrap: bool = false): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_prev_visible", 1666920593)
  methodbind.ptrcall(self, [getPtr wrap], TreeItem)

proc getChild*(self: TreeItem; index: int32): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_child", 306700752)
  methodbind.ptrcall(self, [getPtr index], TreeItem)

proc getChildCount*(self: TreeItem): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_child_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getChildren*(self: TreeItem): TypedArray[TreeItem] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_children", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[TreeItem])

proc getIndex*(self: TreeItem): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "get_index", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc moveBefore*(self: TreeItem; item: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "move_before", 1819951137)
  methodbind.ptrcall(self, [getPtr item], void)

proc moveAfter*(self: TreeItem; item: TreeItem): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "move_after", 1819951137)
  methodbind.ptrcall(self, [getPtr item], void)

proc callRecursive*(self: TreeItem; `method`: Variant; args: varargs[Variant, variant]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TreeItem, "call_recursive", 2866548813)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callRecursive*(self: TreeItem; `method`: StringName; args: varargs[Variant, variant]): void =
  callRecursive(self, variant `method`, args)

template collapsed*(self: TreeItem): untyped = self.isCollapsed()
template `collapsed=`*(self: TreeItem; value) = self.setCollapsed(value)

template visible*(self: TreeItem): untyped = self.isVisible()
template `visible=`*(self: TreeItem; value) = self.setVisible(value)

template disableFolding*(self: TreeItem): untyped = self.isFoldingDisabled()
template `disableFolding=`*(self: TreeItem; value) = self.setDisableFolding(value)

template customMinimumHeight*(self: TreeItem): untyped = self.getCustomMinimumHeight()
template `customMinimumHeight=`*(self: TreeItem; value) = self.setCustomMinimumHeight(value)
