{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

proc setPickColor*(self: ColorPickerButton; color: Color): void =
  expandMethodBind(className ColorPickerButton, "set_pick_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getPickColor*(self: ColorPickerButton): Color =
  expandMethodBind(className ColorPickerButton, "get_pick_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc getPicker*(self: ColorPickerButton): ColorPicker =
  expandMethodBind(className ColorPickerButton, "get_picker", 331835996)
  var ret: encoded ColorPicker
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(ColorPicker)

proc getPopup*(self: ColorPickerButton): PopupPanel =
  expandMethodBind(className ColorPickerButton, "get_popup", 1322440207)
  var ret: encoded PopupPanel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PopupPanel)

proc setEditAlpha*(self: ColorPickerButton; show: bool): void =
  expandMethodBind(className ColorPickerButton, "set_edit_alpha", 2586408642)
  methodbind.ptrcall(self, [getPtr show])

proc isEditingAlpha*(self: ColorPickerButton): bool =
  expandMethodBind(className ColorPickerButton, "is_editing_alpha", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template color*(self: ColorPickerButton): untyped = self.getPickColor()
template `color=`*(self: ColorPickerButton; value) = self.setPickColor(value)

template editAlpha*(self: ColorPickerButton): untyped = self.isEditingAlpha()
template `editAlpha=`*(self: ColorPickerButton; value) = self.setEditAlpha(value)

const ColorPickerButton_vmap =
  Button.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ColorPickerButton]): Table[string, string] = ColorPickerButton_vmap

proc colorChanged*(self: ColorPickerButton; color: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("color_changed")
  let args = [color]
  self.emitSignal(signalname, args)

proc popupClosed*(self: ColorPickerButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("popup_closed")
  self.emitSignal(signalname)

proc pickerCreated*(self: ColorPickerButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("picker_created")
  self.emitSignal(signalname)