{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdacceptdialog; export gdacceptdialog

expandOnClassImported(ConfirmationDialog, AcceptDialog)

proc getCancelButton*(self: ConfirmationDialog): Button =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfirmationDialog, "get_cancel_button", 1856205918)
  methodbind.ptrcall(self, [], Button)

proc setCancelButtonText*(self: ConfirmationDialog; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfirmationDialog, "set_cancel_button_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getCancelButtonText*(self: ConfirmationDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ConfirmationDialog, "get_cancel_button_text", 201670096)
  methodbind.ptrcall(self, [], String)

template cancelButtonText*(self: ConfirmationDialog): untyped = self.getCancelButtonText()
template `cancelButtonText=`*(self: ConfirmationDialog; value) = self.setCancelButtonText(value)
