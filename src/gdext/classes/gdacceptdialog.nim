{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwindow; export gdwindow

proc getOkButton*(self: AcceptDialog): Button =
  expandMethodBind(className AcceptDialog, "get_ok_button", 1856205918)
  var ret: encoded Button
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Button)

proc getLabel*(self: AcceptDialog): Label =
  expandMethodBind(className AcceptDialog, "get_label", 566733104)
  var ret: encoded Label
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Label)

proc setHideOnOk*(self: AcceptDialog; enabled: bool): void =
  expandMethodBind(className AcceptDialog, "set_hide_on_ok", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getHideOnOk*(self: AcceptDialog): bool =
  expandMethodBind(className AcceptDialog, "get_hide_on_ok", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCloseOnEscape*(self: AcceptDialog; enabled: bool): void =
  expandMethodBind(className AcceptDialog, "set_close_on_escape", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getCloseOnEscape*(self: AcceptDialog): bool =
  expandMethodBind(className AcceptDialog, "get_close_on_escape", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc addButton*(self: AcceptDialog; text: String; right: bool = false; action: String = gdstring""): Button =
  expandMethodBind(className AcceptDialog, "add_button", 3328440682)
  var ret: encoded Button
  methodbind.ptrcall(self, [getPtr text, getPtr right, getPtr action], addr ret)
  (addr ret).decode_result(Button)

proc addCancelButton*(self: AcceptDialog; name: String): Button =
  expandMethodBind(className AcceptDialog, "add_cancel_button", 242045556)
  var ret: encoded Button
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Button)

proc removeButton*(self: AcceptDialog; button: Button): void =
  expandMethodBind(className AcceptDialog, "remove_button", 2068354942)
  methodbind.ptrcall(self, [getPtr button])

proc registerTextEnter*(self: AcceptDialog; lineEdit: LineEdit): void =
  expandMethodBind(className AcceptDialog, "register_text_enter", 3714008017)
  methodbind.ptrcall(self, [getPtr lineEdit])

proc setText*(self: AcceptDialog; text: String): void =
  expandMethodBind(className AcceptDialog, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getText*(self: AcceptDialog): String =
  expandMethodBind(className AcceptDialog, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setAutowrap*(self: AcceptDialog; autowrap: bool): void =
  expandMethodBind(className AcceptDialog, "set_autowrap", 2586408642)
  methodbind.ptrcall(self, [getPtr autowrap])

proc hasAutowrap*(self: AcceptDialog): bool =
  expandMethodBind(className AcceptDialog, "has_autowrap", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOkButtonText*(self: AcceptDialog; text: String): void =
  expandMethodBind(className AcceptDialog, "set_ok_button_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getOkButtonText*(self: AcceptDialog): String =
  expandMethodBind(className AcceptDialog, "get_ok_button_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template okButtonText*(self: AcceptDialog): untyped = self.getOkButtonText()
template `okButtonText=`*(self: AcceptDialog; value) = self.setOkButtonText(value)

template dialogText*(self: AcceptDialog): untyped = self.getText()
template `dialogText=`*(self: AcceptDialog; value) = self.setText(value)

template dialogHideOnOk*(self: AcceptDialog): untyped = self.getHideOnOk()
template `dialogHideOnOk=`*(self: AcceptDialog; value) = self.setHideOnOk(value)

template dialogCloseOnEscape*(self: AcceptDialog): untyped = self.getCloseOnEscape()
template `dialogCloseOnEscape=`*(self: AcceptDialog; value) = self.setCloseOnEscape(value)

template dialogAutowrap*(self: AcceptDialog): untyped = self.hasAutowrap()
template `dialogAutowrap=`*(self: AcceptDialog; value) = self.setAutowrap(value)

const AcceptDialog_vmap =
  Window.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AcceptDialog]): Table[string, string] = AcceptDialog_vmap

proc confirmed*(self: AcceptDialog): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("confirmed")
  self.emitSignal(signalname)

proc canceled*(self: AcceptDialog): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("canceled")
  self.emitSignal(signalname)

proc customAction*(self: AcceptDialog; action: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("custom_action")
  let args = [action]
  self.emitSignal(signalname, args)