{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

proc getPopup*(self: MenuButton): PopupMenu =
  expandMethodBind(className MenuButton, "get_popup", 229722558)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PopupMenu)

proc showPopup*(self: MenuButton): void =
  expandMethodBind(className MenuButton, "show_popup", 3218959716)
  methodbind.ptrcall(self, nil)

proc setSwitchOnHover*(self: MenuButton; enable: bool): void =
  expandMethodBind(className MenuButton, "set_switch_on_hover", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSwitchOnHover*(self: MenuButton): bool =
  expandMethodBind(className MenuButton, "is_switch_on_hover", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisableShortcuts*(self: MenuButton; disabled: bool): void =
  expandMethodBind(className MenuButton, "set_disable_shortcuts", 2586408642)
  var `?param` = [getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setItemCount*(self: MenuButton; count: int32): void =
  expandMethodBind(className MenuButton, "set_item_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getItemCount*(self: MenuButton): int32 =
  expandMethodBind(className MenuButton, "get_item_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template switchOnHover*(self: MenuButton): untyped = self.isSwitchOnHover()
template `switchOnHover=`*(self: MenuButton; value) = self.setSwitchOnHover(value)

template itemCount*(self: MenuButton): untyped = self.getItemCount()
template `itemCount=`*(self: MenuButton; value) = self.setItemCount(value)

const MenuButton_vmap =
  Button.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MenuButton]): Table[string, string] = MenuButton_vmap

proc aboutToPopup*(self: MenuButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("about_to_popup")
  self.emitSignal(signalname)