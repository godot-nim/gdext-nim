{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(EditorSpinSlider, Range)

proc setLabel*(self: EditorSpinSlider; label: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_label", 83702148)
  methodbind.ptrcall(self, [getPtr label], void)

proc getLabel*(self: EditorSpinSlider): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "get_label", 201670096)
  methodbind.ptrcall(self, [], String)

proc setSuffix*(self: EditorSpinSlider; suffix: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix], void)

proc getSuffix*(self: EditorSpinSlider): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "get_suffix", 201670096)
  methodbind.ptrcall(self, [], String)

proc setReadOnly*(self: EditorSpinSlider; readOnly: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_read_only", 2586408642)
  methodbind.ptrcall(self, [getPtr readOnly], void)

proc isReadOnly*(self: EditorSpinSlider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "is_read_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFlat*(self: EditorSpinSlider; flat: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr flat], void)

proc isFlat*(self: EditorSpinSlider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "is_flat", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHideSlider*(self: EditorSpinSlider; hideSlider: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_hide_slider", 2586408642)
  methodbind.ptrcall(self, [getPtr hideSlider], void)

proc isHidingSlider*(self: EditorSpinSlider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "is_hiding_slider", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditingInteger*(self: EditorSpinSlider; editingInteger: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "set_editing_integer", 2586408642)
  methodbind.ptrcall(self, [getPtr editingInteger], void)

proc isEditingInteger*(self: EditorSpinSlider): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSpinSlider, "is_editing_integer", 36873697)
  methodbind.ptrcall(self, [], bool)

template label*(self: EditorSpinSlider): untyped = self.getLabel()
template `label=`*(self: EditorSpinSlider; value) = self.setLabel(value)

template suffix*(self: EditorSpinSlider): untyped = self.getSuffix()
template `suffix=`*(self: EditorSpinSlider; value) = self.setSuffix(value)

template readOnly*(self: EditorSpinSlider): untyped = self.isReadOnly()
template `readOnly=`*(self: EditorSpinSlider; value) = self.setReadOnly(value)

template flat*(self: EditorSpinSlider): untyped = self.isFlat()
template `flat=`*(self: EditorSpinSlider; value) = self.setFlat(value)

template hideSlider*(self: EditorSpinSlider): untyped = self.isHidingSlider()
template `hideSlider=`*(self: EditorSpinSlider; value) = self.setHideSlider(value)

template editingInteger*(self: EditorSpinSlider): untyped = self.isEditingInteger()
template `editingInteger=`*(self: EditorSpinSlider; value) = self.setEditingInteger(value)
