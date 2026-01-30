{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(EditorSpinSlider, Range)

proc setLabel*(self: EditorSpinSlider; label: String): void =
  expandMethodBind(className EditorSpinSlider, "set_label", 83702148)
  methodbind.ptrcall(self, [getPtr label])

proc getLabel*(self: EditorSpinSlider): String =
  expandMethodBind(className EditorSpinSlider, "get_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setSuffix*(self: EditorSpinSlider; suffix: String): void =
  expandMethodBind(className EditorSpinSlider, "set_suffix", 83702148)
  methodbind.ptrcall(self, [getPtr suffix])

proc getSuffix*(self: EditorSpinSlider): String =
  expandMethodBind(className EditorSpinSlider, "get_suffix", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setReadOnly*(self: EditorSpinSlider; readOnly: bool): void =
  expandMethodBind(className EditorSpinSlider, "set_read_only", 2586408642)
  methodbind.ptrcall(self, [getPtr readOnly])

proc isReadOnly*(self: EditorSpinSlider): bool =
  expandMethodBind(className EditorSpinSlider, "is_read_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFlat*(self: EditorSpinSlider; flat: bool): void =
  expandMethodBind(className EditorSpinSlider, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr flat])

proc isFlat*(self: EditorSpinSlider): bool =
  expandMethodBind(className EditorSpinSlider, "is_flat", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setControlState*(self: EditorSpinSlider; state: EditorSpinSlider_ControlState): void =
  expandMethodBind(className EditorSpinSlider, "set_control_state", 1324557109)
  methodbind.ptrcall(self, [getPtr state])

proc getControlState*(self: EditorSpinSlider): EditorSpinSlider_ControlState =
  expandMethodBind(className EditorSpinSlider, "get_control_state", 3406006200)
  var ret: encoded EditorSpinSlider_ControlState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorSpinSlider_ControlState)

proc setHideSlider*(self: EditorSpinSlider; hideSlider: bool): void =
  expandMethodBind(className EditorSpinSlider, "set_hide_slider", 2586408642)
  methodbind.ptrcall(self, [getPtr hideSlider])

proc isHidingSlider*(self: EditorSpinSlider): bool =
  expandMethodBind(className EditorSpinSlider, "is_hiding_slider", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEditingInteger*(self: EditorSpinSlider; editingInteger: bool): void =
  expandMethodBind(className EditorSpinSlider, "set_editing_integer", 2586408642)
  methodbind.ptrcall(self, [getPtr editingInteger])

proc isEditingInteger*(self: EditorSpinSlider): bool =
  expandMethodBind(className EditorSpinSlider, "is_editing_integer", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template label*(self: EditorSpinSlider): untyped = self.getLabel()
template `label=`*(self: EditorSpinSlider; value) = self.setLabel(value)

template suffix*(self: EditorSpinSlider): untyped = self.getSuffix()
template `suffix=`*(self: EditorSpinSlider; value) = self.setSuffix(value)

template readOnly*(self: EditorSpinSlider): untyped = self.isReadOnly()
template `readOnly=`*(self: EditorSpinSlider; value) = self.setReadOnly(value)

template flat*(self: EditorSpinSlider): untyped = self.isFlat()
template `flat=`*(self: EditorSpinSlider; value) = self.setFlat(value)

template controlState*(self: EditorSpinSlider): untyped = self.getControlState()
template `controlState=`*(self: EditorSpinSlider; value) = self.setControlState(value)

template hideSlider*(self: EditorSpinSlider): untyped = self.isHidingSlider()
template `hideSlider=`*(self: EditorSpinSlider; value) = self.setHideSlider(value)

template editingInteger*(self: EditorSpinSlider): untyped = self.isEditingInteger()
template `editingInteger=`*(self: EditorSpinSlider; value) = self.setEditingInteger(value)
