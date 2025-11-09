{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

expandOnClassImported(ColorPicker, VBoxContainer)

proc setPickColor*(self: ColorPicker; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_pick_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getPickColor*(self: ColorPicker): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "get_pick_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setDeferredMode*(self: ColorPicker; mode: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_deferred_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr mode], void)

proc isDeferredMode*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "is_deferred_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setColorMode*(self: ColorPicker; colorMode: ColorPicker_ColorModeType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_color_mode", 1579114136)
  methodbind.ptrcall(self, [getPtr colorMode], void)

proc getColorMode*(self: ColorPicker): ColorPicker_ColorModeType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "get_color_mode", 392907674)
  methodbind.ptrcall(self, [], ColorPicker_ColorModeType)

proc setEditAlpha*(self: ColorPicker; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_edit_alpha", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isEditingAlpha*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "is_editing_alpha", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditIntensity*(self: ColorPicker; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_edit_intensity", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isEditingIntensity*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "is_editing_intensity", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCanAddSwatches*(self: ColorPicker; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_can_add_swatches", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc areSwatchesEnabled*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "are_swatches_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPresetsVisible*(self: ColorPicker; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_presets_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc arePresetsVisible*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "are_presets_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setModesVisible*(self: ColorPicker; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_modes_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc areModesVisible*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "are_modes_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSamplerVisible*(self: ColorPicker; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_sampler_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isSamplerVisible*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "is_sampler_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSlidersVisible*(self: ColorPicker; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_sliders_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc areSlidersVisible*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "are_sliders_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHexVisible*(self: ColorPicker; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_hex_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isHexVisible*(self: ColorPicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "is_hex_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addPreset*(self: ColorPicker; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "add_preset", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc erasePreset*(self: ColorPicker; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "erase_preset", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getPresets*(self: ColorPicker): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "get_presets", 1392750486)
  methodbind.ptrcall(self, [], PackedColorArray)

proc addRecentPreset*(self: ColorPicker; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "add_recent_preset", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc eraseRecentPreset*(self: ColorPicker; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "erase_recent_preset", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getRecentPresets*(self: ColorPicker): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "get_recent_presets", 1392750486)
  methodbind.ptrcall(self, [], PackedColorArray)

proc setPickerShape*(self: ColorPicker; shape: ColorPicker_PickerShapeType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "set_picker_shape", 3981373861)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getPickerShape*(self: ColorPicker): ColorPicker_PickerShapeType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ColorPicker, "get_picker_shape", 1143229889)
  methodbind.ptrcall(self, [], ColorPicker_PickerShapeType)

template color*(self: ColorPicker): untyped = self.getPickColor()
template `color=`*(self: ColorPicker; value) = self.setPickColor(value)

template editAlpha*(self: ColorPicker): untyped = self.isEditingAlpha()
template `editAlpha=`*(self: ColorPicker; value) = self.setEditAlpha(value)

template editIntensity*(self: ColorPicker): untyped = self.isEditingIntensity()
template `editIntensity=`*(self: ColorPicker; value) = self.setEditIntensity(value)

template colorMode*(self: ColorPicker): untyped = self.getColorMode()
template `colorMode=`*(self: ColorPicker; value) = self.setColorMode(value)

template deferredMode*(self: ColorPicker): untyped = self.isDeferredMode()
template `deferredMode=`*(self: ColorPicker; value) = self.setDeferredMode(value)

template pickerShape*(self: ColorPicker): untyped = self.getPickerShape()
template `pickerShape=`*(self: ColorPicker; value) = self.setPickerShape(value)

template canAddSwatches*(self: ColorPicker): untyped = self.areSwatchesEnabled()
template `canAddSwatches=`*(self: ColorPicker; value) = self.setCanAddSwatches(value)

template samplerVisible*(self: ColorPicker): untyped = self.isSamplerVisible()
template `samplerVisible=`*(self: ColorPicker; value) = self.setSamplerVisible(value)

template colorModesVisible*(self: ColorPicker): untyped = self.areModesVisible()
template `colorModesVisible=`*(self: ColorPicker; value) = self.setModesVisible(value)

template slidersVisible*(self: ColorPicker): untyped = self.areSlidersVisible()
template `slidersVisible=`*(self: ColorPicker; value) = self.setSlidersVisible(value)

template hexVisible*(self: ColorPicker): untyped = self.isHexVisible()
template `hexVisible=`*(self: ColorPicker; value) = self.setHexVisible(value)

template presetsVisible*(self: ColorPicker): untyped = self.arePresetsVisible()
template `presetsVisible=`*(self: ColorPicker; value) = self.setPresetsVisible(value)
