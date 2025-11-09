{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(ProgressBar, Range)

proc setFillMode*(self: ProgressBar; mode: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "set_fill_mode", 1286410249)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFillMode*(self: ProgressBar): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "get_fill_mode", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc setShowPercentage*(self: ProgressBar; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "set_show_percentage", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isPercentageShown*(self: ProgressBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "is_percentage_shown", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIndeterminate*(self: ProgressBar; indeterminate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "set_indeterminate", 2586408642)
  methodbind.ptrcall(self, [getPtr indeterminate], void)

proc isIndeterminate*(self: ProgressBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "is_indeterminate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditorPreviewIndeterminate*(self: ProgressBar; previewIndeterminate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "set_editor_preview_indeterminate", 2586408642)
  methodbind.ptrcall(self, [getPtr previewIndeterminate], void)

proc isEditorPreviewIndeterminateEnabled*(self: ProgressBar): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ProgressBar, "is_editor_preview_indeterminate_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template fillMode*(self: ProgressBar): untyped = self.getFillMode()
template `fillMode=`*(self: ProgressBar; value) = self.setFillMode(value)

template showPercentage*(self: ProgressBar): untyped = self.isPercentageShown()
template `showPercentage=`*(self: ProgressBar; value) = self.setShowPercentage(value)

template indeterminate*(self: ProgressBar): untyped = self.isIndeterminate()
template `indeterminate=`*(self: ProgressBar; value) = self.setIndeterminate(value)

template editorPreviewIndeterminate*(self: ProgressBar): untyped = self.isEditorPreviewIndeterminateEnabled()
template `editorPreviewIndeterminate=`*(self: ProgressBar; value) = self.setEditorPreviewIndeterminate(value)
