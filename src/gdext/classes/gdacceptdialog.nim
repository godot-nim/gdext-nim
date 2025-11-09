{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwindow; export gdwindow

expandOnClassImported(AcceptDialog, Window)

proc getOkButton*(self: AcceptDialog): Button =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_ok_button", 1856205918)
  methodbind.ptrcall(self, [], Button)

proc getLabel*(self: AcceptDialog): Label =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_label", 566733104)
  methodbind.ptrcall(self, [], Label)

proc setHideOnOk*(self: AcceptDialog; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "set_hide_on_ok", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getHideOnOk*(self: AcceptDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_hide_on_ok", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCloseOnEscape*(self: AcceptDialog; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "set_close_on_escape", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCloseOnEscape*(self: AcceptDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_close_on_escape", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addButton*(self: AcceptDialog; text: String; right: bool = false; action: String = newGdString()): Button =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "add_button", 3328440682)
  methodbind.ptrcall(self, [getPtr text, getPtr right, getPtr action], Button)

proc addCancelButton*(self: AcceptDialog; name: String): Button =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "add_cancel_button", 242045556)
  methodbind.ptrcall(self, [getPtr name], Button)

proc removeButton*(self: AcceptDialog; button: Button): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "remove_button", 2068354942)
  methodbind.ptrcall(self, [getPtr button], void)

proc registerTextEnter*(self: AcceptDialog; lineEdit: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "register_text_enter", 3714008017)
  methodbind.ptrcall(self, [getPtr lineEdit], void)

proc setText*(self: AcceptDialog; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: AcceptDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAutowrap*(self: AcceptDialog; autowrap: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "set_autowrap", 2586408642)
  methodbind.ptrcall(self, [getPtr autowrap], void)

proc hasAutowrap*(self: AcceptDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "has_autowrap", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setOkButtonText*(self: AcceptDialog; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "set_ok_button_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getOkButtonText*(self: AcceptDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AcceptDialog, "get_ok_button_text", 201670096)
  methodbind.ptrcall(self, [], String)

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
