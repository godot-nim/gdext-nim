{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

proc config*(self: ScriptCreateDialog; inherits: String; path: String; builtInEnabled: bool = true; loadEnabled: bool = true): void =
  expandMethodBind(className ScriptCreateDialog, "config", 869314288)
  methodbind.ptrcall(self, [getPtr inherits, getPtr path, getPtr builtInEnabled, getPtr loadEnabled])
