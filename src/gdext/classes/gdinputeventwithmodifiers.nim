{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

proc setCommandOrControlAutoremap*(self: InputEventWithModifiers; enable: bool): void =
  expandMethodBind(className InputEventWithModifiers, "set_command_or_control_autoremap", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCommandOrControlAutoremap*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_command_or_control_autoremap", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isCommandOrControlPressed*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_command_or_control_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAltPressed*(self: InputEventWithModifiers; pressed: bool): void =
  expandMethodBind(className InputEventWithModifiers, "set_alt_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc isAltPressed*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_alt_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShiftPressed*(self: InputEventWithModifiers; pressed: bool): void =
  expandMethodBind(className InputEventWithModifiers, "set_shift_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc isShiftPressed*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_shift_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCtrlPressed*(self: InputEventWithModifiers; pressed: bool): void =
  expandMethodBind(className InputEventWithModifiers, "set_ctrl_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc isCtrlPressed*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_ctrl_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMetaPressed*(self: InputEventWithModifiers; pressed: bool): void =
  expandMethodBind(className InputEventWithModifiers, "set_meta_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc isMetaPressed*(self: InputEventWithModifiers): bool =
  expandMethodBind(className InputEventWithModifiers, "is_meta_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getModifiersMask*(self: InputEventWithModifiers): set[KeyModifierMask] =
  expandMethodBind(className InputEventWithModifiers, "get_modifiers_mask", 1258259499)
  var ret: encoded set[KeyModifierMask]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[KeyModifierMask])

template commandOrControlAutoremap*(self: InputEventWithModifiers): untyped = self.isCommandOrControlAutoremap()
template `commandOrControlAutoremap=`*(self: InputEventWithModifiers; value) = self.setCommandOrControlAutoremap(value)

template altPressed*(self: InputEventWithModifiers): untyped = self.isAltPressed()
template `altPressed=`*(self: InputEventWithModifiers; value) = self.setAltPressed(value)

template shiftPressed*(self: InputEventWithModifiers): untyped = self.isShiftPressed()
template `shiftPressed=`*(self: InputEventWithModifiers; value) = self.setShiftPressed(value)

template ctrlPressed*(self: InputEventWithModifiers): untyped = self.isCtrlPressed()
template `ctrlPressed=`*(self: InputEventWithModifiers; value) = self.setCtrlPressed(value)

template metaPressed*(self: InputEventWithModifiers): untyped = self.isMetaPressed()
template `metaPressed=`*(self: InputEventWithModifiers; value) = self.setMetaPressed(value)

const InputEventWithModifiers_vmap =
  InputEventFromWindow.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventWithModifiers]): Table[string, string] = InputEventWithModifiers_vmap