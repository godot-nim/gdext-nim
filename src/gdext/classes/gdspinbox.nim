{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

proc setHorizontalAlignment*(self: SpinBox; alignment: HorizontalAlignment): void =
  expandMethodBind(className SpinBox, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment])

proc getHorizontalAlignment*(self: SpinBox): HorizontalAlignment =
  expandMethodBind(className SpinBox, "get_horizontal_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc setSuffix*(self: SpinBox; suffix: String): void =
  expandMethodBind(className SpinBox, "set_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix])

proc getSuffix*(self: SpinBox): String =
  expandMethodBind(className SpinBox, "get_suffix", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setPrefix*(self: SpinBox; prefix: String): void =
  expandMethodBind(className SpinBox, "set_prefix", 83702148)
  methodbind.ptrcall(self, [getPtr prefix])

proc getPrefix*(self: SpinBox): String =
  expandMethodBind(className SpinBox, "get_prefix", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setEditable*(self: SpinBox; enabled: bool): void =
  expandMethodBind(className SpinBox, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc setCustomArrowStep*(self: SpinBox; arrowStep: float64): void =
  expandMethodBind(className SpinBox, "set_custom_arrow_step", 373806689)
  methodbind.ptrcall(self, [getPtr arrowStep])

proc getCustomArrowStep*(self: SpinBox): float64 =
  expandMethodBind(className SpinBox, "get_custom_arrow_step", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc isEditable*(self: SpinBox): bool =
  expandMethodBind(className SpinBox, "is_editable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUpdateOnTextChanged*(self: SpinBox; enabled: bool): void =
  expandMethodBind(className SpinBox, "set_update_on_text_changed", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getUpdateOnTextChanged*(self: SpinBox): bool =
  expandMethodBind(className SpinBox, "get_update_on_text_changed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSelectAllOnFocus*(self: SpinBox; enabled: bool): void =
  expandMethodBind(className SpinBox, "set_select_all_on_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isSelectAllOnFocus*(self: SpinBox): bool =
  expandMethodBind(className SpinBox, "is_select_all_on_focus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc apply*(self: SpinBox): void =
  expandMethodBind(className SpinBox, "apply", 3218959716)
  methodbind.ptrcall(self, [])

proc getLineEdit*(self: SpinBox): LineEdit =
  expandMethodBind(className SpinBox, "get_line_edit", 4071694264)
  var ret: encoded LineEdit
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(LineEdit)

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

const SpinBox_vmap =
  Range.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpinBox]): Table[string, string] = SpinBox_vmap