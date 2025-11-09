{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(TabBar, Control)

proc setTabCount*(self: TabBar; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getTabCount*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCurrentTab*(self: TabBar; tabIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_current_tab", 1286410249)
  methodbind.ptrcall(self, [getPtr tabIdx], void)

proc getCurrentTab*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_current_tab", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPreviousTab*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_previous_tab", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc selectPreviousAvailable*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "select_previous_available", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc selectNextAvailable*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "select_next_available", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setTabTitle*(self: TabBar; tabIdx: int32; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_title", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr title], void)

proc getTabTitle*(self: TabBar; tabIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_title", 844755477)
  methodbind.ptrcall(self, [getPtr tabIdx], String)

proc setTabTooltip*(self: TabBar; tabIdx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr tooltip], void)

proc getTabTooltip*(self: TabBar; tabIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr tabIdx], String)

proc setTabTextDirection*(self: TabBar; tabIdx: int32; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_text_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr direction], void)

proc getTabTextDirection*(self: TabBar; tabIdx: int32): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_text_direction", 4235602388)
  methodbind.ptrcall(self, [getPtr tabIdx], Control_TextDirection)

proc setTabLanguage*(self: TabBar; tabIdx: int32; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_language", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr language], void)

proc getTabLanguage*(self: TabBar; tabIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_language", 844755477)
  methodbind.ptrcall(self, [getPtr tabIdx], String)

proc setTabIcon*(self: TabBar; tabIdx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon], void)

proc getTabIcon*(self: TabBar; tabIdx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr tabIdx], gdref Texture2D)

proc setTabIconMaxWidth*(self: TabBar; tabIdx: int32; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_icon_max_width", 3937882851)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr width], void)

proc getTabIconMaxWidth*(self: TabBar; tabIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_icon_max_width", 923996154)
  methodbind.ptrcall(self, [getPtr tabIdx], int32)

proc setTabButtonIcon*(self: TabBar; tabIdx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_button_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon], void)

proc getTabButtonIcon*(self: TabBar; tabIdx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_button_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr tabIdx], gdref Texture2D)

proc setTabDisabled*(self: TabBar; tabIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr disabled], void)

proc isTabDisabled*(self: TabBar; tabIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "is_tab_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr tabIdx], bool)

proc setTabHidden*(self: TabBar; tabIdx: int32; hidden: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_hidden", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr hidden], void)

proc isTabHidden*(self: TabBar; tabIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "is_tab_hidden", 1116898809)
  methodbind.ptrcall(self, [getPtr tabIdx], bool)

proc setTabMetadata*(self: TabBar; tabIdx: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr metadata], void)

proc getTabMetadata*(self: TabBar; tabIdx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr tabIdx], Variant)

proc removeTab*(self: TabBar; tabIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "remove_tab", 1286410249)
  methodbind.ptrcall(self, [getPtr tabIdx], void)

proc addTab*(self: TabBar; title: String = newGdString(); icon: gdref Texture2D = default gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "add_tab", 1465444425)
  methodbind.ptrcall(self, [getPtr title, getPtr icon], void)

proc getTabIdxAtPoint*(self: TabBar; point: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_idx_at_point", 3820158470)
  methodbind.ptrcall(self, [getPtr point], int32)

proc setTabAlignment*(self: TabBar; alignment: TabBar_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_alignment", 2413632353)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getTabAlignment*(self: TabBar): TabBar_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_alignment", 2178122193)
  methodbind.ptrcall(self, [], TabBar_AlignmentMode)

proc setClipTabs*(self: TabBar; clipTabs: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_clip_tabs", 2586408642)
  methodbind.ptrcall(self, [getPtr clipTabs], void)

proc getClipTabs*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_clip_tabs", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTabOffset*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_offset", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getOffsetButtonsVisible*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_offset_buttons_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc ensureTabVisible*(self: TabBar; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "ensure_tab_visible", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc getTabRect*(self: TabBar; tabIdx: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_rect", 3327874267)
  methodbind.ptrcall(self, [getPtr tabIdx], Rect2)

proc moveTab*(self: TabBar; `from`: int32; to: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "move_tab", 3937882851)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], void)

proc setCloseWithMiddleMouse*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_close_with_middle_mouse", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCloseWithMiddleMouse*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_close_with_middle_mouse", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabCloseDisplayPolicy*(self: TabBar; policy: TabBar_CloseButtonDisplayPolicy): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tab_close_display_policy", 2212906737)
  methodbind.ptrcall(self, [getPtr policy], void)

proc getTabCloseDisplayPolicy*(self: TabBar): TabBar_CloseButtonDisplayPolicy =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tab_close_display_policy", 2956568028)
  methodbind.ptrcall(self, [], TabBar_CloseButtonDisplayPolicy)

proc setMaxTabWidth*(self: TabBar; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_max_tab_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc getMaxTabWidth*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_max_tab_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setScrollingEnabled*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_scrolling_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getScrollingEnabled*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_scrolling_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragToRearrangeEnabled*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_drag_to_rearrange_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDragToRearrangeEnabled*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_drag_to_rearrange_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabsRearrangeGroup*(self: TabBar; groupId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_tabs_rearrange_group", 1286410249)
  methodbind.ptrcall(self, [getPtr groupId], void)

proc getTabsRearrangeGroup*(self: TabBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_tabs_rearrange_group", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setScrollToSelected*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_scroll_to_selected", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getScrollToSelected*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_scroll_to_selected", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectWithRmb*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_select_with_rmb", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getSelectWithRmb*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_select_with_rmb", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeselectEnabled*(self: TabBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "set_deselect_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDeselectEnabled*(self: TabBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "get_deselect_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clearTabs*(self: TabBar): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabBar, "clear_tabs", 3218959716)
  methodbind.ptrcall(self, [], void)

template currentTab*(self: TabBar): untyped = self.getCurrentTab()
template `currentTab=`*(self: TabBar; value) = self.setCurrentTab(value)

template tabAlignment*(self: TabBar): untyped = self.getTabAlignment()
template `tabAlignment=`*(self: TabBar; value) = self.setTabAlignment(value)

template clipTabs*(self: TabBar): untyped = self.getClipTabs()
template `clipTabs=`*(self: TabBar; value) = self.setClipTabs(value)

template closeWithMiddleMouse*(self: TabBar): untyped = self.getCloseWithMiddleMouse()
template `closeWithMiddleMouse=`*(self: TabBar; value) = self.setCloseWithMiddleMouse(value)

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
