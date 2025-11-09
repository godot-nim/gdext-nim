{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpopup; export gdpopup

expandOnClassImported(PopupMenu, Popup)

proc activateItemByEvent*(self: PopupMenu; event: gdref InputEvent; forGlobalOnly: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "activate_item_by_event", 3716412023)
  methodbind.ptrcall(self, [getPtr event, getPtr forGlobalOnly], bool)

proc setPreferNativeMenu*(self: PopupMenu; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_prefer_native_menu", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPreferNativeMenu*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_prefer_native_menu", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isNativeMenu*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_native_menu", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_item", 3674230041)
  methodbind.ptrcall(self, [getPtr label, getPtr id, getPtr accel], void)

proc addIconItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_item", 1086190128)
  methodbind.ptrcall(self, [getPtr texture, getPtr label, getPtr id, getPtr accel], void)

proc addCheckItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_check_item", 3674230041)
  methodbind.ptrcall(self, [getPtr label, getPtr id, getPtr accel], void)

proc addIconCheckItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_check_item", 1086190128)
  methodbind.ptrcall(self, [getPtr texture, getPtr label, getPtr id, getPtr accel], void)

proc addRadioCheckItem*(self: PopupMenu; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_radio_check_item", 3674230041)
  methodbind.ptrcall(self, [getPtr label, getPtr id, getPtr accel], void)

proc addIconRadioCheckItem*(self: PopupMenu; texture: gdref Texture2D; label: String; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_radio_check_item", 1086190128)
  methodbind.ptrcall(self, [getPtr texture, getPtr label, getPtr id, getPtr accel], void)

proc addMultistateItem*(self: PopupMenu; label: String; maxStates: int32; defaultState: int32 = 0; id: int32 = -1; accel: Key = keyNone): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_multistate_item", 150780458)
  methodbind.ptrcall(self, [getPtr label, getPtr maxStates, getPtr defaultState, getPtr id, getPtr accel], void)

proc addShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false; allowEcho: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_shortcut", 3451850107)
  methodbind.ptrcall(self, [getPtr shortcut, getPtr id, getPtr global, getPtr allowEcho], void)

proc addIconShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false; allowEcho: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_shortcut", 2997871092)
  methodbind.ptrcall(self, [getPtr texture, getPtr shortcut, getPtr id, getPtr global, getPtr allowEcho], void)

proc addCheckShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_check_shortcut", 1642193386)
  methodbind.ptrcall(self, [getPtr shortcut, getPtr id, getPtr global], void)

proc addIconCheckShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_check_shortcut", 3856247530)
  methodbind.ptrcall(self, [getPtr texture, getPtr shortcut, getPtr id, getPtr global], void)

proc addRadioCheckShortcut*(self: PopupMenu; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_radio_check_shortcut", 1642193386)
  methodbind.ptrcall(self, [getPtr shortcut, getPtr id, getPtr global], void)

proc addIconRadioCheckShortcut*(self: PopupMenu; texture: gdref Texture2D; shortcut: gdref Shortcut; id: int32 = -1; global: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_icon_radio_check_shortcut", 3856247530)
  methodbind.ptrcall(self, [getPtr texture, getPtr shortcut, getPtr id, getPtr global], void)

proc addSubmenuItem*(self: PopupMenu; label: String; submenu: String; id: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_submenu_item", 2979222410)
  methodbind.ptrcall(self, [getPtr label, getPtr submenu, getPtr id], void)

proc addSubmenuNodeItem*(self: PopupMenu; label: String; submenu: PopupMenu; id: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_submenu_node_item", 1325455216)
  methodbind.ptrcall(self, [getPtr label, getPtr submenu, getPtr id], void)

proc setItemText*(self: PopupMenu; index: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_text", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr text], void)

proc setItemTextDirection*(self: PopupMenu; index: int32; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_text_direction", 1707680378)
  methodbind.ptrcall(self, [getPtr index, getPtr direction], void)

proc setItemLanguage*(self: PopupMenu; index: int32; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_language", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr language], void)

proc setItemAutoTranslateMode*(self: PopupMenu; index: int32; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_auto_translate_mode", 287402019)
  methodbind.ptrcall(self, [getPtr index, getPtr mode], void)

proc setItemIcon*(self: PopupMenu; index: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_icon", 666127730)
  methodbind.ptrcall(self, [getPtr index, getPtr icon], void)

proc setItemIconMaxWidth*(self: PopupMenu; index: int32; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_icon_max_width", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr width], void)

proc setItemIconModulate*(self: PopupMenu; index: int32; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_icon_modulate", 2878471219)
  methodbind.ptrcall(self, [getPtr index, getPtr modulate], void)

proc setItemChecked*(self: PopupMenu; index: int32; checked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_checked", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr checked], void)

proc setItemId*(self: PopupMenu; index: int32; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_id", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr id], void)

proc setItemAccelerator*(self: PopupMenu; index: int32; accel: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_accelerator", 2992817551)
  methodbind.ptrcall(self, [getPtr index, getPtr accel], void)

proc setItemMetadata*(self: PopupMenu; index: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_metadata", 2152698145)
  methodbind.ptrcall(self, [getPtr index, getPtr metadata], void)

proc setItemDisabled*(self: PopupMenu; index: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr disabled], void)

proc setItemSubmenu*(self: PopupMenu; index: int32; submenu: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_submenu", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr submenu], void)

proc setItemSubmenuNode*(self: PopupMenu; index: int32; submenu: PopupMenu): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_submenu_node", 1068370740)
  methodbind.ptrcall(self, [getPtr index, getPtr submenu], void)

proc setItemAsSeparator*(self: PopupMenu; index: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_as_separator", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enable], void)

proc setItemAsCheckable*(self: PopupMenu; index: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_as_checkable", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enable], void)

proc setItemAsRadioCheckable*(self: PopupMenu; index: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_as_radio_checkable", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr enable], void)

proc setItemTooltip*(self: PopupMenu; index: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr index, getPtr tooltip], void)

proc setItemShortcut*(self: PopupMenu; index: int32; shortcut: gdref Shortcut; global: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_shortcut", 825127832)
  methodbind.ptrcall(self, [getPtr index, getPtr shortcut, getPtr global], void)

proc setItemIndent*(self: PopupMenu; index: int32; indent: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_indent", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr indent], void)

proc setItemMultistate*(self: PopupMenu; index: int32; state: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_multistate", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr state], void)

proc setItemMultistateMax*(self: PopupMenu; index: int32; maxStates: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_multistate_max", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr maxStates], void)

proc setItemShortcutDisabled*(self: PopupMenu; index: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_shortcut_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr index, getPtr disabled], void)

proc toggleItemChecked*(self: PopupMenu; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "toggle_item_checked", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc toggleItemMultistate*(self: PopupMenu; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "toggle_item_multistate", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getItemText*(self: PopupMenu; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_text", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getItemTextDirection*(self: PopupMenu; index: int32): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_text_direction", 4235602388)
  methodbind.ptrcall(self, [getPtr index], Control_TextDirection)

proc getItemLanguage*(self: PopupMenu; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_language", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getItemAutoTranslateMode*(self: PopupMenu; index: int32): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_auto_translate_mode", 906302372)
  methodbind.ptrcall(self, [getPtr index], Node_AutoTranslateMode)

proc getItemIcon*(self: PopupMenu; index: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_icon", 3536238170)
  methodbind.ptrcall(self, [getPtr index], gdref Texture2D)

proc getItemIconMaxWidth*(self: PopupMenu; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_icon_max_width", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getItemIconModulate*(self: PopupMenu; index: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_icon_modulate", 3457211756)
  methodbind.ptrcall(self, [getPtr index], Color)

proc isItemChecked*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_checked", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc getItemId*(self: PopupMenu; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_id", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getItemIndex*(self: PopupMenu; id: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_index", 923996154)
  methodbind.ptrcall(self, [getPtr id], int32)

proc getItemAccelerator*(self: PopupMenu; index: int32): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_accelerator", 253789942)
  methodbind.ptrcall(self, [getPtr index], Key)

proc getItemMetadata*(self: PopupMenu; index: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_metadata", 4227898402)
  methodbind.ptrcall(self, [getPtr index], Variant)

proc isItemDisabled*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc getItemSubmenu*(self: PopupMenu; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_submenu", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getItemSubmenuNode*(self: PopupMenu; index: int32): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_submenu_node", 2100501353)
  methodbind.ptrcall(self, [getPtr index], PopupMenu)

proc isItemSeparator*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_separator", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc isItemCheckable*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_checkable", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc isItemRadioCheckable*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_radio_checkable", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc isItemShortcutDisabled*(self: PopupMenu; index: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_item_shortcut_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr index], bool)

proc getItemTooltip*(self: PopupMenu; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc getItemShortcut*(self: PopupMenu; index: int32): gdref Shortcut =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_shortcut", 1449483325)
  methodbind.ptrcall(self, [getPtr index], gdref Shortcut)

proc getItemIndent*(self: PopupMenu; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_indent", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getItemMultistateMax*(self: PopupMenu; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_multistate_max", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getItemMultistate*(self: PopupMenu; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_multistate", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc setFocusedItem*(self: PopupMenu; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_focused_item", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getFocusedItem*(self: PopupMenu): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_focused_item", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setItemCount*(self: PopupMenu; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_item_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getItemCount*(self: PopupMenu): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_item_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc scrollToItem*(self: PopupMenu; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "scroll_to_item", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc removeItem*(self: PopupMenu; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "remove_item", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc addSeparator*(self: PopupMenu; label: String = newGdString(); id: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "add_separator", 2266703459)
  methodbind.ptrcall(self, [getPtr label, getPtr id], void)

proc clear*(self: PopupMenu; freeSubmenus: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "clear", 107499316)
  methodbind.ptrcall(self, [getPtr freeSubmenus], void)

proc setHideOnItemSelection*(self: PopupMenu; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_hide_on_item_selection", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHideOnItemSelection*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_hide_on_item_selection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHideOnCheckableItemSelection*(self: PopupMenu; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_hide_on_checkable_item_selection", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHideOnCheckableItemSelection*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_hide_on_checkable_item_selection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHideOnStateItemSelection*(self: PopupMenu; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_hide_on_state_item_selection", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHideOnStateItemSelection*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_hide_on_state_item_selection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSubmenuPopupDelay*(self: PopupMenu; seconds: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_submenu_popup_delay", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getSubmenuPopupDelay*(self: PopupMenu): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_submenu_popup_delay", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAllowSearch*(self: PopupMenu; allow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_allow_search", 2586408642)
  methodbind.ptrcall(self, [getPtr allow], void)

proc getAllowSearch*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_allow_search", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isSystemMenu*(self: PopupMenu): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "is_system_menu", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSystemMenu*(self: PopupMenu; systemMenuId: NativeMenu_SystemMenus): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "set_system_menu", 600639674)
  methodbind.ptrcall(self, [getPtr systemMenuId], void)

proc getSystemMenu*(self: PopupMenu): NativeMenu_SystemMenus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PopupMenu, "get_system_menu", 1222557358)
  methodbind.ptrcall(self, [], NativeMenu_SystemMenus)

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
