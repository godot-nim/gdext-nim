{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

expandOnClassImported(ColorPickerButton, Button)

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

proc setEditIntensity*(self: ColorPickerButton; show: bool): void =
  expandMethodBind(className ColorPickerButton, "set_edit_intensity", 2586408642)
  methodbind.ptrcall(self, [getPtr show])

proc isEditingIntensity*(self: ColorPickerButton): bool =
  expandMethodBind(className ColorPickerButton, "is_editing_intensity", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template color*(self: ColorPickerButton): untyped = self.getPickColor()
template `color=`*(self: ColorPickerButton; value) = self.setPickColor(value)

template editAlpha*(self: ColorPickerButton): untyped = self.isEditingAlpha()
template `editAlpha=`*(self: ColorPickerButton; value) = self.setEditAlpha(value)

template editIntensity*(self: ColorPickerButton): untyped = self.isEditingIntensity()
template `editIntensity=`*(self: ColorPickerButton; value) = self.setEditIntensity(value)
