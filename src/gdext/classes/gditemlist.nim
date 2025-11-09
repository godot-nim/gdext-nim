{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(ItemList, Control)

proc addItem*(self: ItemList; text: String; icon: gdref Texture2D = default gdref Texture2D; selectable: bool = true): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "add_item", 359861678)
  methodbind.ptrcall(self, [getPtr text, getPtr icon, getPtr selectable], int32)

proc addIconItem*(self: ItemList; icon: gdref Texture2D; selectable: bool = true): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "add_icon_item", 4256579627)
  methodbind.ptrcall(self, [getPtr icon, getPtr selectable], int32)

proc setItemText*(self: ItemList; idx: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_text", 501894301)
  methodbind.ptrcall(self, [getPtr idx, getPtr text], void)

proc getItemText*(self: ItemList; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_text", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc setItemIcon*(self: ItemList; idx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_icon", 666127730)
  methodbind.ptrcall(self, [getPtr idx, getPtr icon], void)

proc getItemIcon*(self: ItemList; idx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr idx], gdref Texture2D)

proc setItemTextDirection*(self: ItemList; idx: int32; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_text_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr idx, getPtr direction], void)

proc getItemTextDirection*(self: ItemList; idx: int32): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_text_direction", 4235602388)
  methodbind.ptrcall(self, [getPtr idx], Control_TextDirection)

proc setItemLanguage*(self: ItemList; idx: int32; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_language", 501894301)
  methodbind.ptrcall(self, [getPtr idx, getPtr language], void)

proc getItemLanguage*(self: ItemList; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_language", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc setItemAutoTranslateMode*(self: ItemList; idx: int32; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_auto_translate_mode", 287402019)
  methodbind.ptrcall(self, [getPtr idx, getPtr mode], void)

proc getItemAutoTranslateMode*(self: ItemList; idx: int32): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_auto_translate_mode", 906302372)
  methodbind.ptrcall(self, [getPtr idx], Node_AutoTranslateMode)

proc setItemIconTransposed*(self: ItemList; idx: int32; transposed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_icon_transposed", 300928843)
  methodbind.ptrcall(self, [getPtr idx, getPtr transposed], void)

proc isItemIconTransposed*(self: ItemList; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_item_icon_transposed", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc setItemIconRegion*(self: ItemList; idx: int32; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_icon_region", 1356297692)
  methodbind.ptrcall(self, [getPtr idx, getPtr rect], void)

proc getItemIconRegion*(self: ItemList; idx: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_icon_region", 3327874267)
  methodbind.ptrcall(self, [getPtr idx], Rect2)

proc setItemIconModulate*(self: ItemList; idx: int32; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_icon_modulate", 2878471219)
  methodbind.ptrcall(self, [getPtr idx, getPtr modulate], void)

proc getItemIconModulate*(self: ItemList; idx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_icon_modulate", 3457211756)
  methodbind.ptrcall(self, [getPtr idx], Color)

proc setItemSelectable*(self: ItemList; idx: int32; selectable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_selectable", 300928843)
  methodbind.ptrcall(self, [getPtr idx, getPtr selectable], void)

proc isItemSelectable*(self: ItemList; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_item_selectable", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc setItemDisabled*(self: ItemList; idx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr idx, getPtr disabled], void)

proc isItemDisabled*(self: ItemList; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_item_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc setItemMetadata*(self: ItemList; idx: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr idx, getPtr metadata], void)

proc getItemMetadata*(self: ItemList; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr idx], Variant)

proc setItemCustomBgColor*(self: ItemList; idx: int32; customBgColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_custom_bg_color", 2878471219)
  methodbind.ptrcall(self, [getPtr idx, getPtr customBgColor], void)

proc getItemCustomBgColor*(self: ItemList; idx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_custom_bg_color", 3457211756)
  methodbind.ptrcall(self, [getPtr idx], Color)

proc setItemCustomFgColor*(self: ItemList; idx: int32; customFgColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_custom_fg_color", 2878471219)
  methodbind.ptrcall(self, [getPtr idx, getPtr customFgColor], void)

proc getItemCustomFgColor*(self: ItemList; idx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_custom_fg_color", 3457211756)
  methodbind.ptrcall(self, [getPtr idx], Color)

proc getItemRect*(self: ItemList; idx: int32; expand: bool = true): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_rect", 159227807)
  methodbind.ptrcall(self, [getPtr idx, getPtr expand], Rect2)

proc setItemTooltipEnabled*(self: ItemList; idx: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_tooltip_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr idx, getPtr enable], void)

proc isItemTooltipEnabled*(self: ItemList; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_item_tooltip_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc setItemTooltip*(self: ItemList; idx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr idx, getPtr tooltip], void)

proc getItemTooltip*(self: ItemList; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc select*(self: ItemList; idx: int32; single: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "select", 972357352)
  methodbind.ptrcall(self, [getPtr idx, getPtr single], void)

proc deselect*(self: ItemList; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "deselect", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc deselectAll*(self: ItemList): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "deselect_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isSelected*(self: ItemList; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_selected", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc getSelectedItems*(self: ItemList): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_selected_items", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc moveItem*(self: ItemList; fromIdx: int32; toIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "move_item", 3937882851)
  methodbind.ptrcall(self, [getPtr fromIdx, getPtr toIdx], void)

proc setItemCount*(self: ItemList; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_item_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getItemCount*(self: ItemList): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc removeItem*(self: ItemList; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "remove_item", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc clear*(self: ItemList): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc sortItemsByText*(self: ItemList): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "sort_items_by_text", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setFixedColumnWidth*(self: ItemList; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_fixed_column_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc getFixedColumnWidth*(self: ItemList): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_fixed_column_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSameColumnWidth*(self: ItemList; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_same_column_width", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSameColumnWidth*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_same_column_width", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaxTextLines*(self: ItemList; lines: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_max_text_lines", 1286410249)
  methodbind.ptrcall(self, [getPtr lines], void)

proc getMaxTextLines*(self: ItemList): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_max_text_lines", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxColumns*(self: ItemList; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_max_columns", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getMaxColumns*(self: ItemList): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_max_columns", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSelectMode*(self: ItemList; mode: ItemList_SelectMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_select_mode", 928267388)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getSelectMode*(self: ItemList): ItemList_SelectMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_select_mode", 1191945842)
  methodbind.ptrcall(self, [], ItemList_SelectMode)

proc setIconMode*(self: ItemList; mode: ItemList_IconMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_icon_mode", 2025053633)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getIconMode*(self: ItemList): ItemList_IconMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_icon_mode", 3353929232)
  methodbind.ptrcall(self, [], ItemList_IconMode)

proc setFixedIconSize*(self: ItemList; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_fixed_icon_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getFixedIconSize*(self: ItemList): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_fixed_icon_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setIconScale*(self: ItemList; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_icon_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getIconScale*(self: ItemList): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_icon_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAllowRmbSelect*(self: ItemList; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_allow_rmb_select", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowRmbSelect*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_allow_rmb_select", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowReselect*(self: ItemList; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_allow_reselect", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowReselect*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_allow_reselect", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowSearch*(self: ItemList; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_allow_search", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowSearch*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_allow_search", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoWidth*(self: ItemList; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_auto_width", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasAutoWidth*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "has_auto_width", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoHeight*(self: ItemList; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_auto_height", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasAutoHeight*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "has_auto_height", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAnythingSelected*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "is_anything_selected", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getItemAtPosition*(self: ItemList; position: Vector2; exact: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_item_at_position", 2300324924)
  methodbind.ptrcall(self, [getPtr position, getPtr exact], int32)

proc ensureCurrentIsVisible*(self: ItemList): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "ensure_current_is_visible", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getVScrollBar*(self: ItemList): VScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_v_scroll_bar", 2630340773)
  methodbind.ptrcall(self, [], VScrollBar)

proc getHScrollBar*(self: ItemList): HScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_h_scroll_bar", 4004517983)
  methodbind.ptrcall(self, [], HScrollBar)

proc setTextOverrunBehavior*(self: ItemList; overrunBehavior: TextServer_OverrunBehavior): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_text_overrun_behavior", 1008890932)
  methodbind.ptrcall(self, [getPtr overrunBehavior], void)

proc getTextOverrunBehavior*(self: ItemList): TextServer_OverrunBehavior =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "get_text_overrun_behavior", 3779142101)
  methodbind.ptrcall(self, [], TextServer_OverrunBehavior)

proc setWraparoundItems*(self: ItemList; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "set_wraparound_items", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasWraparoundItems*(self: ItemList): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "has_wraparound_items", 36873697)
  methodbind.ptrcall(self, [], bool)

proc forceUpdateListSize*(self: ItemList): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ItemList, "force_update_list_size", 3218959716)
  methodbind.ptrcall(self, [], void)

template selectMode*(self: ItemList): untyped = self.getSelectMode()
template `selectMode=`*(self: ItemList; value) = self.setSelectMode(value)

template allowReselect*(self: ItemList): untyped = self.getAllowReselect()
template `allowReselect=`*(self: ItemList; value) = self.setAllowReselect(value)

template allowRmbSelect*(self: ItemList): untyped = self.getAllowRmbSelect()
template `allowRmbSelect=`*(self: ItemList; value) = self.setAllowRmbSelect(value)

template allowSearch*(self: ItemList): untyped = self.getAllowSearch()
template `allowSearch=`*(self: ItemList; value) = self.setAllowSearch(value)

template maxTextLines*(self: ItemList): untyped = self.getMaxTextLines()
template `maxTextLines=`*(self: ItemList; value) = self.setMaxTextLines(value)

template autoWidth*(self: ItemList): untyped = self.hasAutoWidth()
template `autoWidth=`*(self: ItemList; value) = self.setAutoWidth(value)

template autoHeight*(self: ItemList): untyped = self.hasAutoHeight()
template `autoHeight=`*(self: ItemList; value) = self.setAutoHeight(value)

template textOverrunBehavior*(self: ItemList): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: ItemList; value) = self.setTextOverrunBehavior(value)

template wraparoundItems*(self: ItemList): untyped = self.hasWraparoundItems()
template `wraparoundItems=`*(self: ItemList; value) = self.setWraparoundItems(value)

template itemCount*(self: ItemList): untyped = self.getItemCount()
template `itemCount=`*(self: ItemList; value) = self.setItemCount(value)

template maxColumns*(self: ItemList): untyped = self.getMaxColumns()
template `maxColumns=`*(self: ItemList; value) = self.setMaxColumns(value)

template sameColumnWidth*(self: ItemList): untyped = self.isSameColumnWidth()
template `sameColumnWidth=`*(self: ItemList; value) = self.setSameColumnWidth(value)

template fixedColumnWidth*(self: ItemList): untyped = self.getFixedColumnWidth()
template `fixedColumnWidth=`*(self: ItemList; value) = self.setFixedColumnWidth(value)

template iconMode*(self: ItemList): untyped = self.getIconMode()
template `iconMode=`*(self: ItemList; value) = self.setIconMode(value)

template iconScale*(self: ItemList): untyped = self.getIconScale()
template `iconScale=`*(self: ItemList; value) = self.setIconScale(value)

template fixedIconSize*(self: ItemList): untyped = self.getFixedIconSize()
template `fixedIconSize=`*(self: ItemList; value) = self.setFixedIconSize(value)
