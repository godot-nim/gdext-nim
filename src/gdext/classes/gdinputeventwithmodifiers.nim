{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventfromwindow; export gdinputeventfromwindow

expandOnClassImported(InputEventWithModifiers, InputEventFromWindow)

proc setCommandOrControlAutoremap*(self: InputEventWithModifiers; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "set_command_or_control_autoremap", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCommandOrControlAutoremap*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_command_or_control_autoremap", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isCommandOrControlPressed*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_command_or_control_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAltPressed*(self: InputEventWithModifiers; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "set_alt_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isAltPressed*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_alt_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShiftPressed*(self: InputEventWithModifiers; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "set_shift_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isShiftPressed*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_shift_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCtrlPressed*(self: InputEventWithModifiers; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "set_ctrl_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isCtrlPressed*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_ctrl_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMetaPressed*(self: InputEventWithModifiers; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "set_meta_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isMetaPressed*(self: InputEventWithModifiers): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "is_meta_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getModifiersMask*(self: InputEventWithModifiers): set[KeyModifierMask] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventWithModifiers, "get_modifiers_mask", 1258259499)
  methodbind.ptrcall(self, [], set[KeyModifierMask])

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
