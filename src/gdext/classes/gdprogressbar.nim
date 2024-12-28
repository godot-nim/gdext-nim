{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

proc setFillMode*(self: ProgressBar; mode: int32): void =
  expandMethodBind(className ProgressBar, "set_fill_mode", 1286410249)
  methodbind.ptrcall(self, [getPtr mode])

proc getFillMode*(self: ProgressBar): int32 =
  expandMethodBind(className ProgressBar, "get_fill_mode", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setShowPercentage*(self: ProgressBar; visible: bool): void =
  expandMethodBind(className ProgressBar, "set_show_percentage", 2586408642)
  methodbind.ptrcall(self, [getPtr visible])

proc isPercentageShown*(self: ProgressBar): bool =
  expandMethodBind(className ProgressBar, "is_percentage_shown", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setIndeterminate*(self: ProgressBar; indeterminate: bool): void =
  expandMethodBind(className ProgressBar, "set_indeterminate", 2586408642)
  methodbind.ptrcall(self, [getPtr indeterminate])

proc isIndeterminate*(self: ProgressBar): bool =
  expandMethodBind(className ProgressBar, "is_indeterminate", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEditorPreviewIndeterminate*(self: ProgressBar; previewIndeterminate: bool): void =
  expandMethodBind(className ProgressBar, "set_editor_preview_indeterminate", 2586408642)
  methodbind.ptrcall(self, [getPtr previewIndeterminate])

proc isEditorPreviewIndeterminateEnabled*(self: ProgressBar): bool =
  expandMethodBind(className ProgressBar, "is_editor_preview_indeterminate_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template fillMode*(self: ProgressBar): untyped = self.getFillMode()
template `fillMode=`*(self: ProgressBar; value) = self.setFillMode(value)

template showPercentage*(self: ProgressBar): untyped = self.isPercentageShown()
template `showPercentage=`*(self: ProgressBar; value) = self.setShowPercentage(value)

template indeterminate*(self: ProgressBar): untyped = self.isIndeterminate()
template `indeterminate=`*(self: ProgressBar; value) = self.setIndeterminate(value)

template editorPreviewIndeterminate*(self: ProgressBar): untyped = self.isEditorPreviewIndeterminateEnabled()
template `editorPreviewIndeterminate=`*(self: ProgressBar; value) = self.setEditorPreviewIndeterminate(value)

const ProgressBar_vmap =
  Range.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ProgressBar]): Table[string, string] = ProgressBar_vmap