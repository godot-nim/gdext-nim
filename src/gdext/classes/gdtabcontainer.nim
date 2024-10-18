{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc getTabCount*(self: TabContainer): int32 =
  expandMethodBind(className TabContainer, "get_tab_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCurrentTab*(self: TabContainer; tabIdx: int32): void =
  expandMethodBind(className TabContainer, "set_current_tab", 1286410249)
  var `?param` = [getPtr tabIdx]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentTab*(self: TabContainer): int32 =
  expandMethodBind(className TabContainer, "get_current_tab", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPreviousTab*(self: TabContainer): int32 =
  expandMethodBind(className TabContainer, "get_previous_tab", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc selectPreviousAvailable*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "select_previous_available", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc selectNextAvailable*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "select_next_available", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCurrentTabControl*(self: TabContainer): Control =
  expandMethodBind(className TabContainer, "get_current_tab_control", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc getTabBar*(self: TabContainer): TabBar =
  expandMethodBind(className TabContainer, "get_tab_bar", 1865451809)
  var ret: encoded TabBar
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TabBar)

proc getTabControl*(self: TabContainer; tabIdx: int32): Control =
  expandMethodBind(className TabContainer, "get_tab_control", 1065994134)
  var `?param` = [getPtr tabIdx]
  var ret: encoded Control
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control)

proc setTabAlignment*(self: TabContainer; alignment: TabBar_AlignmentMode): void =
  expandMethodBind(className TabContainer, "set_tab_alignment", 2413632353)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabAlignment*(self: TabContainer): TabBar_AlignmentMode =
  expandMethodBind(className TabContainer, "get_tab_alignment", 2178122193)
  var ret: encoded TabBar_AlignmentMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TabBar_AlignmentMode)

proc setTabsPosition*(self: TabContainer; tabsPosition: TabContainer_TabPosition): void =
  expandMethodBind(className TabContainer, "set_tabs_position", 256673370)
  var `?param` = [getPtr tabsPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabsPosition*(self: TabContainer): TabContainer_TabPosition =
  expandMethodBind(className TabContainer, "get_tabs_position", 919937023)
  var ret: encoded TabContainer_TabPosition
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TabContainer_TabPosition)

proc setClipTabs*(self: TabContainer; clipTabs: bool): void =
  expandMethodBind(className TabContainer, "set_clip_tabs", 2586408642)
  var `?param` = [getPtr clipTabs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClipTabs*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "get_clip_tabs", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTabsVisible*(self: TabContainer; visible: bool): void =
  expandMethodBind(className TabContainer, "set_tabs_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc areTabsVisible*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "are_tabs_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllTabsInFront*(self: TabContainer; isFront: bool): void =
  expandMethodBind(className TabContainer, "set_all_tabs_in_front", 2586408642)
  var `?param` = [getPtr isFront]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAllTabsInFront*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "is_all_tabs_in_front", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTabTitle*(self: TabContainer; tabIdx: int32; title: String): void =
  expandMethodBind(className TabContainer, "set_tab_title", 501894301)
  var `?param` = [getPtr tabIdx, getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabTitle*(self: TabContainer; tabIdx: int32): String =
  expandMethodBind(className TabContainer, "get_tab_title", 844755477)
  var `?param` = [getPtr tabIdx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setTabTooltip*(self: TabContainer; tabIdx: int32; tooltip: String): void =
  expandMethodBind(className TabContainer, "set_tab_tooltip", 501894301)
  var `?param` = [getPtr tabIdx, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabTooltip*(self: TabContainer; tabIdx: int32): String =
  expandMethodBind(className TabContainer, "get_tab_tooltip", 844755477)
  var `?param` = [getPtr tabIdx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setTabIcon*(self: TabContainer; tabIdx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className TabContainer, "set_tab_icon", 666127730)
  var `?param` = [getPtr tabIdx, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabIcon*(self: TabContainer; tabIdx: int32): gdref Texture2D =
  expandMethodBind(className TabContainer, "get_tab_icon", 3536238170)
  var `?param` = [getPtr tabIdx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTabIconMaxWidth*(self: TabContainer; tabIdx: int32; width: int32): void =
  expandMethodBind(className TabContainer, "set_tab_icon_max_width", 3937882851)
  var `?param` = [getPtr tabIdx, getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabIconMaxWidth*(self: TabContainer; tabIdx: int32): int32 =
  expandMethodBind(className TabContainer, "get_tab_icon_max_width", 923996154)
  var `?param` = [getPtr tabIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setTabDisabled*(self: TabContainer; tabIdx: int32; disabled: bool): void =
  expandMethodBind(className TabContainer, "set_tab_disabled", 300928843)
  var `?param` = [getPtr tabIdx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTabDisabled*(self: TabContainer; tabIdx: int32): bool =
  expandMethodBind(className TabContainer, "is_tab_disabled", 1116898809)
  var `?param` = [getPtr tabIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setTabHidden*(self: TabContainer; tabIdx: int32; hidden: bool): void =
  expandMethodBind(className TabContainer, "set_tab_hidden", 300928843)
  var `?param` = [getPtr tabIdx, getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTabHidden*(self: TabContainer; tabIdx: int32): bool =
  expandMethodBind(className TabContainer, "is_tab_hidden", 1116898809)
  var `?param` = [getPtr tabIdx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setTabMetadata*(self: TabContainer; tabIdx: int32; metadata: Variant): void =
  expandMethodBind(className TabContainer, "set_tab_metadata", 2152698145)
  var `?param` = [getPtr tabIdx, getPtr metadata]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabMetadata*(self: TabContainer; tabIdx: int32): Variant =
  expandMethodBind(className TabContainer, "get_tab_metadata", 4227898402)
  var `?param` = [getPtr tabIdx]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setTabButtonIcon*(self: TabContainer; tabIdx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className TabContainer, "set_tab_button_icon", 666127730)
  var `?param` = [getPtr tabIdx, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabButtonIcon*(self: TabContainer; tabIdx: int32): gdref Texture2D =
  expandMethodBind(className TabContainer, "get_tab_button_icon", 3536238170)
  var `?param` = [getPtr tabIdx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getTabIdxAtPoint*(self: TabContainer; point: Vector2): int32 =
  expandMethodBind(className TabContainer, "get_tab_idx_at_point", 3820158470)
  var `?param` = [getPtr point]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getTabIdxFromControl*(self: TabContainer; control: Control): int32 =
  expandMethodBind(className TabContainer, "get_tab_idx_from_control", 2787397975)
  var `?param` = [getPtr control]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setPopup*(self: TabContainer; popup: Node): void =
  expandMethodBind(className TabContainer, "set_popup", 1078189570)
  var `?param` = [getPtr popup]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPopup*(self: TabContainer): Popup =
  expandMethodBind(className TabContainer, "get_popup", 111095082)
  var ret: encoded Popup
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Popup)

proc setDragToRearrangeEnabled*(self: TabContainer; enabled: bool): void =
  expandMethodBind(className TabContainer, "set_drag_to_rearrange_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDragToRearrangeEnabled*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "get_drag_to_rearrange_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTabsRearrangeGroup*(self: TabContainer; groupId: int32): void =
  expandMethodBind(className TabContainer, "set_tabs_rearrange_group", 1286410249)
  var `?param` = [getPtr groupId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabsRearrangeGroup*(self: TabContainer): int32 =
  expandMethodBind(className TabContainer, "get_tabs_rearrange_group", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setUseHiddenTabsForMinSize*(self: TabContainer; enabled: bool): void =
  expandMethodBind(className TabContainer, "set_use_hidden_tabs_for_min_size", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseHiddenTabsForMinSize*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "get_use_hidden_tabs_for_min_size", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTabFocusMode*(self: TabContainer; focusMode: Control_FocusMode): void =
  expandMethodBind(className TabContainer, "set_tab_focus_mode", 3232914922)
  var `?param` = [getPtr focusMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTabFocusMode*(self: TabContainer): Control_FocusMode =
  expandMethodBind(className TabContainer, "get_tab_focus_mode", 2132829277)
  var ret: encoded Control_FocusMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_FocusMode)

proc setDeselectEnabled*(self: TabContainer; enabled: bool): void =
  expandMethodBind(className TabContainer, "set_deselect_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDeselectEnabled*(self: TabContainer): bool =
  expandMethodBind(className TabContainer, "get_deselect_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const TabContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TabContainer]): Table[string, string] = TabContainer_vmap

proc activeTabRearranged*(self: TabContainer; idxTo: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("active_tab_rearranged")
  let args = [idxTo]
  self.emitSignal(signalname, args)

proc tabChanged*(self: TabContainer; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_changed")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabClicked*(self: TabContainer; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_clicked")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabHovered*(self: TabContainer; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_hovered")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabSelected*(self: TabContainer; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_selected")
  let args = [tab]
  self.emitSignal(signalname, args)

proc tabButtonPressed*(self: TabContainer; tab: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tab_button_pressed")
  let args = [tab]
  self.emitSignal(signalname, args)

proc prePopupPressed*(self: TabContainer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pre_popup_pressed")
  self.emitSignal(signalname)