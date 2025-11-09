{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(Tree, Control)

proc clear*(self: Tree): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createItem*(self: Tree; parent: TreeItem = default TreeItem; index: int32 = -1): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "create_item", 528467046)
  methodbind.ptrcall(self, [getPtr parent, getPtr index], TreeItem)

proc getRoot*(self: Tree): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_root", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc setColumnCustomMinimumWidth*(self: Tree; column: int32; minWidth: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_custom_minimum_width", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr minWidth], void)

proc setColumnExpand*(self: Tree; column: int32; expand: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_expand", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr expand], void)

proc setColumnExpandRatio*(self: Tree; column: int32; ratio: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_expand_ratio", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr ratio], void)

proc setColumnClipContent*(self: Tree; column: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_clip_content", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr enable], void)

proc isColumnExpanding*(self: Tree; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_column_expanding", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc isColumnClippingContent*(self: Tree; column: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_column_clipping_content", 1116898809)
  methodbind.ptrcall(self, [getPtr column], bool)

proc getColumnExpandRatio*(self: Tree; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_expand_ratio", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc getColumnWidth*(self: Tree; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_width", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc setHideRoot*(self: Tree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_hide_root", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isRootHidden*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_root_hidden", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getNextSelected*(self: Tree; `from`: TreeItem): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_next_selected", 873446299)
  methodbind.ptrcall(self, [getPtr `from`], TreeItem)

proc getSelected*(self: Tree): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_selected", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc setSelected*(self: Tree; item: TreeItem; column: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_selected", 2662547442)
  methodbind.ptrcall(self, [getPtr item, getPtr column], void)

proc getSelectedColumn*(self: Tree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_selected_column", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPressedButton*(self: Tree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_pressed_button", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSelectMode*(self: Tree; mode: Tree_SelectMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_select_mode", 3223887270)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getSelectMode*(self: Tree): Tree_SelectMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_select_mode", 100748571)
  methodbind.ptrcall(self, [], Tree_SelectMode)

proc deselectAll*(self: Tree): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "deselect_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setColumns*(self: Tree; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_columns", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getColumns*(self: Tree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_columns", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getEdited*(self: Tree): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_edited", 1514277247)
  methodbind.ptrcall(self, [], TreeItem)

proc getEditedColumn*(self: Tree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_edited_column", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc editSelected*(self: Tree; forceEdit: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "edit_selected", 2595650253)
  methodbind.ptrcall(self, [getPtr forceEdit], bool)

proc getCustomPopupRect*(self: Tree): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_custom_popup_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc getItemAreaRect*(self: Tree; item: TreeItem; column: int32 = -1; buttonIndex: int32 = -1): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_item_area_rect", 47968679)
  methodbind.ptrcall(self, [getPtr item, getPtr column, getPtr buttonIndex], Rect2)

proc getItemAtPosition*(self: Tree; position: Vector2): TreeItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_item_at_position", 4193340126)
  methodbind.ptrcall(self, [getPtr position], TreeItem)

proc getColumnAtPosition*(self: Tree; position: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_at_position", 3820158470)
  methodbind.ptrcall(self, [getPtr position], int32)

proc getDropSectionAtPosition*(self: Tree; position: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_drop_section_at_position", 3820158470)
  methodbind.ptrcall(self, [getPtr position], int32)

proc getButtonIdAtPosition*(self: Tree; position: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_button_id_at_position", 3820158470)
  methodbind.ptrcall(self, [getPtr position], int32)

proc ensureCursorIsVisible*(self: Tree): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "ensure_cursor_is_visible", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setColumnTitlesVisible*(self: Tree; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_titles_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc areColumnTitlesVisible*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "are_column_titles_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setColumnTitle*(self: Tree; column: int32; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_title", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr title], void)

proc getColumnTitle*(self: Tree; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_title", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc setColumnTitleAlignment*(self: Tree; column: int32; titleAlignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_title_alignment", 3276431499)
  methodbind.ptrcall(self, [getPtr column, getPtr titleAlignment], void)

proc getColumnTitleAlignment*(self: Tree; column: int32): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_title_alignment", 4171562184)
  methodbind.ptrcall(self, [getPtr column], HorizontalAlignment)

proc setColumnTitleDirection*(self: Tree; column: int32; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_title_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr column, getPtr direction], void)

proc getColumnTitleDirection*(self: Tree; column: int32): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_title_direction", 4235602388)
  methodbind.ptrcall(self, [getPtr column], Control_TextDirection)

proc setColumnTitleLanguage*(self: Tree; column: int32; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_column_title_language", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr language], void)

proc getColumnTitleLanguage*(self: Tree; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_column_title_language", 844755477)
  methodbind.ptrcall(self, [getPtr column], String)

proc getScroll*(self: Tree): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_scroll", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc scrollToItem*(self: Tree; item: TreeItem; centerOnItem: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "scroll_to_item", 1314737213)
  methodbind.ptrcall(self, [getPtr item, getPtr centerOnItem], void)

proc setHScrollEnabled*(self: Tree; hScroll: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_h_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr hScroll], void)

proc isHScrollEnabled*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_h_scroll_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVScrollEnabled*(self: Tree; hScroll: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_v_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr hScroll], void)

proc isVScrollEnabled*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_v_scroll_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHideFolding*(self: Tree; hide: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_hide_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr hide], void)

proc isFoldingHidden*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_folding_hidden", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnableRecursiveFolding*(self: Tree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_enable_recursive_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isRecursiveFoldingEnabled*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_recursive_folding_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDropModeFlags*(self: Tree; flags: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_drop_mode_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getDropModeFlags*(self: Tree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_drop_mode_flags", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAllowRmbSelect*(self: Tree; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_allow_rmb_select", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowRmbSelect*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_allow_rmb_select", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowReselect*(self: Tree; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_allow_reselect", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowReselect*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_allow_reselect", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowSearch*(self: Tree; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_allow_search", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowSearch*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "get_allow_search", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoTooltip*(self: Tree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "set_auto_tooltip", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoTooltipEnabled*(self: Tree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Tree, "is_auto_tooltip_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template columns*(self: Tree): untyped = self.getColumns()
template `columns=`*(self: Tree; value) = self.setColumns(value)

template columnTitlesVisible*(self: Tree): untyped = self.areColumnTitlesVisible()
template `columnTitlesVisible=`*(self: Tree; value) = self.setColumnTitlesVisible(value)

template allowReselect*(self: Tree): untyped = self.getAllowReselect()
template `allowReselect=`*(self: Tree; value) = self.setAllowReselect(value)

template allowRmbSelect*(self: Tree): untyped = self.getAllowRmbSelect()
template `allowRmbSelect=`*(self: Tree; value) = self.setAllowRmbSelect(value)

template allowSearch*(self: Tree): untyped = self.getAllowSearch()
template `allowSearch=`*(self: Tree; value) = self.setAllowSearch(value)

template hideFolding*(self: Tree): untyped = self.isFoldingHidden()
template `hideFolding=`*(self: Tree; value) = self.setHideFolding(value)

template enableRecursiveFolding*(self: Tree): untyped = self.isRecursiveFoldingEnabled()
template `enableRecursiveFolding=`*(self: Tree; value) = self.setEnableRecursiveFolding(value)

template hideRoot*(self: Tree): untyped = self.isRootHidden()
template `hideRoot=`*(self: Tree; value) = self.setHideRoot(value)

template dropModeFlags*(self: Tree): untyped = self.getDropModeFlags()
template `dropModeFlags=`*(self: Tree; value) = self.setDropModeFlags(value)

template selectMode*(self: Tree): untyped = self.getSelectMode()
template `selectMode=`*(self: Tree; value) = self.setSelectMode(value)

template scrollHorizontalEnabled*(self: Tree): untyped = self.isHScrollEnabled()
template `scrollHorizontalEnabled=`*(self: Tree; value) = self.setHScrollEnabled(value)

template scrollVerticalEnabled*(self: Tree): untyped = self.isVScrollEnabled()
template `scrollVerticalEnabled=`*(self: Tree; value) = self.setVScrollEnabled(value)

template autoTooltip*(self: Tree): untyped = self.isAutoTooltipEnabled()
template `autoTooltip=`*(self: Tree; value) = self.setAutoTooltip(value)
