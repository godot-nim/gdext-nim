{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(SpinBox, Range)

proc setHorizontalAlignment*(self: SpinBox; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: SpinBox): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc setSuffix*(self: SpinBox; suffix: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix], void)

proc getSuffix*(self: SpinBox): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_suffix", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPrefix*(self: SpinBox; prefix: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_prefix", 83702148)
  methodbind.ptrcall(self, [getPtr prefix], void)

proc getPrefix*(self: SpinBox): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_prefix", 201670096)
  methodbind.ptrcall(self, [], String)

proc setEditable*(self: SpinBox; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setCustomArrowStep*(self: SpinBox; arrowStep: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_custom_arrow_step", 373806689)
  methodbind.ptrcall(self, [getPtr arrowStep], void)

proc getCustomArrowStep*(self: SpinBox): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_custom_arrow_step", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc isEditable*(self: SpinBox): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "is_editable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateOnTextChanged*(self: SpinBox; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_update_on_text_changed", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getUpdateOnTextChanged*(self: SpinBox): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_update_on_text_changed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectAllOnFocus*(self: SpinBox; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "set_select_all_on_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSelectAllOnFocus*(self: SpinBox): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "is_select_all_on_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc apply*(self: SpinBox): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "apply", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getLineEdit*(self: SpinBox): LineEdit =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpinBox, "get_line_edit", 4071694264)
  methodbind.ptrcall(self, [], LineEdit)

template alignment*(self: SpinBox): untyped = self.getHorizontalAlignment()
template `alignment=`*(self: SpinBox; value) = self.setHorizontalAlignment(value)

template editable*(self: SpinBox): untyped = self.isEditable()
template `editable=`*(self: SpinBox; value) = self.setEditable(value)

template updateOnTextChanged*(self: SpinBox): untyped = self.getUpdateOnTextChanged()
template `updateOnTextChanged=`*(self: SpinBox; value) = self.setUpdateOnTextChanged(value)

template prefix*(self: SpinBox): untyped = self.getPrefix()
template `prefix=`*(self: SpinBox; value) = self.setPrefix(value)

template suffix*(self: SpinBox): untyped = self.getSuffix()
template `suffix=`*(self: SpinBox; value) = self.setSuffix(value)

template customArrowStep*(self: SpinBox): untyped = self.getCustomArrowStep()
template `customArrowStep=`*(self: SpinBox; value) = self.setCustomArrowStep(value)

template selectAllOnFocus*(self: SpinBox): untyped = self.isSelectAllOnFocus()
template `selectAllOnFocus=`*(self: SpinBox; value) = self.setSelectAllOnFocus(value)
