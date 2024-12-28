{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc clear*(self: Tree): void =
  expandMethodBind(className Tree, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc createItem*(self: Tree; parent: TreeItem = default TreeItem; index: int32 = -1): TreeItem =
  expandMethodBind(className Tree, "create_item", 528467046)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [getPtr parent, getPtr index], addr ret)
  (addr ret).decode_result(TreeItem)

proc getRoot*(self: Tree): TreeItem =
  expandMethodBind(className Tree, "get_root", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TreeItem)

proc setColumnCustomMinimumWidth*(self: Tree; column: int32; minWidth: int32): void =
  expandMethodBind(className Tree, "set_column_custom_minimum_width", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr minWidth])

proc setColumnExpand*(self: Tree; column: int32; expand: bool): void =
  expandMethodBind(className Tree, "set_column_expand", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr expand])

proc setColumnExpandRatio*(self: Tree; column: int32; ratio: int32): void =
  expandMethodBind(className Tree, "set_column_expand_ratio", 3937882851)
  methodbind.ptrcall(self, [getPtr column, getPtr ratio])

proc setColumnClipContent*(self: Tree; column: int32; enable: bool): void =
  expandMethodBind(className Tree, "set_column_clip_content", 300928843)
  methodbind.ptrcall(self, [getPtr column, getPtr enable])

proc isColumnExpanding*(self: Tree; column: int32): bool =
  expandMethodBind(className Tree, "is_column_expanding", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(bool)

proc isColumnClippingContent*(self: Tree; column: int32): bool =
  expandMethodBind(className Tree, "is_column_clipping_content", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(bool)

proc getColumnExpandRatio*(self: Tree; column: int32): int32 =
  expandMethodBind(className Tree, "get_column_expand_ratio", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(int32)

proc getColumnWidth*(self: Tree; column: int32): int32 =
  expandMethodBind(className Tree, "get_column_width", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(int32)

proc setHideRoot*(self: Tree; enable: bool): void =
  expandMethodBind(className Tree, "set_hide_root", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isRootHidden*(self: Tree): bool =
  expandMethodBind(className Tree, "is_root_hidden", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getNextSelected*(self: Tree; `from`: TreeItem): TreeItem =
  expandMethodBind(className Tree, "get_next_selected", 873446299)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [getPtr `from`], addr ret)
  (addr ret).decode_result(TreeItem)

proc getSelected*(self: Tree): TreeItem =
  expandMethodBind(className Tree, "get_selected", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TreeItem)

proc setSelected*(self: Tree; item: TreeItem; column: int32): void =
  expandMethodBind(className Tree, "set_selected", 2662547442)
  methodbind.ptrcall(self, [getPtr item, getPtr column])

proc getSelectedColumn*(self: Tree): int32 =
  expandMethodBind(className Tree, "get_selected_column", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPressedButton*(self: Tree): int32 =
  expandMethodBind(className Tree, "get_pressed_button", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSelectMode*(self: Tree; mode: Tree_SelectMode): void =
  expandMethodBind(className Tree, "set_select_mode", 3223887270)
  methodbind.ptrcall(self, [getPtr mode])

proc getSelectMode*(self: Tree): Tree_SelectMode =
  expandMethodBind(className Tree, "get_select_mode", 100748571)
  var ret: encoded Tree_SelectMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Tree_SelectMode)

proc deselectAll*(self: Tree): void =
  expandMethodBind(className Tree, "deselect_all", 3218959716)
  methodbind.ptrcall(self, [])

proc setColumns*(self: Tree; amount: int32): void =
  expandMethodBind(className Tree, "set_columns", 1286410249)
  methodbind.ptrcall(self, [getPtr amount])

proc getColumns*(self: Tree): int32 =
  expandMethodBind(className Tree, "get_columns", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getEdited*(self: Tree): TreeItem =
  expandMethodBind(className Tree, "get_edited", 1514277247)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TreeItem)

proc getEditedColumn*(self: Tree): int32 =
  expandMethodBind(className Tree, "get_edited_column", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc editSelected*(self: Tree; forceEdit: bool = false): bool =
  expandMethodBind(className Tree, "edit_selected", 2595650253)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr forceEdit], addr ret)
  (addr ret).decode_result(bool)

proc getCustomPopupRect*(self: Tree): Rect2 =
  expandMethodBind(className Tree, "get_custom_popup_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2)

proc getItemAreaRect*(self: Tree; item: TreeItem; column: int32 = -1; buttonIndex: int32 = -1): Rect2 =
  expandMethodBind(className Tree, "get_item_area_rect", 47968679)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr item, getPtr column, getPtr buttonIndex], addr ret)
  (addr ret).decode_result(Rect2)

proc getItemAtPosition*(self: Tree; position: Vector2): TreeItem =
  expandMethodBind(className Tree, "get_item_at_position", 4193340126)
  var ret: encoded TreeItem
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(TreeItem)

proc getColumnAtPosition*(self: Tree; position: Vector2): int32 =
  expandMethodBind(className Tree, "get_column_at_position", 3820158470)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc getDropSectionAtPosition*(self: Tree; position: Vector2): int32 =
  expandMethodBind(className Tree, "get_drop_section_at_position", 3820158470)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc getButtonIdAtPosition*(self: Tree; position: Vector2): int32 =
  expandMethodBind(className Tree, "get_button_id_at_position", 3820158470)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc ensureCursorIsVisible*(self: Tree): void =
  expandMethodBind(className Tree, "ensure_cursor_is_visible", 3218959716)
  methodbind.ptrcall(self, [])

proc setColumnTitlesVisible*(self: Tree; visible: bool): void =
  expandMethodBind(className Tree, "set_column_titles_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible])

proc areColumnTitlesVisible*(self: Tree): bool =
  expandMethodBind(className Tree, "are_column_titles_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setColumnTitle*(self: Tree; column: int32; title: String): void =
  expandMethodBind(className Tree, "set_column_title", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr title])

proc getColumnTitle*(self: Tree; column: int32): String =
  expandMethodBind(className Tree, "get_column_title", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(String)

proc setColumnTitleAlignment*(self: Tree; column: int32; titleAlignment: HorizontalAlignment): void =
  expandMethodBind(className Tree, "set_column_title_alignment", 3276431499)
  methodbind.ptrcall(self, [getPtr column, getPtr titleAlignment])

proc getColumnTitleAlignment*(self: Tree; column: int32): HorizontalAlignment =
  expandMethodBind(className Tree, "get_column_title_alignment", 4171562184)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setColumnTitleDirection*(self: Tree; column: int32; direction: Control_TextDirection): void =
  expandMethodBind(className Tree, "set_column_title_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr column, getPtr direction])

proc getColumnTitleDirection*(self: Tree; column: int32): Control_TextDirection =
  expandMethodBind(className Tree, "get_column_title_direction", 4235602388)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setColumnTitleLanguage*(self: Tree; column: int32; language: String): void =
  expandMethodBind(className Tree, "set_column_title_language", 501894301)
  methodbind.ptrcall(self, [getPtr column, getPtr language])

proc getColumnTitleLanguage*(self: Tree; column: int32): String =
  expandMethodBind(className Tree, "get_column_title_language", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr column], addr ret)
  (addr ret).decode_result(String)

proc getScroll*(self: Tree): Vector2 =
  expandMethodBind(className Tree, "get_scroll", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc scrollToItem*(self: Tree; item: TreeItem; centerOnItem: bool = false): void =
  expandMethodBind(className Tree, "scroll_to_item", 1314737213)
  methodbind.ptrcall(self, [getPtr item, getPtr centerOnItem])

proc setHScrollEnabled*(self: Tree; hScroll: bool): void =
  expandMethodBind(className Tree, "set_h_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr hScroll])

proc isHScrollEnabled*(self: Tree): bool =
  expandMethodBind(className Tree, "is_h_scroll_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVScrollEnabled*(self: Tree; hScroll: bool): void =
  expandMethodBind(className Tree, "set_v_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr hScroll])

proc isVScrollEnabled*(self: Tree): bool =
  expandMethodBind(className Tree, "is_v_scroll_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHideFolding*(self: Tree; hide: bool): void =
  expandMethodBind(className Tree, "set_hide_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr hide])

proc isFoldingHidden*(self: Tree): bool =
  expandMethodBind(className Tree, "is_folding_hidden", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEnableRecursiveFolding*(self: Tree; enable: bool): void =
  expandMethodBind(className Tree, "set_enable_recursive_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isRecursiveFoldingEnabled*(self: Tree): bool =
  expandMethodBind(className Tree, "is_recursive_folding_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDropModeFlags*(self: Tree; flags: int32): void =
  expandMethodBind(className Tree, "set_drop_mode_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr flags])

proc getDropModeFlags*(self: Tree): int32 =
  expandMethodBind(className Tree, "get_drop_mode_flags", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAllowRmbSelect*(self: Tree; allow: bool): void =
  expandMethodBind(className Tree, "set_allow_rmb_select", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

proc getAllowRmbSelect*(self: Tree): bool =
  expandMethodBind(className Tree, "get_allow_rmb_select", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowReselect*(self: Tree; allow: bool): void =
  expandMethodBind(className Tree, "set_allow_reselect", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

proc getAllowReselect*(self: Tree): bool =
  expandMethodBind(className Tree, "get_allow_reselect", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAllowSearch*(self: Tree; allow: bool): void =
  expandMethodBind(className Tree, "set_allow_search", 2586408642)
  methodbind.ptrcall(self, [getPtr allow])

proc getAllowSearch*(self: Tree): bool =
  expandMethodBind(className Tree, "get_allow_search", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const Tree_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Tree]): Table[string, string] = Tree_vmap

proc itemSelected*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_selected")
  self.emitSignal(signalname)

proc cellSelected*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("cell_selected")
  self.emitSignal(signalname)

proc multiSelected*(self: Tree; item: Variant; column: Variant; selected: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("multi_selected")
  let args = [item, column, selected]
  self.emitSignal(signalname, args)

proc itemMouseSelected*(self: Tree; mousePosition: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_mouse_selected")
  let args = [mousePosition, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc emptyClicked*(self: Tree; clickPosition: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("empty_clicked")
  let args = [clickPosition, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc itemEdited*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_edited")
  self.emitSignal(signalname)

proc customItemClicked*(self: Tree; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("custom_item_clicked")
  let args = [mouseButtonIndex]
  self.emitSignal(signalname, args)

proc itemIconDoubleClicked*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_icon_double_clicked")
  self.emitSignal(signalname)

proc itemCollapsed*(self: Tree; item: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_collapsed")
  let args = [item]
  self.emitSignal(signalname, args)

proc checkPropagatedToItem*(self: Tree; item: Variant; column: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("check_propagated_to_item")
  let args = [item, column]
  self.emitSignal(signalname, args)

proc buttonClicked*(self: Tree; item: Variant; column: Variant; id: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_clicked")
  let args = [item, column, id, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc customPopupEdited*(self: Tree; arrowClicked: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("custom_popup_edited")
  let args = [arrowClicked]
  self.emitSignal(signalname, args)

proc itemActivated*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("item_activated")
  self.emitSignal(signalname)

proc columnTitleClicked*(self: Tree; column: Variant; mouseButtonIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("column_title_clicked")
  let args = [column, mouseButtonIndex]
  self.emitSignal(signalname, args)

proc nothingSelected*(self: Tree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("nothing_selected")
  self.emitSignal(signalname)