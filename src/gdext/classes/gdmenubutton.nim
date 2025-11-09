{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

expandOnClassImported(MenuButton, Button)

proc getPopup*(self: MenuButton): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "get_popup", 229722558)
  methodbind.ptrcall(self, [], PopupMenu)

proc showPopup*(self: MenuButton): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "show_popup", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setSwitchOnHover*(self: MenuButton; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "set_switch_on_hover", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSwitchOnHover*(self: MenuButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "is_switch_on_hover", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setDisableShortcuts*(self: MenuButton; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "set_disable_shortcuts", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc setItemCount*(self: MenuButton; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "set_item_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getItemCount*(self: MenuButton): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MenuButton, "get_item_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

template switchOnHover*(self: MenuButton): untyped = self.isSwitchOnHover()
template `switchOnHover=`*(self: MenuButton; value) = self.setSwitchOnHover(value)

template itemCount*(self: MenuButton): untyped = self.getItemCount()
template `itemCount=`*(self: MenuButton; value) = self.setItemCount(value)
