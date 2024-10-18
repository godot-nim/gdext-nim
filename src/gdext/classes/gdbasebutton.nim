{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method pressed*(self: BaseButton): void {.base.} = (discard)
proc pressed(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[BaseButton](p_instance).pressed()
template pressed_bind*(_: typedesc[BaseButton]): ClassCallVirtual = pressed

method toggled*(self: BaseButton; toggledOn: bool): void {.base.} = (discard)
proc toggled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[BaseButton](p_instance).toggled(p_args[0].decode(bool))
template toggled_bind*(_: typedesc[BaseButton]): ClassCallVirtual = toggled

proc setPressed*(self: BaseButton; pressed: bool): void =
  expandMethodBind(className BaseButton, "set_pressed", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPressed*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPressedNoSignal*(self: BaseButton; pressed: bool): void =
  expandMethodBind(className BaseButton, "set_pressed_no_signal", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHovered*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_hovered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setToggleMode*(self: BaseButton; enabled: bool): void =
  expandMethodBind(className BaseButton, "set_toggle_mode", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isToggleMode*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_toggle_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShortcutInTooltip*(self: BaseButton; enabled: bool): void =
  expandMethodBind(className BaseButton, "set_shortcut_in_tooltip", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShortcutInTooltipEnabled*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_shortcut_in_tooltip_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisabled*(self: BaseButton; disabled: bool): void =
  expandMethodBind(className BaseButton, "set_disabled", 2586408642)
  var `?param` = [getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDisabled*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setActionMode*(self: BaseButton; mode: BaseButton_ActionMode): void =
  expandMethodBind(className BaseButton, "set_action_mode", 1985162088)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActionMode*(self: BaseButton): BaseButton_ActionMode =
  expandMethodBind(className BaseButton, "get_action_mode", 2589712189)
  var ret: encoded BaseButton_ActionMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(BaseButton_ActionMode)

proc setButtonMask*(self: BaseButton; mask: set[MouseButtonMask]): void =
  expandMethodBind(className BaseButton, "set_button_mask", 3950145251)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getButtonMask*(self: BaseButton): set[MouseButtonMask] =
  expandMethodBind(className BaseButton, "get_button_mask", 2512161324)
  var ret: encoded set[MouseButtonMask]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[MouseButtonMask])

proc getDrawMode*(self: BaseButton): BaseButton_DrawMode =
  expandMethodBind(className BaseButton, "get_draw_mode", 2492721305)
  var ret: encoded BaseButton_DrawMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(BaseButton_DrawMode)

proc setKeepPressedOutside*(self: BaseButton; enabled: bool): void =
  expandMethodBind(className BaseButton, "set_keep_pressed_outside", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isKeepPressedOutside*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_keep_pressed_outside", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShortcutFeedback*(self: BaseButton; enabled: bool): void =
  expandMethodBind(className BaseButton, "set_shortcut_feedback", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShortcutFeedback*(self: BaseButton): bool =
  expandMethodBind(className BaseButton, "is_shortcut_feedback", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShortcut*(self: BaseButton; shortcut: gdref Shortcut): void =
  expandMethodBind(className BaseButton, "set_shortcut", 857163497)
  var `?param` = [getPtr shortcut]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShortcut*(self: BaseButton): gdref Shortcut =
  expandMethodBind(className BaseButton, "get_shortcut", 3415666916)
  var ret: encoded gdref Shortcut
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shortcut)

proc setButtonGroup*(self: BaseButton; buttonGroup: gdref ButtonGroup): void =
  expandMethodBind(className BaseButton, "set_button_group", 1794463739)
  var `?param` = [getPtr buttonGroup]
  methodbind.ptrcall(self, addr `?param`[0])

proc getButtonGroup*(self: BaseButton): gdref ButtonGroup =
  expandMethodBind(className BaseButton, "get_button_group", 281644053)
  var ret: encoded gdref ButtonGroup
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ButtonGroup)

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

const BaseButton_vmap =
  Control.vmap.concat toTable {
    "pressed" : "_pressed",
    "toggled" : "_toggled",
    }
template vmap*(_: typedesc[BaseButton]): Table[string, string] = BaseButton_vmap

proc pressed*(self: BaseButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pressed")
  self.emitSignal(signalname)

proc buttonUp*(self: BaseButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_up")
  self.emitSignal(signalname)

proc buttonDown*(self: BaseButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("button_down")
  self.emitSignal(signalname)

proc toggled*(self: BaseButton; toggledOn: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("toggled")
  let args = [toggledOn]
  self.emitSignal(signalname, args)