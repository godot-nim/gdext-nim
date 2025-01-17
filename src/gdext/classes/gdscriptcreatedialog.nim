{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

proc config*(self: ScriptCreateDialog; inherits: String; path: String; builtInEnabled: bool = true; loadEnabled: bool = true): void =
  expandMethodBind(className ScriptCreateDialog, "config", 869314288)
  methodbind.ptrcall(self, [getPtr inherits, getPtr path, getPtr builtInEnabled, getPtr loadEnabled])

const ScriptCreateDialog_vmap =
  ConfirmationDialog.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScriptCreateDialog]): Table[string, string] = ScriptCreateDialog_vmap

proc scriptCreated*(self: ScriptCreateDialog; script: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("script_created")
  let args = [script]
  self.emitSignal(signalname, args)