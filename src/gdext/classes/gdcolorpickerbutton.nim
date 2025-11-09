{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdbutton; export gdbutton

expandOnClassImported(ColorPickerButton, Button)

proc setPickColor*(self: ColorPickerButton; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "set_pick_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getPickColor*(self: ColorPickerButton): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "get_pick_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc getPicker*(self: ColorPickerButton): ColorPicker =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "get_picker", 331835996)
  methodbind.ptrcall(self, [], ColorPicker)

proc getPopup*(self: ColorPickerButton): PopupPanel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "get_popup", 1322440207)
  methodbind.ptrcall(self, [], PopupPanel)

proc setEditAlpha*(self: ColorPickerButton; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "set_edit_alpha", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isEditingAlpha*(self: ColorPickerButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "is_editing_alpha", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditIntensity*(self: ColorPickerButton; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "set_edit_intensity", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isEditingIntensity*(self: ColorPickerButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPickerButton, "is_editing_intensity", 36873697)
  methodbind.ptrcall(self, [], bool)

template color*(self: ColorPickerButton): untyped = self.getPickColor()
template `color=`*(self: ColorPickerButton; value) = self.setPickColor(value)

template editAlpha*(self: ColorPickerButton): untyped = self.isEditingAlpha()
template `editAlpha=`*(self: ColorPickerButton; value) = self.setEditAlpha(value)

template editIntensity*(self: ColorPickerButton): untyped = self.isEditingIntensity()
template `editIntensity=`*(self: ColorPickerButton; value) = self.setEditIntensity(value)
