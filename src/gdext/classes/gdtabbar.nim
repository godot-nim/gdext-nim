{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setTabCount*(self: TabBar; count: int32): void =
  expandMethodBind(className TabBar, "set_tab_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getTabCount*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_tab_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCurrentTab*(self: TabBar; tabIdx: int32): void =
  expandMethodBind(className TabBar, "set_current_tab", 1286410249)
  methodbind.ptrcall(self, [getPtr tabIdx])

proc getCurrentTab*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_current_tab", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPreviousTab*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_previous_tab", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc selectPreviousAvailable*(self: TabBar): bool =
  expandMethodBind(className TabBar, "select_previous_available", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc selectNextAvailable*(self: TabBar): bool =
  expandMethodBind(className TabBar, "select_next_available", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTabTitle*(self: TabBar; tabIdx: int32; title: String): void =
  expandMethodBind(className TabBar, "set_tab_title", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr title])

proc getTabTitle*(self: TabBar; tabIdx: int32): String =
  expandMethodBind(className TabBar, "get_tab_title", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(String)

proc setTabTooltip*(self: TabBar; tabIdx: int32; tooltip: String): void =
  expandMethodBind(className TabBar, "set_tab_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr tooltip])

proc getTabTooltip*(self: TabBar; tabIdx: int32): String =
  expandMethodBind(className TabBar, "get_tab_tooltip", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(String)

proc setTabTextDirection*(self: TabBar; tabIdx: int32; direction: Control_TextDirection): void =
  expandMethodBind(className TabBar, "set_tab_text_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr direction])

proc getTabTextDirection*(self: TabBar; tabIdx: int32): Control_TextDirection =
  expandMethodBind(className TabBar, "get_tab_text_direction", 4235602388)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setTabLanguage*(self: TabBar; tabIdx: int32; language: String): void =
  expandMethodBind(className TabBar, "set_tab_language", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr language])

proc getTabLanguage*(self: TabBar; tabIdx: int32): String =
  expandMethodBind(className TabBar, "get_tab_language", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(String)

proc setTabIcon*(self: TabBar; tabIdx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className TabBar, "set_tab_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon])

proc getTabIcon*(self: TabBar; tabIdx: int32): gdref Texture2D =
  expandMethodBind(className TabBar, "get_tab_icon", 3536238170)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTabIconMaxWidth*(self: TabBar; tabIdx: int32; width: int32): void =
  expandMethodBind(className TabBar, "set_tab_icon_max_width", 3937882851)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr width])

proc getTabIconMaxWidth*(self: TabBar; tabIdx: int32): int32 =
  expandMethodBind(className TabBar, "get_tab_icon_max_width", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(int32)

proc setTabButtonIcon*(self: TabBar; tabIdx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className TabBar, "set_tab_button_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon])

proc getTabButtonIcon*(self: TabBar; tabIdx: int32): gdref Texture2D =
  expandMethodBind(className TabBar, "get_tab_button_icon", 3536238170)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTabDisabled*(self: TabBar; tabIdx: int32; disabled: bool): void =
  expandMethodBind(className TabBar, "set_tab_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr disabled])

proc isTabDisabled*(self: TabBar; tabIdx: int32): bool =
  expandMethodBind(className TabBar, "is_tab_disabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(bool)

proc setTabHidden*(self: TabBar; tabIdx: int32; hidden: bool): void =
  expandMethodBind(className TabBar, "set_tab_hidden", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr hidden])

proc isTabHidden*(self: TabBar; tabIdx: int32): bool =
  expandMethodBind(className TabBar, "is_tab_hidden", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(bool)

proc setTabMetadata*(self: TabBar; tabIdx: int32; metadata: Variant): void =
  expandMethodBind(className TabBar, "set_tab_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr metadata])

proc getTabMetadata*(self: TabBar; tabIdx: int32): Variant =
  expandMethodBind(className TabBar, "get_tab_metadata", 4227898402)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(Variant)

proc removeTab*(self: TabBar; tabIdx: int32): void =
  expandMethodBind(className TabBar, "remove_tab", 1286410249)
  methodbind.ptrcall(self, [getPtr tabIdx])

proc addTab*(self: TabBar; title: String = gdstring""; icon: gdref Texture2D = default gdref Texture2D): void =
  expandMethodBind(className TabBar, "add_tab", 1465444425)
  methodbind.ptrcall(self, [getPtr title, getPtr icon])

proc getTabIdxAtPoint*(self: TabBar; point: Vector2): int32 =
  expandMethodBind(className TabBar, "get_tab_idx_at_point", 3820158470)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(int32)

proc setTabAlignment*(self: TabBar; alignment: TabBar_AlignmentMode): void =
  expandMethodBind(className TabBar, "set_tab_alignment", 2413632353)
  methodbind.ptrcall(self, [getPtr alignment])

proc getTabAlignment*(self: TabBar): TabBar_AlignmentMode =
  expandMethodBind(className TabBar, "get_tab_alignment", 2178122193)
  var ret: encoded TabBar_AlignmentMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TabBar_AlignmentMode)

proc setClipTabs*(self: TabBar; clipTabs: bool): void =
  expandMethodBind(className TabBar, "set_clip_tabs", 2586408642)
  methodbind.ptrcall(self, [getPtr clipTabs])

proc getClipTabs*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_clip_tabs", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getTabOffset*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_tab_offset", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getOffsetButtonsVisible*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_offset_buttons_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc ensureTabVisible*(self: TabBar; idx: int32): void =
  expandMethodBind(className TabBar, "ensure_tab_visible", 1286410249)
  methodbind.ptrcall(self, [getPtr idx])

proc getTabRect*(self: TabBar; tabIdx: int32): Rect2 =
  expandMethodBind(className TabBar, "get_tab_rect", 3327874267)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr tabIdx], addr ret)
  (addr ret).decode_result(Rect2)

proc moveTab*(self: TabBar; `from`: int32; to: int32): void =
  expandMethodBind(className TabBar, "move_tab", 3937882851)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to])

proc setTabCloseDisplayPolicy*(self: TabBar; policy: TabBar_CloseButtonDisplayPolicy): void =
  expandMethodBind(className TabBar, "set_tab_close_display_policy", 2212906737)
  methodbind.ptrcall(self, [getPtr policy])

proc getTabCloseDisplayPolicy*(self: TabBar): TabBar_CloseButtonDisplayPolicy =
  expandMethodBind(className TabBar, "get_tab_close_display_policy", 2956568028)
  var ret: encoded TabBar_CloseButtonDisplayPolicy
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TabBar_CloseButtonDisplayPolicy)

proc setMaxTabWidth*(self: TabBar; width: int32): void =
  expandMethodBind(className TabBar, "set_max_tab_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width])

proc getMaxTabWidth*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_max_tab_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setScrollingEnabled*(self: TabBar; enabled: bool): void =
  expandMethodBind(className TabBar, "set_scrolling_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getScrollingEnabled*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_scrolling_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragToRearrangeEnabled*(self: TabBar; enabled: bool): void =
  expandMethodBind(className TabBar, "set_drag_to_rearrange_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getDragToRearrangeEnabled*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_drag_to_rearrange_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTabsRearrangeGroup*(self: TabBar; groupId: int32): void =
  expandMethodBind(className TabBar, "set_tabs_rearrange_group", 1286410249)
  methodbind.ptrcall(self, [getPtr groupId])

proc getTabsRearrangeGroup*(self: TabBar): int32 =
  expandMethodBind(className TabBar, "get_tabs_rearrange_group", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setScrollToSelected*(self: TabBar; enabled: bool): void =
  expandMethodBind(className TabBar, "set_scroll_to_selected", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getScrollToSelected*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_scroll_to_selected", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSelectWithRmb*(self: TabBar; enabled: bool): void =
  expandMethodBind(className TabBar, "set_select_with_rmb", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getSelectWithRmb*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_select_with_rmb", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDeselectEnabled*(self: TabBar; enabled: bool): void =
  expandMethodBind(className TabBar, "set_deselect_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getDeselectEnabled*(self: TabBar): bool =
  expandMethodBind(className TabBar, "get_deselect_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc clearTabs*(self: TabBar): void =
  expandMethodBind(className TabBar, "clear_tabs", 3218959716)
  methodbind.ptrcall(self, [])

template currentTab*(self: TabBar): untyped = self.getCurrentTab()
template `currentTab=`*(self: TabBar; value) = self.setCurrentTab(value)

template tabAlignment*(self: TabBar): untyped = self.getTabAlignment()
template `tabAlignment=`*(self: TabBar; value) = self.setTabAlignment(value)

template clipTabs*(self: TabBar): untyped = self.getClipTabs()
template `clipTabs=`*(self: TabBar; value) = self.setClipTabs(value)

template tabCloseDisplayPolicy*(self: TabBar): untyped = self.getTabCloseDisplayPolicy()
template `tabCloseDisplayPolicy=`*(self: TabBar; value) = self.setTabCloseDisplayPolicy(value)

template maxTabWidth*(self: TabBar): untyped = self.getMaxTabWidth()
template `maxTabWidth=`*(self: TabBar; value) = self.setMaxTabWidth(value)

template scrollingEnabled*(self: TabBar): untyped = self.getScrollingEnabled()
template `scrollingEnabled=`*(self: TabBar; value) = self.setScrollingEnabled(value)

template dragToRearrangeEnabled*(self: TabBar): untyped = self.getDragToRearrangeEnabled()
template `dragToRearrangeEnabled=`*(self: TabBar; value) = self.setDragToRearrangeEnabled(value)

template tabsRearrangeGroup*(self: TabBar): untyped = self.getTabsRearrangeGroup()
template `tabsRearrangeGroup=`*(self: TabBar; value) = self.setTabsRearrangeGroup(value)

template scrollToSelected*(self: TabBar): untyped = self.getScrollToSelected()
template `scrollToSelected=`*(self: TabBar; value) = self.setScrollToSelected(value)

template selectWithRmb*(self: TabBar): untyped = self.getSelectWithRmb()
template `selectWithRmb=`*(self: TabBar; value) = self.setSelectWithRmb(value)

template deselectEnabled*(self: TabBar): untyped = self.getDeselectEnabled()
template `deselectEnabled=`*(self: TabBar; value) = self.setDeselectEnabled(value)

template tabCount*(self: TabBar): untyped = self.getTabCount()
template `tabCount=`*(self: TabBar; value) = self.setTabCount(value)

const TabBar_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TabBar]): Table[string, string] = TabBar_vmap

proc tabSelected*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_selected")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabChanged*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_changed")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabClicked*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_clicked")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabRmbClicked*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_rmb_clicked")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabClosePressed*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_close_pressed")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabButtonPressed*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_button_pressed")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabHovered*(self: TabBar; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_hovered")
  let args = [tab]
  self.emitSignal(signalname, args)

proc activeTabRearranged*(self: TabBar; idxTo: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("active_tab_rearranged")
  let args = [idxTo]
  self.emitSignal(signalname, args)