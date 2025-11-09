{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(TabContainer, Container)

proc getTabCount*(self: TabContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCurrentTab*(self: TabContainer; tabIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_current_tab", 1286410249)
  methodbind.ptrcall(self, [getPtr tabIdx], void)

proc getCurrentTab*(self: TabContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_current_tab", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPreviousTab*(self: TabContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_previous_tab", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc selectPreviousAvailable*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "select_previous_available", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc selectNextAvailable*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "select_next_available", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getCurrentTabControl*(self: TabContainer): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_current_tab_control", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc getTabBar*(self: TabContainer): TabBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_bar", 1865451809)
  methodbind.ptrcall(self, [], TabBar)

proc getTabControl*(self: TabContainer; tabIdx: int32): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_control", 1065994134)
  methodbind.ptrcall(self, [getPtr tabIdx], Control)

proc setTabAlignment*(self: TabContainer; alignment: TabBar_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_alignment", 2413632353)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getTabAlignment*(self: TabContainer): TabBar_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_alignment", 2178122193)
  methodbind.ptrcall(self, [], TabBar_AlignmentMode)

proc setTabsPosition*(self: TabContainer; tabsPosition: TabContainer_TabPosition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tabs_position", 256673370)
  methodbind.ptrcall(self, [getPtr tabsPosition], void)

proc getTabsPosition*(self: TabContainer): TabContainer_TabPosition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tabs_position", 919937023)
  methodbind.ptrcall(self, [], TabContainer_TabPosition)

proc setClipTabs*(self: TabContainer; clipTabs: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_clip_tabs", 2586408642)
  methodbind.ptrcall(self, [getPtr clipTabs], void)

proc getClipTabs*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_clip_tabs", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabsVisible*(self: TabContainer; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tabs_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc areTabsVisible*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "are_tabs_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllTabsInFront*(self: TabContainer; isFront: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_all_tabs_in_front", 2586408642)
  methodbind.ptrcall(self, [getPtr isFront], void)

proc isAllTabsInFront*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "is_all_tabs_in_front", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabTitle*(self: TabContainer; tabIdx: int32; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_title", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr title], void)

proc getTabTitle*(self: TabContainer; tabIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_title", 844755477)
  methodbind.ptrcall(self, [getPtr tabIdx], String)

proc setTabTooltip*(self: TabContainer; tabIdx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr tooltip], void)

proc getTabTooltip*(self: TabContainer; tabIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr tabIdx], String)

proc setTabIcon*(self: TabContainer; tabIdx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon], void)

proc getTabIcon*(self: TabContainer; tabIdx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr tabIdx], gdref Texture2D)

proc setTabIconMaxWidth*(self: TabContainer; tabIdx: int32; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_icon_max_width", 3937882851)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr width], void)

proc getTabIconMaxWidth*(self: TabContainer; tabIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_icon_max_width", 923996154)
  methodbind.ptrcall(self, [getPtr tabIdx], int32)

proc setTabDisabled*(self: TabContainer; tabIdx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr disabled], void)

proc isTabDisabled*(self: TabContainer; tabIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "is_tab_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr tabIdx], bool)

proc setTabHidden*(self: TabContainer; tabIdx: int32; hidden: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_hidden", 300928843)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr hidden], void)

proc isTabHidden*(self: TabContainer; tabIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "is_tab_hidden", 1116898809)
  methodbind.ptrcall(self, [getPtr tabIdx], bool)

proc setTabMetadata*(self: TabContainer; tabIdx: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr metadata], void)

proc getTabMetadata*(self: TabContainer; tabIdx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr tabIdx], Variant)

proc setTabButtonIcon*(self: TabContainer; tabIdx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_button_icon", 666127730)
  methodbind.ptrcall(self, [getPtr tabIdx, getPtr icon], void)

proc getTabButtonIcon*(self: TabContainer; tabIdx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_button_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr tabIdx], gdref Texture2D)

proc getTabIdxAtPoint*(self: TabContainer; point: Vector2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_idx_at_point", 3820158470)
  methodbind.ptrcall(self, [getPtr point], int32)

proc getTabIdxFromControl*(self: TabContainer; control: Control): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_idx_from_control", 2787397975)
  methodbind.ptrcall(self, [getPtr control], int32)

proc setPopup*(self: TabContainer; popup: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_popup", 1078189570)
  methodbind.ptrcall(self, [getPtr popup], void)

proc getPopup*(self: TabContainer): Popup =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_popup", 111095082)
  methodbind.ptrcall(self, [], Popup)

proc setDragToRearrangeEnabled*(self: TabContainer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_drag_to_rearrange_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDragToRearrangeEnabled*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_drag_to_rearrange_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabsRearrangeGroup*(self: TabContainer; groupId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tabs_rearrange_group", 1286410249)
  methodbind.ptrcall(self, [getPtr groupId], void)

proc getTabsRearrangeGroup*(self: TabContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tabs_rearrange_group", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setUseHiddenTabsForMinSize*(self: TabContainer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_use_hidden_tabs_for_min_size", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUseHiddenTabsForMinSize*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_use_hidden_tabs_for_min_size", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabFocusMode*(self: TabContainer; focusMode: Control_FocusMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_tab_focus_mode", 3232914922)
  methodbind.ptrcall(self, [getPtr focusMode], void)

proc getTabFocusMode*(self: TabContainer): Control_FocusMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_tab_focus_mode", 2132829277)
  methodbind.ptrcall(self, [], Control_FocusMode)

proc setDeselectEnabled*(self: TabContainer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "set_deselect_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getDeselectEnabled*(self: TabContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TabContainer, "get_deselect_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template tabAlignment*(self: TabContainer): untyped = self.getTabAlignment()
template `tabAlignment=`*(self: TabContainer; value) = self.setTabAlignment(value)

template currentTab*(self: TabContainer): untyped = self.getCurrentTab()
template `currentTab=`*(self: TabContainer; value) = self.setCurrentTab(value)

template tabsPosition*(self: TabContainer): untyped = self.getTabsPosition()
template `tabsPosition=`*(self: TabContainer; value) = self.setTabsPosition(value)

template clipTabs*(self: TabContainer): untyped = self.getClipTabs()
template `clipTabs=`*(self: TabContainer; value) = self.setClipTabs(value)

template tabsVisible*(self: TabContainer): untyped = self.areTabsVisible()
template `tabsVisible=`*(self: TabContainer; value) = self.setTabsVisible(value)

template allTabsInFront*(self: TabContainer): untyped = self.isAllTabsInFront()
template `allTabsInFront=`*(self: TabContainer; value) = self.setAllTabsInFront(value)

template dragToRearrangeEnabled*(self: TabContainer): untyped = self.getDragToRearrangeEnabled()
template `dragToRearrangeEnabled=`*(self: TabContainer; value) = self.setDragToRearrangeEnabled(value)

template tabsRearrangeGroup*(self: TabContainer): untyped = self.getTabsRearrangeGroup()
template `tabsRearrangeGroup=`*(self: TabContainer; value) = self.setTabsRearrangeGroup(value)

template useHiddenTabsForMinSize*(self: TabContainer): untyped = self.getUseHiddenTabsForMinSize()
template `useHiddenTabsForMinSize=`*(self: TabContainer; value) = self.setUseHiddenTabsForMinSize(value)

template tabFocusMode*(self: TabContainer): untyped = self.getTabFocusMode()
template `tabFocusMode=`*(self: TabContainer; value) = self.setTabFocusMode(value)

template deselectEnabled*(self: TabContainer): untyped = self.getDeselectEnabled()
template `deselectEnabled=`*(self: TabContainer; value) = self.setDeselectEnabled(value)
