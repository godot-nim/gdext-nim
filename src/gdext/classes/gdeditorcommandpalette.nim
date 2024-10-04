{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

proc addCommand*(self: EditorCommandPalette; commandName: String; keyName: String; bindedCallable: Callable; shortcutText: String = gdstring"None"): void =
  expandMethodBind(className EditorCommandPalette, "add_command", 864043298)
  var `?param` = [getPtr commandName, getPtr keyName, getPtr bindedCallable, getPtr shortcutText]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCommand*(self: EditorCommandPalette; keyName: String): void =
  expandMethodBind(className EditorCommandPalette, "remove_command", 83702148)
  var `?param` = [getPtr keyName]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorCommandPalette_vmap =
  ConfirmationDialog.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorCommandPalette]): Table[string, string] = EditorCommandPalette_vmap