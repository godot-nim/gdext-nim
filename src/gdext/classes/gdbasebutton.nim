{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(BaseButton, Control)

method pressed*(self: BaseButton): void {.base.} = (discard)
proc registerVirtual_pressed*[T: BaseButton](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pressed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[BaseButton](p_instance).pressed()

method toggled*(self: BaseButton; toggledOn: bool): void {.base.} = (discard)
proc registerVirtual_toggled*[T: BaseButton](Self: typedesc[T]) =
  Self.vmethods[newStringName"_toggled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[BaseButton](p_instance).toggled(p_args[0].decode(bool))

proc setPressed*(self: BaseButton; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isPressed*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPressedNoSignal*(self: BaseButton; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_pressed_no_signal", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc isHovered*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_hovered", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setToggleMode*(self: BaseButton; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_toggle_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isToggleMode*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_toggle_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcutInTooltip*(self: BaseButton; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_shortcut_in_tooltip", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isShortcutInTooltipEnabled*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_shortcut_in_tooltip_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDisabled*(self: BaseButton; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc isDisabled*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setActionMode*(self: BaseButton; mode: BaseButton_ActionMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_action_mode", 1985162088)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getActionMode*(self: BaseButton): BaseButton_ActionMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "get_action_mode", 2589712189)
  methodbind.ptrcall(self, [], BaseButton_ActionMode)

proc setButtonMask*(self: BaseButton; mask: set[MouseButtonMask]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_button_mask", 3950145251)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getButtonMask*(self: BaseButton): set[MouseButtonMask] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "get_button_mask", 2512161324)
  methodbind.ptrcall(self, [], set[MouseButtonMask])

proc getDrawMode*(self: BaseButton): BaseButton_DrawMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "get_draw_mode", 2492721305)
  methodbind.ptrcall(self, [], BaseButton_DrawMode)

proc setKeepPressedOutside*(self: BaseButton; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_keep_pressed_outside", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isKeepPressedOutside*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_keep_pressed_outside", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcutFeedback*(self: BaseButton; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_shortcut_feedback", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isShortcutFeedback*(self: BaseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "is_shortcut_feedback", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcut*(self: BaseButton; shortcut: gdref Shortcut): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_shortcut", 857163497)
  methodbind.ptrcall(self, [getPtr shortcut], void)

proc getShortcut*(self: BaseButton): gdref Shortcut =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "get_shortcut", 3415666916)
  methodbind.ptrcall(self, [], gdref Shortcut)

proc setButtonGroup*(self: BaseButton; buttonGroup: gdref ButtonGroup): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "set_button_group", 1794463739)
  methodbind.ptrcall(self, [getPtr buttonGroup], void)

proc getButtonGroup*(self: BaseButton): gdref ButtonGroup =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BaseButton, "get_button_group", 281644053)
  methodbind.ptrcall(self, [], gdref ButtonGroup)

template disabled*(self: BaseButton): untyped = self.isDisabled()
template `disabled=`*(self: BaseButton; value) = self.setDisabled(value)

template toggleMode*(self: BaseButton): untyped = self.isToggleMode()
template `toggleMode=`*(self: BaseButton; value) = self.setToggleMode(value)

template buttonPressed*(self: BaseButton): untyped = self.isPressed()
template `buttonPressed=`*(self: BaseButton; value) = self.setPressed(value)

template actionMode*(self: BaseButton): untyped = self.getActionMode()
template `actionMode=`*(self: BaseButton; value) = self.setActionMode(value)

template buttonMask*(self: BaseButton): untyped = self.getButtonMask()
template `buttonMask=`*(self: BaseButton; value) = self.setButtonMask(value)

template keepPressedOutside*(self: BaseButton): untyped = self.isKeepPressedOutside()
template `keepPressedOutside=`*(self: BaseButton; value) = self.setKeepPressedOutside(value)

template buttonGroup*(self: BaseButton): untyped = self.getButtonGroup()
template `buttonGroup=`*(self: BaseButton; value) = self.setButtonGroup(value)

template shortcut*(self: BaseButton): untyped = self.getShortcut()
template `shortcut=`*(self: BaseButton; value) = self.setShortcut(value)

template shortcutFeedback*(self: BaseButton): untyped = self.isShortcutFeedback()
template `shortcutFeedback=`*(self: BaseButton; value) = self.setShortcutFeedback(value)

template shortcutInTooltip*(self: BaseButton): untyped = self.isShortcutInTooltipEnabled()
template `shortcutInTooltip=`*(self: BaseButton; value) = self.setShortcutInTooltip(value)
