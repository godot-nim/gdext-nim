{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc addItem*(self: ItemList; text: String; icon: gdref Texture2D = default gdref Texture2D; selectable: bool = true): int32 =
  expandMethodBind(className ItemList, "add_item", 359861678)
  var `?param` = [getPtr text, getPtr icon, getPtr selectable]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addIconItem*(self: ItemList; icon: gdref Texture2D; selectable: bool = true): int32 =
  expandMethodBind(className ItemList, "add_icon_item", 4256579627)
  var `?param` = [getPtr icon, getPtr selectable]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setItemText*(self: ItemList; idx: int32; text: String): void =
  expandMethodBind(className ItemList, "set_item_text", 501894301)
  var `?param` = [getPtr idx, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemText*(self: ItemList; idx: int32): String =
  expandMethodBind(className ItemList, "get_item_text", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setItemIcon*(self: ItemList; idx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className ItemList, "set_item_icon", 666127730)
  var `?param` = [getPtr idx, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemIcon*(self: ItemList; idx: int32): gdref Texture2D =
  expandMethodBind(className ItemList, "get_item_icon", 3536238170)
  var `?param` = [getPtr idx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setItemTextDirection*(self: ItemList; idx: int32; direction: Control_TextDirection): void =
  expandMethodBind(className ItemList, "set_item_text_direction", 1707680378)
  var `?param` = [getPtr idx, getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemTextDirection*(self: ItemList; idx: int32): Control_TextDirection =
  expandMethodBind(className ItemList, "get_item_text_direction", 4235602388)
  var `?param` = [getPtr idx]
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setItemLanguage*(self: ItemList; idx: int32; language: String): void =
  expandMethodBind(className ItemList, "set_item_language", 501894301)
  var `?param` = [getPtr idx, getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemLanguage*(self: ItemList; idx: int32): String =
  expandMethodBind(className ItemList, "get_item_language", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setItemIconTransposed*(self: ItemList; idx: int32; transposed: bool): void =
  expandMethodBind(className ItemList, "set_item_icon_transposed", 300928843)
  var `?param` = [getPtr idx, getPtr transposed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isItemIconTransposed*(self: ItemList; idx: int32): bool =
  expandMethodBind(className ItemList, "is_item_icon_transposed", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setItemIconRegion*(self: ItemList; idx: int32; rect: Rect2): void =
  expandMethodBind(className ItemList, "set_item_icon_region", 1356297692)
  var `?param` = [getPtr idx, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemIconRegion*(self: ItemList; idx: int32): Rect2 =
  expandMethodBind(className ItemList, "get_item_icon_region", 3327874267)
  var `?param` = [getPtr idx]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc setItemIconModulate*(self: ItemList; idx: int32; modulate: Color): void =
  expandMethodBind(className ItemList, "set_item_icon_modulate", 2878471219)
  var `?param` = [getPtr idx, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemIconModulate*(self: ItemList; idx: int32): Color =
  expandMethodBind(className ItemList, "get_item_icon_modulate", 3457211756)
  var `?param` = [getPtr idx]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setItemSelectable*(self: ItemList; idx: int32; selectable: bool): void =
  expandMethodBind(className ItemList, "set_item_selectable", 300928843)
  var `?param` = [getPtr idx, getPtr selectable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isItemSelectable*(self: ItemList; idx: int32): bool =
  expandMethodBind(className ItemList, "is_item_selectable", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setItemDisabled*(self: ItemList; idx: int32; disabled: bool): void =
  expandMethodBind(className ItemList, "set_item_disabled", 300928843)
  var `?param` = [getPtr idx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isItemDisabled*(self: ItemList; idx: int32): bool =
  expandMethodBind(className ItemList, "is_item_disabled", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setItemMetadata*(self: ItemList; idx: int32; metadata: Variant): void =
  expandMethodBind(className ItemList, "set_item_metadata", 2152698145)
  var `?param` = [getPtr idx, getPtr metadata]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemMetadata*(self: ItemList; idx: int32): Variant =
  expandMethodBind(className ItemList, "get_item_metadata", 4227898402)
  var `?param` = [getPtr idx]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setItemCustomBgColor*(self: ItemList; idx: int32; customBgColor: Color): void =
  expandMethodBind(className ItemList, "set_item_custom_bg_color", 2878471219)
  var `?param` = [getPtr idx, getPtr customBgColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCustomBgColor*(self: ItemList; idx: int32): Color =
  expandMethodBind(className ItemList, "get_item_custom_bg_color", 3457211756)
  var `?param` = [getPtr idx]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setItemCustomFgColor*(self: ItemList; idx: int32; customFgColor: Color): void =
  expandMethodBind(className ItemList, "set_item_custom_fg_color", 2878471219)
  var `?param` = [getPtr idx, getPtr customFgColor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCustomFgColor*(self: ItemList; idx: int32): Color =
  expandMethodBind(className ItemList, "get_item_custom_fg_color", 3457211756)
  var `?param` = [getPtr idx]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getItemRect*(self: ItemList; idx: int32; expand: bool = true): Rect2 =
  expandMethodBind(className ItemList, "get_item_rect", 159227807)
  var `?param` = [getPtr idx, getPtr expand]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc setItemTooltipEnabled*(self: ItemList; idx: int32; enable: bool): void =
  expandMethodBind(className ItemList, "set_item_tooltip_enabled", 300928843)
  var `?param` = [getPtr idx, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isItemTooltipEnabled*(self: ItemList; idx: int32): bool =
  expandMethodBind(className ItemList, "is_item_tooltip_enabled", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setItemTooltip*(self: ItemList; idx: int32; tooltip: String): void =
  expandMethodBind(className ItemList, "set_item_tooltip", 501894301)
  var `?param` = [getPtr idx, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemTooltip*(self: ItemList; idx: int32): String =
  expandMethodBind(className ItemList, "get_item_tooltip", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc select*(self: ItemList; idx: int32; single: bool = true): void =
  expandMethodBind(className ItemList, "select", 972357352)
  var `?param` = [getPtr idx, getPtr single]
  methodbind.ptrcall(self, addr `?param`[0])

proc deselect*(self: ItemList; idx: int32): void =
  expandMethodBind(className ItemList, "deselect", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc deselectAll*(self: ItemList): void =
  expandMethodBind(className ItemList, "deselect_all", 3218959716)
  methodbind.ptrcall(self, nil)

proc isSelected*(self: ItemList; idx: int32): bool =
  expandMethodBind(className ItemList, "is_selected", 1116898809)
  var `?param` = [getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSelectedItems*(self: ItemList): PackedInt32Array =
  expandMethodBind(className ItemList, "get_selected_items", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc moveItem*(self: ItemList; fromIdx: int32; toIdx: int32): void =
  expandMethodBind(className ItemList, "move_item", 3937882851)
  var `?param` = [getPtr fromIdx, getPtr toIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemCount*(self: ItemList; count: int32): void =
  expandMethodBind(className ItemList, "set_item_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCount*(self: ItemList): int32 =
  expandMethodBind(className ItemList, "get_item_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc removeItem*(self: ItemList; idx: int32): void =
  expandMethodBind(className ItemList, "remove_item", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: ItemList): void =
  expandMethodBind(className ItemList, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc sortItemsByText*(self: ItemList): void =
  expandMethodBind(className ItemList, "sort_items_by_text", 3218959716)
  methodbind.ptrcall(self, nil)

proc setFixedColumnWidth*(self: ItemList; width: int32): void =
  expandMethodBind(className ItemList, "set_fixed_column_width", 1286410249)
  var `?param` = [getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFixedColumnWidth*(self: ItemList): int32 =
  expandMethodBind(className ItemList, "get_fixed_column_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSameColumnWidth*(self: ItemList; enable: bool): void =
  expandMethodBind(className ItemList, "set_same_column_width", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSameColumnWidth*(self: ItemList): bool =
  expandMethodBind(className ItemList, "is_same_column_width", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaxTextLines*(self: ItemList; lines: int32): void =
  expandMethodBind(className ItemList, "set_max_text_lines", 1286410249)
  var `?param` = [getPtr lines]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxTextLines*(self: ItemList): int32 =
  expandMethodBind(className ItemList, "get_max_text_lines", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxColumns*(self: ItemList; amount: int32): void =
  expandMethodBind(className ItemList, "set_max_columns", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxColumns*(self: ItemList): int32 =
  expandMethodBind(className ItemList, "get_max_columns", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSelectMode*(self: ItemList; mode: ItemList_SelectMode): void =
  expandMethodBind(className ItemList, "set_select_mode", 928267388)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSelectMode*(self: ItemList): ItemList_SelectMode =
  expandMethodBind(className ItemList, "get_select_mode", 1191945842)
  var ret: encoded ItemList_SelectMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ItemList_SelectMode)

proc setIconMode*(self: ItemList; mode: ItemList_IconMode): void =
  expandMethodBind(className ItemList, "set_icon_mode", 2025053633)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIconMode*(self: ItemList): ItemList_IconMode =
  expandMethodBind(className ItemList, "get_icon_mode", 3353929232)
  var ret: encoded ItemList_IconMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ItemList_IconMode)

proc setFixedIconSize*(self: ItemList; size: Vector2i): void =
  expandMethodBind(className ItemList, "set_fixed_icon_size", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFixedIconSize*(self: ItemList): Vector2i =
  expandMethodBind(className ItemList, "get_fixed_icon_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setIconScale*(self: ItemList; scale: Float): void =
  expandMethodBind(className ItemList, "set_icon_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIconScale*(self: ItemList): Float =
  expandMethodBind(className ItemList, "get_icon_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAllowRmbSelect*(self: ItemList; allow: bool): void =
  expandMethodBind(className ItemList, "set_allow_rmb_select", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAllowRmbSelect*(self: ItemList): bool =
  expandMethodBind(className ItemList, "get_allow_rmb_select", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowReselect*(self: ItemList; allow: bool): void =
  expandMethodBind(className ItemList, "set_allow_reselect", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAllowReselect*(self: ItemList): bool =
  expandMethodBind(className ItemList, "get_allow_reselect", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowSearch*(self: ItemList; allow: bool): void =
  expandMethodBind(className ItemList, "set_allow_search", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAllowSearch*(self: ItemList): bool =
  expandMethodBind(className ItemList, "get_allow_search", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoHeight*(self: ItemList; enable: bool): void =
  expandMethodBind(className ItemList, "set_auto_height", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasAutoHeight*(self: ItemList): bool =
  expandMethodBind(className ItemList, "has_auto_height", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isAnythingSelected*(self: ItemList): bool =
  expandMethodBind(className ItemList, "is_anything_selected", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getItemAtPosition*(self: ItemList; position: Vector2; exact: bool = false): int32 =
  expandMethodBind(className ItemList, "get_item_at_position", 2300324924)
  var `?param` = [getPtr position, getPtr exact]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc ensureCurrentIsVisible*(self: ItemList): void =
  expandMethodBind(className ItemList, "ensure_current_is_visible", 3218959716)
  methodbind.ptrcall(self, nil)

proc getVScrollBar*(self: ItemList): VScrollBar =
  expandMethodBind(className ItemList, "get_v_scroll_bar", 2630340773)
  var ret: encoded VScrollBar
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VScrollBar)

proc setTextOverrunBehavior*(self: ItemList; overrunBehavior: TextServer_OverrunBehavior): void =
  expandMethodBind(className ItemList, "set_text_overrun_behavior", 1008890932)
  var `?param` = [getPtr overrunBehavior]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextOverrunBehavior*(self: ItemList): TextServer_OverrunBehavior =
  expandMethodBind(className ItemList, "get_text_overrun_behavior", 3779142101)
  var ret: encoded TextServer_OverrunBehavior
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_OverrunBehavior)

proc forceUpdateListSize*(self: ItemList): void =
  expandMethodBind(className ItemList, "force_update_list_size", 3218959716)
  methodbind.ptrcall(self, nil)

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

template autoHeight*(self: ItemList): untyped = self.hasAutoHeight()
template `autoHeight=`*(self: ItemList; value) = self.setAutoHeight(value)

template textOverrunBehavior*(self: ItemList): untyped = self.getTextOverrunBehavior()
template `textOverrunBehavior=`*(self: ItemList; value) = self.setTextOverrunBehavior(value)

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

const ItemList_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ItemList]): Table[string, string] = ItemList_vmap

proc itemSelected*(self: ItemList; index: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_selected")
  let args = [index]
  self.emitSignal(signalname, args)

proc emptyClicked*(self: ItemList; atPosition: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("empty_clicked")
  let args = [atPosition, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc itemClicked*(self: ItemList; index: Variant; atPosition: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_clicked")
  let args = [index, atPosition, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc multiSelected*(self: ItemList; index: Variant; selected: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("multi_selected")
  let args = [index, selected]
  self.emitSignal(signalname, args)

proc itemActivated*(self: ItemList; index: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_activated")
  let args = [index]
  self.emitSignal(signalname, args)