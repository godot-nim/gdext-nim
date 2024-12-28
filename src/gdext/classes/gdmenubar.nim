{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setSwitchOnHover*(self: MenuBar; enable: bool): void =
  expandMethodBind(className MenuBar, "set_switch_on_hover", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSwitchOnHover*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_switch_on_hover", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDisableShortcuts*(self: MenuBar; disabled: bool): void =
  expandMethodBind(className MenuBar, "set_disable_shortcuts", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled])

proc setPreferGlobalMenu*(self: MenuBar; enabled: bool): void =
  expandMethodBind(className MenuBar, "set_prefer_global_menu", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isPreferGlobalMenu*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_prefer_global_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isNativeMenu*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_native_menu", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getMenuCount*(self: MenuBar): int32 =
  expandMethodBind(className MenuBar, "get_menu_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setTextDirection*(self: MenuBar; direction: Control_TextDirection): void =
  expandMethodBind(className MenuBar, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction])

proc getTextDirection*(self: MenuBar): Control_TextDirection =
  expandMethodBind(className MenuBar, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: MenuBar; language: String): void =
  expandMethodBind(className MenuBar, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: MenuBar): String =
  expandMethodBind(className MenuBar, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setFlat*(self: MenuBar; enabled: bool): void =
  expandMethodBind(className MenuBar, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFlat*(self: MenuBar): bool =
  expandMethodBind(className MenuBar, "is_flat", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setStartIndex*(self: MenuBar; enabled: int32): void =
  expandMethodBind(className MenuBar, "set_start_index", 1286410249)
  methodbind.ptrcall(self, [getPtr enabled])

proc getStartIndex*(self: MenuBar): int32 =
  expandMethodBind(className MenuBar, "get_start_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMenuTitle*(self: MenuBar; menu: int32; title: String): void =
  expandMethodBind(className MenuBar, "set_menu_title", 501894301)
  methodbind.ptrcall(self, [getPtr menu, getPtr title])

proc getMenuTitle*(self: MenuBar; menu: int32): String =
  expandMethodBind(className MenuBar, "get_menu_title", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menu], addr ret)
  (addr ret).decode_result(String)

proc setMenuTooltip*(self: MenuBar; menu: int32; tooltip: String): void =
  expandMethodBind(className MenuBar, "set_menu_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr menu, getPtr tooltip])

proc getMenuTooltip*(self: MenuBar; menu: int32): String =
  expandMethodBind(className MenuBar, "get_menu_tooltip", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menu], addr ret)
  (addr ret).decode_result(String)

proc setMenuDisabled*(self: MenuBar; menu: int32; disabled: bool): void =
  expandMethodBind(className MenuBar, "set_menu_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr menu, getPtr disabled])

proc isMenuDisabled*(self: MenuBar; menu: int32): bool =
  expandMethodBind(className MenuBar, "is_menu_disabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menu], addr ret)
  (addr ret).decode_result(bool)

proc setMenuHidden*(self: MenuBar; menu: int32; hidden: bool): void =
  expandMethodBind(className MenuBar, "set_menu_hidden", 300928843)
  methodbind.ptrcall(self, [getPtr menu, getPtr hidden])

proc isMenuHidden*(self: MenuBar; menu: int32): bool =
  expandMethodBind(className MenuBar, "is_menu_hidden", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menu], addr ret)
  (addr ret).decode_result(bool)

proc getMenuPopup*(self: MenuBar; menu: int32): PopupMenu =
  expandMethodBind(className MenuBar, "get_menu_popup", 2100501353)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, [getPtr menu], addr ret)
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