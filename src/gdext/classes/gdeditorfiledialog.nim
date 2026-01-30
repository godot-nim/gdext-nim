{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfiledialog; export gdfiledialog

expandOnClassImported(EditorFileDialog, FileDialog)

proc addSideMenu*(self: EditorFileDialog; menu: Control; title: String = newGdString()): void =
  expandMethodBind(className EditorFileDialog, "add_side_menu", 402368861)
  methodbind.ptrcall(self, [getPtr menu, getPtr title])

proc setDisableOverwriteWarning*(self: EditorFileDialog; disable: bool): void =
  expandMethodBind(className EditorFileDialog, "set_disable_overwrite_warning", 2586408642)
  methodbind.ptrcall(self, [getPtr disable])

proc isOverwriteWarningDisabled*(self: EditorFileDialog): bool =
  expandMethodBind(className EditorFileDialog, "is_overwrite_warning_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template disableOverwriteWarning*(self: EditorFileDialog): untyped = self.isOverwriteWarningDisabled()
template `disableOverwriteWarning=`*(self: EditorFileDialog; value) = self.setDisableOverwriteWarning(value)
