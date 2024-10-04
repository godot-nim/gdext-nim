{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpopup; export gdpopup

proc activateItemByEvent*(self: PopupMenu; event: gdref InputEvent; forGlobalOnly: bool = false): bool =
  expandMethodBind(className PopupMenu, "activate_item_by_event", 3716412023)
  var `?param` = [getPtr event, getPtr forGlobalOnly]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setPreferNativeMenu*(self: PopupMenu; enabled: bool): void =
  expandMethodBind(className PopupMenu, "set_prefer_native_menu", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPreferNativeMenu*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_prefer_native_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isNativeMenu*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_native_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_item", 3674230041)
  var `?param` = [getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_icon_item", 1086190128)
  var `?param` = [getPtr texture, getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addCheckItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_check_item", 3674230041)
  var `?param` = [getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconCheckItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_icon_check_item", 1086190128)
  var `?param` = [getPtr texture, getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addRadioCheckItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_radio_check_item", 3674230041)
  var `?param` = [getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconRadioCheckItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_icon_radio_check_item", 1086190128)
  var `?param` = [getPtr texture, getPtr label, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addMultistateItem*(self: PopupMenu; label: String; maxStates: int32; defaultState: int32 = 0; id: int32 = -1; accel: Key = keyNone): void =
  expandMethodBind(className PopupMenu, "add_multistate_item", 150780458)
  var `?param` = [getPtr label, getPtr maxStates, getPtr defaultState, getPtr id, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc addShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false; allowEcho: bool = false): void =
  expandMethodBind(className PopupMenu, "add_shortcut", 3451850107)
  var `?param` = [getPtr shortcut, getPtr id, getPtr global, getPtr allowEcho]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false; allowEcho: bool = false): void =
  expandMethodBind(className PopupMenu, "add_icon_shortcut", 2997871092)
  var `?param` = [getPtr texture, getPtr shortcut, getPtr id, getPtr global, getPtr allowEcho]
  methodbind.ptrcall(self, addr `?param`[0])

proc addCheckShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  expandMethodBind(className PopupMenu, "add_check_shortcut", 1642193386)
  var `?param` = [getPtr shortcut, getPtr id, getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconCheckShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  expandMethodBind(className PopupMenu, "add_icon_check_shortcut", 3856247530)
  var `?param` = [getPtr texture, getPtr shortcut, getPtr id, getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc addRadioCheckShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  expandMethodBind(className PopupMenu, "add_radio_check_shortcut", 1642193386)
  var `?param` = [getPtr shortcut, getPtr id, getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc addIconRadioCheckShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  expandMethodBind(className PopupMenu, "add_icon_radio_check_shortcut", 3856247530)
  var `?param` = [getPtr texture, getPtr shortcut, getPtr id, getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc addSubmenuItem*(self: PopupMenu; label: String; submenu: String; id: int32 = -1): void =
  expandMethodBind(className PopupMenu, "add_submenu_item", 2979222410)
  var `?param` = [getPtr label, getPtr submenu, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc addSubmenuNodeItem*(self: PopupMenu; label: String; submenu: PopupMenu; id: int32 = -1): void =
  expandMethodBind(className PopupMenu, "add_submenu_node_item", 1325455216)
  var `?param` = [getPtr label, getPtr submenu, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemText*(self: PopupMenu; index: int32; text: String): void =
  expandMethodBind(className PopupMenu, "set_item_text", 501894301)
  var `?param` = [getPtr index, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemTextDirection*(self: PopupMenu; index: int32; direction: Control_TextDirection): void =
  expandMethodBind(className PopupMenu, "set_item_text_direction", 1707680378)
  var `?param` = [getPtr index, getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemLanguage*(self: PopupMenu; index: int32; language: String): void =
  expandMethodBind(className PopupMenu, "set_item_language", 501894301)
  var `?param` = [getPtr index, getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIcon*(self: PopupMenu; index: int32; icon: gdref Texture2D): void =
  expandMethodBind(className PopupMenu, "set_item_icon", 666127730)
  var `?param` = [getPtr index, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIconMaxWidth*(self: PopupMenu; index: int32; width: int32): void =
  expandMethodBind(className PopupMenu, "set_item_icon_max_width", 3937882851)
  var `?param` = [getPtr index, getPtr width]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIconModulate*(self: PopupMenu; index: int32; modulate: Color): void =
  expandMethodBind(className PopupMenu, "set_item_icon_modulate", 2878471219)
  var `?param` = [getPtr index, getPtr modulate]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemChecked*(self: PopupMenu; index: int32; checked: bool): void =
  expandMethodBind(className PopupMenu, "set_item_checked", 300928843)
  var `?param` = [getPtr index, getPtr checked]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemId*(self: PopupMenu; index: int32; id: int32): void =
  expandMethodBind(className PopupMenu, "set_item_id", 3937882851)
  var `?param` = [getPtr index, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemAccelerator*(self: PopupMenu; index: int32; accel: Key): void =
  expandMethodBind(className PopupMenu, "set_item_accelerator", 2992817551)
  var `?param` = [getPtr index, getPtr accel]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMetadata*(self: PopupMenu; index: int32; metadata: Variant): void =
  expandMethodBind(className PopupMenu, "set_item_metadata", 2152698145)
  var `?param` = [getPtr index, getPtr metadata]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemDisabled*(self: PopupMenu; index: int32; disabled: bool): void =
  expandMethodBind(className PopupMenu, "set_item_disabled", 300928843)
  var `?param` = [getPtr index, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemSubmenu*(self: PopupMenu; index: int32; submenu: String): void =
  expandMethodBind(className PopupMenu, "set_item_submenu", 501894301)
  var `?param` = [getPtr index, getPtr submenu]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemSubmenuNode*(self: PopupMenu; index: int32; submenu: PopupMenu): void =
  expandMethodBind(className PopupMenu, "set_item_submenu_node", 1068370740)
  var `?param` = [getPtr index, getPtr submenu]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemAsSeparator*(self: PopupMenu; index: int32; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_item_as_separator", 300928843)
  var `?param` = [getPtr index, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemAsCheckable*(self: PopupMenu; index: int32; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_item_as_checkable", 300928843)
  var `?param` = [getPtr index, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemAsRadioCheckable*(self: PopupMenu; index: int32; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_item_as_radio_checkable", 300928843)
  var `?param` = [getPtr index, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemTooltip*(self: PopupMenu; index: int32; tooltip: String): void =
  expandMethodBind(className PopupMenu, "set_item_tooltip", 501894301)
  var `?param` = [getPtr index, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemShortcut*(self: PopupMenu; index: int32; shortcut: gdref Shortcut; global: bool = false): void =
  expandMethodBind(className PopupMenu, "set_item_shortcut", 825127832)
  var `?param` = [getPtr index, getPtr shortcut, getPtr global]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemIndent*(self: PopupMenu; index: int32; indent: int32): void =
  expandMethodBind(className PopupMenu, "set_item_indent", 3937882851)
  var `?param` = [getPtr index, getPtr indent]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMultistate*(self: PopupMenu; index: int32; state: int32): void =
  expandMethodBind(className PopupMenu, "set_item_multistate", 3937882851)
  var `?param` = [getPtr index, getPtr state]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemMultistateMax*(self: PopupMenu; index: int32; maxStates: int32): void =
  expandMethodBind(className PopupMenu, "set_item_multistate_max", 3937882851)
  var `?param` = [getPtr index, getPtr maxStates]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemShortcutDisabled*(self: PopupMenu; index: int32; disabled: bool): void =
  expandMethodBind(className PopupMenu, "set_item_shortcut_disabled", 300928843)
  var `?param` = [getPtr index, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc toggleItemChecked*(self: PopupMenu; index: int32): void =
  expandMethodBind(className PopupMenu, "toggle_item_checked", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc toggleItemMultistate*(self: PopupMenu; index: int32): void =
  expandMethodBind(className PopupMenu, "toggle_item_multistate", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemText*(self: PopupMenu; index: int32): String =
  expandMethodBind(className PopupMenu, "get_item_text", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemTextDirection*(self: PopupMenu; index: int32): Control_TextDirection =
  expandMethodBind(className PopupMenu, "get_item_text_direction", 4235602388)
  var `?param` = [getPtr index]
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc getItemLanguage*(self: PopupMenu; index: int32): String =
  expandMethodBind(className PopupMenu, "get_item_language", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemIcon*(self: PopupMenu; index: int32): gdref Texture2D =
  expandMethodBind(className PopupMenu, "get_item_icon", 3536238170)
  var `?param` = [getPtr index]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getItemIconMaxWidth*(self: PopupMenu; index: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_icon_max_width", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemIconModulate*(self: PopupMenu; index: int32): Color =
  expandMethodBind(className PopupMenu, "get_item_icon_modulate", 3457211756)
  var `?param` = [getPtr index]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc isItemChecked*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_checked", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getItemId*(self: PopupMenu; index: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_id", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemIndex*(self: PopupMenu; id: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_index", 923996154)
  var `?param` = [getPtr id]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemAccelerator*(self: PopupMenu; index: int32): Key =
  expandMethodBind(className PopupMenu, "get_item_accelerator", 253789942)
  var `?param` = [getPtr index]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc getItemMetadata*(self: PopupMenu; index: int32): Variant =
  expandMethodBind(className PopupMenu, "get_item_metadata", 4227898402)
  var `?param` = [getPtr index]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc isItemDisabled*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_disabled", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getItemSubmenu*(self: PopupMenu; index: int32): String =
  expandMethodBind(className PopupMenu, "get_item_submenu", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemSubmenuNode*(self: PopupMenu; index: int32): PopupMenu =
  expandMethodBind(className PopupMenu, "get_item_submenu_node", 2100501353)
  var `?param` = [getPtr index]
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PopupMenu)

proc isItemSeparator*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_separator", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemCheckable*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_checkable", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemRadioCheckable*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_radio_checkable", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isItemShortcutDisabled*(self: PopupMenu; index: int32): bool =
  expandMethodBind(className PopupMenu, "is_item_shortcut_disabled", 1116898809)
  var `?param` = [getPtr index]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getItemTooltip*(self: PopupMenu; index: int32): String =
  expandMethodBind(className PopupMenu, "get_item_tooltip", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getItemShortcut*(self: PopupMenu; index: int32): gdref Shortcut =
  expandMethodBind(className PopupMenu, "get_item_shortcut", 1449483325)
  var `?param` = [getPtr index]
  var ret: encoded gdref Shortcut
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Shortcut)

proc getItemIndent*(self: PopupMenu; index: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_indent", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemMultistateMax*(self: PopupMenu; index: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_multistate_max", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getItemMultistate*(self: PopupMenu; index: int32): int32 =
  expandMethodBind(className PopupMenu, "get_item_multistate", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setFocusedItem*(self: PopupMenu; index: int32): void =
  expandMethodBind(className PopupMenu, "set_focused_item", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusedItem*(self: PopupMenu): int32 =
  expandMethodBind(className PopupMenu, "get_focused_item", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setItemCount*(self: PopupMenu; count: int32): void =
  expandMethodBind(className PopupMenu, "set_item_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCount*(self: PopupMenu): int32 =
  expandMethodBind(className PopupMenu, "get_item_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc scrollToItem*(self: PopupMenu; index: int32): void =
  expandMethodBind(className PopupMenu, "scroll_to_item", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeItem*(self: PopupMenu; index: int32): void =
  expandMethodBind(className PopupMenu, "remove_item", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc addSeparator*(self: PopupMenu; label: String = gdstring""; id: int32 = -1): void =
  expandMethodBind(className PopupMenu, "add_separator", 2266703459)
  var `?param` = [getPtr label, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: PopupMenu; freeSubmenus: bool = false): void =
  expandMethodBind(className PopupMenu, "clear", 107499316)
  var `?param` = [getPtr freeSubmenus]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHideOnItemSelection*(self: PopupMenu; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_hide_on_item_selection", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHideOnItemSelection*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_hide_on_item_selection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHideOnCheckableItemSelection*(self: PopupMenu; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_hide_on_checkable_item_selection", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHideOnCheckableItemSelection*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_hide_on_checkable_item_selection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHideOnStateItemSelection*(self: PopupMenu; enable: bool): void =
  expandMethodBind(className PopupMenu, "set_hide_on_state_item_selection", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHideOnStateItemSelection*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_hide_on_state_item_selection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSubmenuPopupDelay*(self: PopupMenu; seconds: Float): void =
  expandMethodBind(className PopupMenu, "set_submenu_popup_delay", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSubmenuPopupDelay*(self: PopupMenu): Float =
  expandMethodBind(className PopupMenu, "get_submenu_popup_delay", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAllowSearch*(self: PopupMenu; allow: bool): void =
  expandMethodBind(className PopupMenu, "set_allow_search", 2586408642)
  var `?param` = [getPtr allow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAllowSearch*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "get_allow_search", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isSystemMenu*(self: PopupMenu): bool =
  expandMethodBind(className PopupMenu, "is_system_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSystemMenu*(self: PopupMenu; systemMenuId: NativeMenu_SystemMenus): void =
  expandMethodBind(className PopupMenu, "set_system_menu", 600639674)
  var `?param` = [getPtr systemMenuId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSystemMenu*(self: PopupMenu): NativeMenu_SystemMenus =
  expandMethodBind(className PopupMenu, "get_system_menu", 1222557358)
  var ret: encoded NativeMenu_SystemMenus
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NativeMenu_SystemMenus)

template hideOnItemSelection*(self: PopupMenu): untyped = self.isHideOnItemSelection()
template `hideOnItemSelection=`*(self: PopupMenu; value) = self.setHideOnItemSelection(value)

template hideOnCheckableItemSelection*(self: PopupMenu): untyped = self.isHideOnCheckableItemSelection()
template `hideOnCheckableItemSelection=`*(self: PopupMenu; value) = self.setHideOnCheckableItemSelection(value)

template hideOnStateItemSelection*(self: PopupMenu): untyped = self.isHideOnStateItemSelection()
template `hideOnStateItemSelection=`*(self: PopupMenu; value) = self.setHideOnStateItemSelection(value)

template submenuPopupDelay*(self: PopupMenu): untyped = self.getSubmenuPopupDelay()
template `submenuPopupDelay=`*(self: PopupMenu; value) = self.setSubmenuPopupDelay(value)

template allowSearch*(self: PopupMenu): untyped = self.getAllowSearch()
template `allowSearch=`*(self: PopupMenu; value) = self.setAllowSearch(value)

template systemMenuId*(self: PopupMenu): untyped = self.getSystemMenu()
template `systemMenuId=`*(self: PopupMenu; value) = self.setSystemMenu(value)

template preferNativeMenu*(self: PopupMenu): untyped = self.isPreferNativeMenu()
template `preferNativeMenu=`*(self: PopupMenu; value) = self.setPreferNativeMenu(value)

template itemCount*(self: PopupMenu): untyped = self.getItemCount()
template `itemCount=`*(self: PopupMenu; value) = self.setItemCount(value)

const PopupMenu_vmap =
  Popup.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PopupMenu]): Table[string, string] = PopupMenu_vmap

proc idPressed*(self: PopupMenu; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("id_pressed")
  let args = [id]
  self.emitSignal(signalname, args)

proc idFocused*(self: PopupMenu; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("id_focused")
  let args = [id]
  self.emitSignal(signalname, args)

proc indexPressed*(self: PopupMenu; index: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("index_pressed")
  let args = [index]
  self.emitSignal(signalname, args)

proc menuChanged*(self: PopupMenu): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("menu_changed")
  self.emitSignal(signalname)