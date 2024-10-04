{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

proc setPickColor*(self: ColorPicker; color: Color): void =
  expandMethodBind(className ColorPicker, "set_pick_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPickColor*(self: ColorPicker): Color =
  expandMethodBind(className ColorPicker, "get_pick_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setDeferredMode*(self: ColorPicker; mode: bool): void =
  expandMethodBind(className ColorPicker, "set_deferred_mode", 2586408642)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeferredMode*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "is_deferred_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setColorMode*(self: ColorPicker; colorMode: ColorPicker_ColorModeType): void =
  expandMethodBind(className ColorPicker, "set_color_mode", 1579114136)
  var `?param` = [getPtr colorMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorMode*(self: ColorPicker): ColorPicker_ColorModeType =
  expandMethodBind(className ColorPicker, "get_color_mode", 392907674)
  var ret: encoded ColorPicker_ColorModeType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ColorPicker_ColorModeType)

proc setEditAlpha*(self: ColorPicker; show: bool): void =
  expandMethodBind(className ColorPicker, "set_edit_alpha", 2586408642)
  var `?param` = [getPtr show]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditingAlpha*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "is_editing_alpha", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCanAddSwatches*(self: ColorPicker; enabled: bool): void =
  expandMethodBind(className ColorPicker, "set_can_add_swatches", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc areSwatchesEnabled*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "are_swatches_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPresetsVisible*(self: ColorPicker; visible: bool): void =
  expandMethodBind(className ColorPicker, "set_presets_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc arePresetsVisible*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "are_presets_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setModesVisible*(self: ColorPicker; visible: bool): void =
  expandMethodBind(className ColorPicker, "set_modes_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc areModesVisible*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "are_modes_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSamplerVisible*(self: ColorPicker; visible: bool): void =
  expandMethodBind(className ColorPicker, "set_sampler_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSamplerVisible*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "is_sampler_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSlidersVisible*(self: ColorPicker; visible: bool): void =
  expandMethodBind(className ColorPicker, "set_sliders_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc areSlidersVisible*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "are_sliders_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHexVisible*(self: ColorPicker; visible: bool): void =
  expandMethodBind(className ColorPicker, "set_hex_visible", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHexVisible*(self: ColorPicker): bool =
  expandMethodBind(className ColorPicker, "is_hex_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addPreset*(self: ColorPicker; color: Color): void =
  expandMethodBind(className ColorPicker, "add_preset", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc erasePreset*(self: ColorPicker; color: Color): void =
  expandMethodBind(className ColorPicker, "erase_preset", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPresets*(self: ColorPicker): PackedColorArray =
  expandMethodBind(className ColorPicker, "get_presets", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc addRecentPreset*(self: ColorPicker; color: Color): void =
  expandMethodBind(className ColorPicker, "add_recent_preset", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc eraseRecentPreset*(self: ColorPicker; color: Color): void =
  expandMethodBind(className ColorPicker, "erase_recent_preset", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRecentPresets*(self: ColorPicker): PackedColorArray =
  expandMethodBind(className ColorPicker, "get_recent_presets", 1392750486)
  var ret: encoded PackedColorArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedColorArray)

proc setPickerShape*(self: ColorPicker; shape: ColorPicker_PickerShapeType): void =
  expandMethodBind(className ColorPicker, "set_picker_shape", 3981373861)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPickerShape*(self: ColorPicker): ColorPicker_PickerShapeType =
  expandMethodBind(className ColorPicker, "get_picker_shape", 1143229889)
  var ret: encoded ColorPicker_PickerShapeType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ColorPicker_PickerShapeType)

template color*(self: ColorPicker): untyped = self.getPickColor()
template `color=`*(self: ColorPicker; value) = self.setPickColor(value)

template editAlpha*(self: ColorPicker): untyped = self.isEditingAlpha()
template `editAlpha=`*(self: ColorPicker; value) = self.setEditAlpha(value)

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

const ColorPicker_vmap =
  VBoxContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ColorPicker]): Table[string, string] = ColorPicker_vmap

proc colorChanged*(self: ColorPicker; color: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("color_changed")
  let args = [color]
  self.emitSignal(signalname, args)

proc presetAdded*(self: ColorPicker; color: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("preset_added")
  let args = [color]
  self.emitSignal(signalname, args)

proc presetRemoved*(self: ColorPicker; color: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("preset_removed")
  let args = [color]
  self.emitSignal(signalname, args)