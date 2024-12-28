{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

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

proc setHideSlider*(self: EditorSpinSlider; hideSlider: bool): void =
  expandMethodBind(className EditorSpinSlider, "set_hide_slider", 2586408642)
  methodbind.ptrcall(self, [getPtr hideSlider])

proc isHidingSlider*(self: EditorSpinSlider): bool =
  expandMethodBind(className EditorSpinSlider, "is_hiding_slider", 36873697)
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

template hideSlider*(self: EditorSpinSlider): untyped = self.isHidingSlider()
template `hideSlider=`*(self: EditorSpinSlider; value) = self.setHideSlider(value)

const EditorSpinSlider_vmap =
  Range.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorSpinSlider]): Table[string, string] = EditorSpinSlider_vmap

proc grabbed*(self: EditorSpinSlider): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("grabbed")
  self.emitSignal(signalname)

proc ungrabbed*(self: EditorSpinSlider): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("ungrabbed")
  self.emitSignal(signalname)

proc valueFocusEntered*(self: EditorSpinSlider): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("value_focus_entered")
  self.emitSignal(signalname)

proc valueFocusExited*(self: EditorSpinSlider): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("value_focus_exited")
  self.emitSignal(signalname)