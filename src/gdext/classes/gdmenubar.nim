{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(MenuBar, Control)

proc setSwitchOnHover*(self: MenuBar; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_switch_on_hover", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSwitchOnHover*(self: MenuBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_switch_on_hover", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setDisableShortcuts*(self: MenuBar; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_disable_shortcuts", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc setPreferGlobalMenu*(self: MenuBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_prefer_global_menu", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPreferGlobalMenu*(self: MenuBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_prefer_global_menu", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isNativeMenu*(self: MenuBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_native_menu", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getMenuCount*(self: MenuBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_menu_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTextDirection*(self: MenuBar; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: MenuBar): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: MenuBar; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: MenuBar): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setFlat*(self: MenuBar; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFlat*(self: MenuBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_flat", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setStartIndex*(self: MenuBar; enabled: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_start_index", 1286410249)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getStartIndex*(self: MenuBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_start_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMenuTitle*(self: MenuBar; menu: int32; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_menu_title", 501894301)
  methodbind.ptrcall(self, [getPtr menu, getPtr title], void)

proc getMenuTitle*(self: MenuBar; menu: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_menu_title", 844755477)
  methodbind.ptrcall(self, [getPtr menu], String)

proc setMenuTooltip*(self: MenuBar; menu: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_menu_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr menu, getPtr tooltip], void)

proc getMenuTooltip*(self: MenuBar; menu: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_menu_tooltip", 844755477)
  methodbind.ptrcall(self, [getPtr menu], String)

proc setMenuDisabled*(self: MenuBar; menu: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_menu_disabled", 300928843)
  methodbind.ptrcall(self, [getPtr menu, getPtr disabled], void)

proc isMenuDisabled*(self: MenuBar; menu: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_menu_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr menu], bool)

proc setMenuHidden*(self: MenuBar; menu: int32; hidden: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "set_menu_hidden", 300928843)
  methodbind.ptrcall(self, [getPtr menu, getPtr hidden], void)

proc isMenuHidden*(self: MenuBar; menu: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "is_menu_hidden", 1116898809)
  methodbind.ptrcall(self, [getPtr menu], bool)

proc getMenuPopup*(self: MenuBar; menu: int32): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuBar, "get_menu_popup", 2100501353)
  methodbind.ptrcall(self, [getPtr menu], PopupMenu)

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
