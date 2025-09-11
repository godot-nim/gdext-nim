{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

expandOnClassImported(EditorCommandPalette, ConfirmationDialog)

proc addCommand*(self: EditorCommandPalette; commandName: String; keyName: String; bindedCallable: Callable; shortcutText: String = newGdString("None")): void =
  expandMethodBind(className EditorCommandPalette, "add_command", 864043298)
  methodbind.ptrcall(self, [getPtr commandName, getPtr keyName, getPtr bindedCallable, getPtr shortcutText])

proc removeCommand*(self: EditorCommandPalette; keyName: String): void =
  expandMethodBind(className EditorCommandPalette, "remove_command", 83702148)
  methodbind.ptrcall(self, [getPtr keyName])
