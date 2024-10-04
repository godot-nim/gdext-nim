{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdacceptdialog; export gdacceptdialog

proc getCancelButton*(self: ConfirmationDialog): Button =
  expandMethodBind(className ConfirmationDialog, "get_cancel_button", 1856205918)
  var ret: encoded Button
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Button)

proc setCancelButtonText*(self: ConfirmationDialog; text: String): void =
  expandMethodBind(className ConfirmationDialog, "set_cancel_button_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCancelButtonText*(self: ConfirmationDialog): String =
  expandMethodBind(className ConfirmationDialog, "get_cancel_button_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template cancelButtonText*(self: ConfirmationDialog): untyped = self.getCancelButtonText()
template `cancelButtonText=`*(self: ConfirmationDialog; value) = self.setCancelButtonText(value)

const ConfirmationDialog_vmap =
  AcceptDialog.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConfirmationDialog]): Table[string, string] = ConfirmationDialog_vmap