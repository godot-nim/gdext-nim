{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwindow; export gdwindow

proc getOkButton*(self: AcceptDialog): Button =
  ##Returns the OK Button instance
  ##
  ##Warning: This is a required internal node, removing and freeing it may cause a crash.
  ##If you wish to hide it or any of its children, use their CanvasItem.visible property
  expandMethodBind(className AcceptDialog, "get_ok_button", 1856205918)
  var ret: encoded Button
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Button)

proc getLabel*(self: AcceptDialog): Label =
  ##Returns the label used for built-in text.
  ##
  ##Warning: This is a required internal node, removing and freeing it may cause a crash.
  ##If you wish to hide it or any of its children, use their CanvasItem.visible property.
  expandMethodBind(className AcceptDialog, "get_label", 566733104)
  var ret: encoded Label
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Label)

proc setHideOnOk*(self: AcceptDialog; enabled: bool): void =
  ##if true, the dialog is hidden when the OK button is pressed. You can set it to false if you want to do eg.
  ##input validation when recieving the "confirmed" signal, and handle hiding dialogue in your own logic.
  ##
  ##Note: Some nodes derived from this class can have a different default value, and potentially their own built-
  ##in logic overriding this setting. For example FileDialog defaults to false, and has its own input validation
  ##code that is called when you press OK, which eventually hides the dialog if the input is valid. As such, this
  ##property can't be used in FileDialog to disable hiding the dialog when pressing OK.
  expandMethodBind(className AcceptDialog, "set_hide_on_ok", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHideOnOk*(self: AcceptDialog): bool =
  ##if true, the dialog is hidden when the OK button is pressed. You can set it to false if you want to do eg.
  ##input validation when recieving the "confirmed" signal, and handle hiding dialogue in your own logic.
  ##
  ##Note: Some nodes derived from this class can have a different default value, and potentially their own built-
  ##in logic overriding this setting. For example FileDialog defaults to false, and has its own input validation
  ##code that is called when you press OK, which eventually hides the dialog if the input is valid. As such, this
  ##property can't be used in FileDialog to disable hiding the dialog when pressing OK.
  expandMethodBind(className AcceptDialog, "get_hide_on_ok", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCloseOnEscape*(self: AcceptDialog; enabled: bool): void =
  ##If true, the dialog will be hidden when the escape key (@GlobalScope.KEY_ESCAPE) is pressed.
  expandMethodBind(className AcceptDialog, "set_close_on_escape", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCloseOnEscape*(self: AcceptDialog): bool =
  ##If true, the dialog will be hidden when the escape key (@GlobalScope.KEY_ESCAPE) is pressed.
  expandMethodBind(className AcceptDialog, "get_close_on_escape", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addButton*(self: AcceptDialog; text: String; right: bool = false; action: String = gdstring""): Button =
  ##Adds a button with label text and a custom action to the dialog and returns the created button. action
  ##will be passed to the custom_action signal when pressed.
  ##
  ##If true, right will place the button to the right of any sibling buttons.
  ##
  ##You can use remove_button method to remove a button created with this method from the dialog.
  expandMethodBind(className AcceptDialog, "add_button", 3328440682)
  var `?param` = [getPtr text, getPtr right, getPtr action]
  var ret: encoded Button
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Button)

proc addCancelButton*(self: AcceptDialog; name: String): Button =
  ##Adds a button with label name and a cancel action to the dialog and returns the created button.
  ##
  ##You can use remove_button method to remove a button created with this method from the dialog.
  expandMethodBind(className AcceptDialog, "add_cancel_button", 242045556)
  var `?param` = [getPtr name]
  var ret: encoded Button
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Button)

proc removeButton*(self: AcceptDialog; button: Button): void =
  ##Removes the button from the dialog. Does NOT free the button. The button must be a Button added
  ##with add_button or add_cancel_button method. After removal, pressing the button will no longer emit this
  ##dialog's custom_action or canceled signals.
  expandMethodBind(className AcceptDialog, "remove_button", 2068354942)
  var `?param` = [getPtr button]
  methodbind.ptrcall(self, addr `?param`[0])

proc registerTextEnter*(self: AcceptDialog; lineEdit: LineEdit): void =
  ##Registers a LineEdit in the dialog. When the enter key is pressed, the dialog will be accepted.
  expandMethodBind(className AcceptDialog, "register_text_enter", 3714008017)
  var `?param` = [getPtr lineEdit]
  methodbind.ptrcall(self, addr `?param`[0])

proc setText*(self: AcceptDialog; text: String): void =
  ##The text displayed by the dialog.
  expandMethodBind(className AcceptDialog, "set_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getText*(self: AcceptDialog): String =
  ##The text displayed by the dialog.
  expandMethodBind(className AcceptDialog, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setAutowrap*(self: AcceptDialog; autowrap: bool): void =
  ##Sets autowrapping for the text in the dialog.
  expandMethodBind(className AcceptDialog, "set_autowrap", 2586408642)
  var `?param` = [getPtr autowrap]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasAutowrap*(self: AcceptDialog): bool =
  ##Gets autowrapping for the text in the dialog.
  expandMethodBind(className AcceptDialog, "has_autowrap", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOkButtonText*(self: AcceptDialog; text: String): void =
  ##The text displayed by the OK button (see get_ok_button).
  expandMethodBind(className AcceptDialog, "set_ok_button_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOkButtonText*(self: AcceptDialog): String =
  ##The text displayed by the OK button (see get_ok_button).
  expandMethodBind(className AcceptDialog, "get_ok_button_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
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
  ##Emitted when the dialog is accepted, i.e. the OK button is pressed.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("confirmed")
  self.emitSignal(signalname)

proc canceled*(self: AcceptDialog): Error =
  ##Emitted when the dialog is closed or the button created with add_cancel_button is pressed.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("canceled")
  self.emitSignal(signalname)

proc customAction*(self: AcceptDialog; action: Variant): Error =
  ##Emitted when a custom button is pressed. See add_button.
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("custom_action")
  let args = [action]
  self.emitSignal(signalname, args)