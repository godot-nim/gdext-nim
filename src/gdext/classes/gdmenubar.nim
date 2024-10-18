{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setSwitchOnHover*(self: MenuBar; enable: bool): void =
  expandMethodBind(className MenuBar, "set_switch_on_hover", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSwitchOnHover*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_switch_on_hover", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisableShortcuts*(self: MenuBar; disabled: bool): void =
  expandMethodBind(className MenuBar, "set_disable_shortcuts", 2586408642)
  var `?param` = [getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPreferGlobalMenu*(self: MenuBar; enabled: bool): void =
  expandMethodBind(className MenuBar, "set_prefer_global_menu", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPreferGlobalMenu*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_prefer_global_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isNativeMenu*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_native_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMenuCount*(self: MenuBar): int32 =
  expandMethodBind(className MenuBar, "get_menu_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTextDirection*(self: MenuBar; direction: Control_TextDirection): void =
  expandMethodBind(className MenuBar, "set_text_direction", 119160795)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextDirection*(self: MenuBar): Control_TextDirection =
  expandMethodBind(className MenuBar, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: MenuBar; language: String): void =
  expandMethodBind(className MenuBar, "set_language", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: MenuBar): String =
  expandMethodBind(className MenuBar, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setFlat*(self: MenuBar; enabled: bool): void =
  expandMethodBind(className MenuBar, "set_flat", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlat*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_flat", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setStartIndex*(self: MenuBar; enabled: int32): void =
  expandMethodBind(className MenuBar, "set_start_index", 1286410249)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStartIndex*(self: MenuBar): int32 =
  expandMethodBind(className MenuBar, "get_start_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMenuTitle*(self: MenuBar; menu: int32; title: String): void =
  expandMethodBind(className MenuBar, "set_menu_title", 501894301)
  var `?param` = [getPtr menu, getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMenuTitle*(self: MenuBar; menu: int32): String =
  expandMethodBind(className MenuBar, "get_menu_title", 844755477)
  var `?param` = [getPtr menu]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setMenuTooltip*(self: MenuBar; menu: int32; tooltip: String): void =
  expandMethodBind(className MenuBar, "set_menu_tooltip", 501894301)
  var `?param` = [getPtr menu, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMenuTooltip*(self: MenuBar; menu: int32): String =
  expandMethodBind(className MenuBar, "get_menu_tooltip", 844755477)
  var `?param` = [getPtr menu]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setMenuDisabled*(self: MenuBar; menu: int32; disabled: bool): void =
  expandMethodBind(className MenuBar, "set_menu_disabled", 300928843)
  var `?param` = [getPtr menu, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMenuDisabled*(self: MenuBar; menu: int32): bool =
  expandMethodBind(className MenuBar, "is_menu_disabled", 1116898809)
  var `?param` = [getPtr menu]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setMenuHidden*(self: MenuBar; menu: int32; hidden: bool): void =
  expandMethodBind(className MenuBar, "set_menu_hidden", 300928843)
  var `?param` = [getPtr menu, getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMenuHidden*(self: MenuBar; menu: int32): bool =
  expandMethodBind(className MenuBar, "is_menu_hidden", 1116898809)
  var `?param` = [getPtr menu]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getMenuPopup*(self: MenuBar; menu: int32): PopupMenu =
  expandMethodBind(className MenuBar, "get_menu_popup", 2100501353)
  var `?param` = [getPtr menu]
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PopupMenu)

template flat*(self: MenuBar): untyped = self.isFlat()
template `flat=`*(self: MenuBar; value) = self.setFlat(value)

template startIndex*(self: MenuBar): untyped = self.getStartIndex()
template `startIndex=`*(self: MenuBar; value) = self.setStartIndex(value)

template switchOnHover*(self: MenuBar): untyped = self.isSwitchOnHover()
template `switchOnHover=`*(self: MenuBar; value) = self.setSwitchOnHover(value)

template preferGlobalMenu*(self: MenuBar): untyped = self.isPreferGlobalMenu()
template `preferGlobalMenu=`*(self: MenuBar; value) = self.setPreferGlobalMenu(value)

template textDirection*(self: MenuBar): untyped = self.getTextDirection()
template `textDirection=`*(self: MenuBar; value) = self.setTextDirection(value)

template language*(self: MenuBar): untyped = self.getLanguage()
template `language=`*(self: MenuBar; value) = self.setLanguage(value)

const MenuBar_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MenuBar]): Table[string, string] = MenuBar_vmap