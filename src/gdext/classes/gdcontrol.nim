{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcanvasitem; export gdcanvasitem

method hasPoint*(self: Control; point: Vector2): bool {.base.} = (discard)
proc hasPoint(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).hasPoint(p_args[0].decode(Vector2)).encode(r_ret)
template hasPoint_bind*(_: typedesc[Control]): ClassCallVirtual = hasPoint

method structuredTextParser*(self: Control; args: Array; text: String): TypedArray[Vector3i] {.base.} = (discard)
proc structuredTextParser(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).structuredTextParser(p_args[0].decode(Array), p_args[1].decode(String)).encode(r_ret)
template structuredTextParser_bind*(_: typedesc[Control]): ClassCallVirtual = structuredTextParser

method getMinimumSize*(self: Control): Vector2 {.base.} = (discard)
proc getMinimumSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).getMinimumSize().encode(r_ret)
template getMinimumSize_bind*(_: typedesc[Control]): ClassCallVirtual = getMinimumSize

method getTooltip*(self: Control; atPosition: Vector2): String {.base.} = (discard)
proc getTooltip(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).getTooltip(p_args[0].decode(Vector2)).encode(r_ret)
template getTooltip_bind*(_: typedesc[Control]): ClassCallVirtual = getTooltip

method getDragData*(self: Control; atPosition: Vector2): Variant {.base.} = (discard)
proc getDragData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).getDragData(p_args[0].decode(Vector2)).encode(r_ret)
template getDragData_bind*(_: typedesc[Control]): ClassCallVirtual = getDragData

method canDropData*(self: Control; atPosition: Vector2; data: Variant): bool {.base.} = (discard)
proc canDropData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).canDropData(p_args[0].decode(Vector2), p_args[1].decode(Variant)).encode(r_ret)
template canDropData_bind*(_: typedesc[Control]): ClassCallVirtual = canDropData

method dropData*(self: Control; atPosition: Vector2; data: Variant): void {.base.} = (discard)
proc dropData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).dropData(p_args[0].decode(Vector2), p_args[1].decode(Variant))
template dropData_bind*(_: typedesc[Control]): ClassCallVirtual = dropData

method makeCustomTooltip*(self: Control; forText: String): Object {.base.} = (discard)
proc makeCustomTooltip(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).makeCustomTooltip(p_args[0].decode(String)).encode(r_ret)
template makeCustomTooltip_bind*(_: typedesc[Control]): ClassCallVirtual = makeCustomTooltip

method guiInput*(self: Control; event: gdref InputEvent): void {.base.} = (discard)
proc guiInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Control](p_instance).guiInput(p_args[0].decode(gdref InputEvent))
template guiInput_bind*(_: typedesc[Control]): ClassCallVirtual = guiInput

proc acceptEvent*(self: Control): void =
  expandMethodBind(className Control, "accept_event", 3218959716)
  methodbind.ptrcall(self, nil)

proc getMinimumSize*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_minimum_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getCombinedMinimumSize*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_combined_minimum_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setAnchorsPreset*(self: Control; preset: Control_LayoutPreset; keepOffsets: bool = false): void =
  expandMethodBind(className Control, "set_anchors_preset", 509135270)
  var `?param` = [getPtr preset, getPtr keepOffsets]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOffsetsPreset*(self: Control; preset: Control_LayoutPreset; resizeMode: Control_LayoutPresetMode = presetModeMinsize; margin: int32 = 0): void =
  expandMethodBind(className Control, "set_offsets_preset", 3724524307)
  var `?param` = [getPtr preset, getPtr resizeMode, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAnchorsAndOffsetsPreset*(self: Control; preset: Control_LayoutPreset; resizeMode: Control_LayoutPresetMode = presetModeMinsize; margin: int32 = 0): void =
  expandMethodBind(className Control, "set_anchors_and_offsets_preset", 3724524307)
  var `?param` = [getPtr preset, getPtr resizeMode, getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAnchor*(self: Control; side: Side; anchor: Float; keepOffset: bool = false; pushOppositeAnchor: bool = true): void =
  expandMethodBind(className Control, "set_anchor", 2302782885)
  var `?param` = [getPtr side, getPtr anchor, getPtr keepOffset, getPtr pushOppositeAnchor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAnchor*(self: Control; side: Side): Float =
  expandMethodBind(className Control, "get_anchor", 2869120046)
  var `?param` = [getPtr side]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setOffset*(self: Control; side: Side; offset: Float): void =
  expandMethodBind(className Control, "set_offset", 4290182280)
  var `?param` = [getPtr side, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: Control; offset: Side): Float =
  expandMethodBind(className Control, "get_offset", 2869120046)
  var `?param` = [getPtr offset]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setAnchorAndOffset*(self: Control; side: Side; anchor: Float; offset: Float; pushOppositeAnchor: bool = false): void =
  expandMethodBind(className Control, "set_anchor_and_offset", 4031722181)
  var `?param` = [getPtr side, getPtr anchor, getPtr offset, getPtr pushOppositeAnchor]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBegin*(self: Control; position: Vector2): void =
  expandMethodBind(className Control, "set_begin", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEnd*(self: Control; position: Vector2): void =
  expandMethodBind(className Control, "set_end", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPosition*(self: Control; position: Vector2; keepOffsets: bool = false): void =
  expandMethodBind(className Control, "set_position", 2436320129)
  var `?param` = [getPtr position, getPtr keepOffsets]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSize*(self: Control; size: Vector2; keepOffsets: bool = false): void =
  expandMethodBind(className Control, "set_size", 2436320129)
  var `?param` = [getPtr size, getPtr keepOffsets]
  methodbind.ptrcall(self, addr `?param`[0])

proc resetSize*(self: Control): void =
  expandMethodBind(className Control, "reset_size", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCustomMinimumSize*(self: Control; size: Vector2): void =
  expandMethodBind(className Control, "set_custom_minimum_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc setGlobalPosition*(self: Control; position: Vector2; keepOffsets: bool = false): void =
  expandMethodBind(className Control, "set_global_position", 2436320129)
  var `?param` = [getPtr position, getPtr keepOffsets]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRotation*(self: Control; radians: Float): void =
  expandMethodBind(className Control, "set_rotation", 373806689)
  var `?param` = [getPtr radians]
  methodbind.ptrcall(self, addr `?param`[0])

proc setRotationDegrees*(self: Control; degrees: Float): void =
  expandMethodBind(className Control, "set_rotation_degrees", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc setScale*(self: Control; scale: Vector2): void =
  expandMethodBind(className Control, "set_scale", 743155724)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPivotOffset*(self: Control; pivotOffset: Vector2): void =
  expandMethodBind(className Control, "set_pivot_offset", 743155724)
  var `?param` = [getPtr pivotOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBegin*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_begin", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getEnd*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_end", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getPosition*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getSize*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getRotation*(self: Control): Float =
  expandMethodBind(className Control, "get_rotation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getRotationDegrees*(self: Control): Float =
  expandMethodBind(className Control, "get_rotation_degrees", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getScale*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getPivotOffset*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_pivot_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getCustomMinimumSize*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_custom_minimum_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getParentAreaSize*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_parent_area_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getGlobalPosition*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_global_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getScreenPosition*(self: Control): Vector2 =
  expandMethodBind(className Control, "get_screen_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getRect*(self: Control): Rect2 =
  expandMethodBind(className Control, "get_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc getGlobalRect*(self: Control): Rect2 =
  expandMethodBind(className Control, "get_global_rect", 1639390495)
  var ret: encoded Rect2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2)

proc setFocusMode*(self: Control; mode: Control_FocusMode): void =
  expandMethodBind(className Control, "set_focus_mode", 3232914922)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusMode*(self: Control): Control_FocusMode =
  expandMethodBind(className Control, "get_focus_mode", 2132829277)
  var ret: encoded Control_FocusMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_FocusMode)

proc hasFocus*(self: Control): bool =
  expandMethodBind(className Control, "has_focus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc grabFocus*(self: Control): void =
  expandMethodBind(className Control, "grab_focus", 3218959716)
  methodbind.ptrcall(self, nil)

proc releaseFocus*(self: Control): void =
  expandMethodBind(className Control, "release_focus", 3218959716)
  methodbind.ptrcall(self, nil)

proc findPrevValidFocus*(self: Control): Control =
  expandMethodBind(className Control, "find_prev_valid_focus", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc findNextValidFocus*(self: Control): Control =
  expandMethodBind(className Control, "find_next_valid_focus", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc findValidFocusNeighbor*(self: Control; side: Side): Control =
  expandMethodBind(className Control, "find_valid_focus_neighbor", 1543910170)
  var `?param` = [getPtr side]
  var ret: encoded Control
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control)

proc setHSizeFlags*(self: Control; flags: set[Control_SizeFlags]): void =
  expandMethodBind(className Control, "set_h_size_flags", 394851643)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHSizeFlags*(self: Control): set[Control_SizeFlags] =
  expandMethodBind(className Control, "get_h_size_flags", 3781367401)
  var ret: encoded set[Control_SizeFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[Control_SizeFlags])

proc setStretchRatio*(self: Control; ratio: Float): void =
  expandMethodBind(className Control, "set_stretch_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStretchRatio*(self: Control): Float =
  expandMethodBind(className Control, "get_stretch_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVSizeFlags*(self: Control; flags: set[Control_SizeFlags]): void =
  expandMethodBind(className Control, "set_v_size_flags", 394851643)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVSizeFlags*(self: Control): set[Control_SizeFlags] =
  expandMethodBind(className Control, "get_v_size_flags", 3781367401)
  var ret: encoded set[Control_SizeFlags]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[Control_SizeFlags])

proc setTheme*(self: Control; theme: gdref Theme): void =
  expandMethodBind(className Control, "set_theme", 2326690814)
  var `?param` = [getPtr theme]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTheme*(self: Control): gdref Theme =
  expandMethodBind(className Control, "get_theme", 3846893731)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Theme)

proc setThemeTypeVariation*(self: Control; themeType: StringName): void =
  expandMethodBind(className Control, "set_theme_type_variation", 3304788590)
  var `?param` = [getPtr themeType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getThemeTypeVariation*(self: Control): StringName =
  expandMethodBind(className Control, "get_theme_type_variation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc beginBulkThemeOverride*(self: Control): void =
  expandMethodBind(className Control, "begin_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, nil)

proc endBulkThemeOverride*(self: Control): void =
  expandMethodBind(className Control, "end_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, nil)

proc addThemeIconOverride*(self: Control; name: StringName; texture: gdref Texture2D): void =
  expandMethodBind(className Control, "add_theme_icon_override", 1373065600)
  var `?param` = [getPtr name, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc addThemeStyleboxOverride*(self: Control; name: StringName; stylebox: gdref StyleBox): void =
  expandMethodBind(className Control, "add_theme_stylebox_override", 4188838905)
  var `?param` = [getPtr name, getPtr stylebox]
  methodbind.ptrcall(self, addr `?param`[0])

proc addThemeFontOverride*(self: Control; name: StringName; font: gdref Font): void =
  expandMethodBind(className Control, "add_theme_font_override", 3518018674)
  var `?param` = [getPtr name, getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

proc addThemeFontSizeOverride*(self: Control; name: StringName; fontSize: int32): void =
  expandMethodBind(className Control, "add_theme_font_size_override", 2415702435)
  var `?param` = [getPtr name, getPtr fontSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc addThemeColorOverride*(self: Control; name: StringName; color: Color): void =
  expandMethodBind(className Control, "add_theme_color_override", 4260178595)
  var `?param` = [getPtr name, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc addThemeConstantOverride*(self: Control; name: StringName; constant: int32): void =
  expandMethodBind(className Control, "add_theme_constant_override", 2415702435)
  var `?param` = [getPtr name, getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeIconOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_icon_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeStyleboxOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_stylebox_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeFontOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_font_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeFontSizeOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_font_size_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeColorOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_color_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeThemeConstantOverride*(self: Control; name: StringName): void =
  expandMethodBind(className Control, "remove_theme_constant_override", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getThemeIcon*(self: Control; name: StringName; themeType: StringName = stringName ""): gdref Texture2D =
  expandMethodBind(className Control, "get_theme_icon", 2336455395)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getThemeStylebox*(self: Control; name: StringName; themeType: StringName = stringName ""): gdref StyleBox =
  expandMethodBind(className Control, "get_theme_stylebox", 2759935355)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded gdref StyleBox
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref StyleBox)

proc getThemeFont*(self: Control; name: StringName; themeType: StringName = stringName ""): gdref Font =
  expandMethodBind(className Control, "get_theme_font", 387378635)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded gdref Font
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Font)

proc getThemeFontSize*(self: Control; name: StringName; themeType: StringName = stringName ""): int32 =
  expandMethodBind(className Control, "get_theme_font_size", 229578101)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getThemeColor*(self: Control; name: StringName; themeType: StringName = stringName ""): Color =
  expandMethodBind(className Control, "get_theme_color", 2377051548)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getThemeConstant*(self: Control; name: StringName; themeType: StringName = stringName ""): int32 =
  expandMethodBind(className Control, "get_theme_constant", 229578101)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc hasThemeIconOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_icon_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeStyleboxOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_stylebox_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_font_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontSizeOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_font_size_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeColorOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_color_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeConstantOverride*(self: Control; name: StringName): bool =
  expandMethodBind(className Control, "has_theme_constant_override", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeIcon*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_icon", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeStylebox*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_stylebox", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFont*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_font", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontSize*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_font_size", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeColor*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_color", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeConstant*(self: Control; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Control, "has_theme_constant", 1187511791)
  var `?param` = [getPtr name, getPtr themeType]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getThemeDefaultBaseScale*(self: Control): Float =
  expandMethodBind(className Control, "get_theme_default_base_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getThemeDefaultFont*(self: Control): gdref Font =
  expandMethodBind(className Control, "get_theme_default_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Font)

proc getThemeDefaultFontSize*(self: Control): int32 =
  expandMethodBind(className Control, "get_theme_default_font_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getParentControl*(self: Control): Control =
  expandMethodBind(className Control, "get_parent_control", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control)

proc setHGrowDirection*(self: Control; direction: Control_GrowDirection): void =
  expandMethodBind(className Control, "set_h_grow_direction", 2022385301)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHGrowDirection*(self: Control): Control_GrowDirection =
  expandMethodBind(className Control, "get_h_grow_direction", 3635610155)
  var ret: encoded Control_GrowDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_GrowDirection)

proc setVGrowDirection*(self: Control; direction: Control_GrowDirection): void =
  expandMethodBind(className Control, "set_v_grow_direction", 2022385301)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVGrowDirection*(self: Control): Control_GrowDirection =
  expandMethodBind(className Control, "get_v_grow_direction", 3635610155)
  var ret: encoded Control_GrowDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_GrowDirection)

proc setTooltipText*(self: Control; hint: String): void =
  expandMethodBind(className Control, "set_tooltip_text", 83702148)
  var `?param` = [getPtr hint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTooltipText*(self: Control): String =
  expandMethodBind(className Control, "get_tooltip_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTooltip*(self: Control; atPosition: Vector2 = vector2(0, 0)): String =
  expandMethodBind(className Control, "get_tooltip", 2895288280)
  var `?param` = [getPtr atPosition]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setDefaultCursorShape*(self: Control; shape: Control_CursorShape): void =
  expandMethodBind(className Control, "set_default_cursor_shape", 217062046)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultCursorShape*(self: Control): Control_CursorShape =
  expandMethodBind(className Control, "get_default_cursor_shape", 2359535750)
  var ret: encoded Control_CursorShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_CursorShape)

proc getCursorShape*(self: Control; position: Vector2 = vector2(0, 0)): Control_CursorShape =
  expandMethodBind(className Control, "get_cursor_shape", 1395773853)
  var `?param` = [getPtr position]
  var ret: encoded Control_CursorShape
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Control_CursorShape)

proc setFocusNeighbor*(self: Control; side: Side; neighbor: NodePath): void =
  expandMethodBind(className Control, "set_focus_neighbor", 2024461774)
  var `?param` = [getPtr side, getPtr neighbor]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusNeighbor*(self: Control; side: Side): NodePath =
  expandMethodBind(className Control, "get_focus_neighbor", 2757935761)
  var `?param` = [getPtr side]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc setFocusNext*(self: Control; next: NodePath): void =
  expandMethodBind(className Control, "set_focus_next", 1348162250)
  var `?param` = [getPtr next]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusNext*(self: Control): NodePath =
  expandMethodBind(className Control, "get_focus_next", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setFocusPrevious*(self: Control; previous: NodePath): void =
  expandMethodBind(className Control, "set_focus_previous", 1348162250)
  var `?param` = [getPtr previous]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFocusPrevious*(self: Control): NodePath =
  expandMethodBind(className Control, "get_focus_previous", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc forceDrag*(self: Control; data: Variant; preview: Control): void =
  expandMethodBind(className Control, "force_drag", 3191844692)
  var `?param` = [getPtr data, getPtr preview]
  methodbind.ptrcall(self, addr `?param`[0])

proc setMouseFilter*(self: Control; filter: Control_MouseFilter): void =
  expandMethodBind(className Control, "set_mouse_filter", 3891156122)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMouseFilter*(self: Control): Control_MouseFilter =
  expandMethodBind(className Control, "get_mouse_filter", 1572545674)
  var ret: encoded Control_MouseFilter
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_MouseFilter)

proc setForcePassScrollEvents*(self: Control; forcePassScrollEvents: bool): void =
  expandMethodBind(className Control, "set_force_pass_scroll_events", 2586408642)
  var `?param` = [getPtr forcePassScrollEvents]
  methodbind.ptrcall(self, addr `?param`[0])

proc isForcePassScrollEvents*(self: Control): bool =
  expandMethodBind(className Control, "is_force_pass_scroll_events", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setClipContents*(self: Control; enable: bool): void =
  expandMethodBind(className Control, "set_clip_contents", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isClippingContents*(self: Control): bool =
  expandMethodBind(className Control, "is_clipping_contents", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc grabClickFocus*(self: Control): void =
  expandMethodBind(className Control, "grab_click_focus", 3218959716)
  methodbind.ptrcall(self, nil)

proc setDragForwarding*(self: Control; dragFunc: Callable; canDropFunc: Callable; dropFunc: Callable): void =
  expandMethodBind(className Control, "set_drag_forwarding", 1076571380)
  var `?param` = [getPtr dragFunc, getPtr canDropFunc, getPtr dropFunc]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDragPreview*(self: Control; control: Control): void =
  expandMethodBind(className Control, "set_drag_preview", 1496901182)
  var `?param` = [getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDragSuccessful*(self: Control): bool =
  expandMethodBind(className Control, "is_drag_successful", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc warpMouse*(self: Control; position: Vector2): void =
  expandMethodBind(className Control, "warp_mouse", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc setShortcutContext*(self: Control; node: Node): void =
  expandMethodBind(className Control, "set_shortcut_context", 1078189570)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShortcutContext*(self: Control): Node =
  expandMethodBind(className Control, "get_shortcut_context", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc updateMinimumSize*(self: Control): void =
  expandMethodBind(className Control, "update_minimum_size", 3218959716)
  methodbind.ptrcall(self, nil)

proc setLayoutDirection*(self: Control; direction: Control_LayoutDirection): void =
  expandMethodBind(className Control, "set_layout_direction", 3310692370)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLayoutDirection*(self: Control): Control_LayoutDirection =
  expandMethodBind(className Control, "get_layout_direction", 1546772008)
  var ret: encoded Control_LayoutDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_LayoutDirection)

proc isLayoutRtl*(self: Control): bool =
  expandMethodBind(className Control, "is_layout_rtl", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoTranslate*(self: Control; enable: bool): void =
  expandMethodBind(className Control, "set_auto_translate", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoTranslating*(self: Control): bool =
  expandMethodBind(className Control, "is_auto_translating", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLocalizeNumeralSystem*(self: Control; enable: bool): void =
  expandMethodBind(className Control, "set_localize_numeral_system", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLocalizingNumeralSystem*(self: Control): bool =
  expandMethodBind(className Control, "is_localizing_numeral_system", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template clipContents*(self: Control): untyped = self.isClippingContents()
template `clipContents=`*(self: Control; value) = self.setClipContents(value)

template customMinimumSize*(self: Control): untyped = self.getCustomMinimumSize()
template `customMinimumSize=`*(self: Control; value) = self.setCustomMinimumSize(value)

template layoutDirection*(self: Control): untyped = self.getLayoutDirection()
template `layoutDirection=`*(self: Control; value) = self.setLayoutDirection(value)

template layoutMode*(self: Control): untyped = self.getLayoutMode()
template `layoutMode=`*(self: Control; value) = self.setLayoutMode(value)

template anchorsPreset*(self: Control): untyped = self.getAnchorsLayoutPreset()
template `anchorsPreset=`*(self: Control; value) = self.setAnchorsLayoutPreset(value)

template anchorLeft*(self: Control): untyped = self.getAnchor(Side(0))
template `anchorLeft=`*(self: Control; value) = self.setAnchor(Side(0), value)

template anchorTop*(self: Control): untyped = self.getAnchor(Side(1))
template `anchorTop=`*(self: Control; value) = self.setAnchor(Side(1), value)

template anchorRight*(self: Control): untyped = self.getAnchor(Side(2))
template `anchorRight=`*(self: Control; value) = self.setAnchor(Side(2), value)

template anchorBottom*(self: Control): untyped = self.getAnchor(Side(3))
template `anchorBottom=`*(self: Control; value) = self.setAnchor(Side(3), value)

template offsetLeft*(self: Control): untyped = self.getOffset(Side(0))
template `offsetLeft=`*(self: Control; value) = self.setOffset(Side(0), value)

template offsetTop*(self: Control): untyped = self.getOffset(Side(1))
template `offsetTop=`*(self: Control; value) = self.setOffset(Side(1), value)

template offsetRight*(self: Control): untyped = self.getOffset(Side(2))
template `offsetRight=`*(self: Control; value) = self.setOffset(Side(2), value)

template offsetBottom*(self: Control): untyped = self.getOffset(Side(3))
template `offsetBottom=`*(self: Control; value) = self.setOffset(Side(3), value)

template growHorizontal*(self: Control): untyped = self.getHGrowDirection()
template `growHorizontal=`*(self: Control; value) = self.setHGrowDirection(value)

template growVertical*(self: Control): untyped = self.getVGrowDirection()
template `growVertical=`*(self: Control; value) = self.setVGrowDirection(value)

template size*(self: Control): untyped = self.getSize()
template `size=`*(self: Control; value) = self.setSize(value)

template position*(self: Control): untyped = self.getPosition()
template `position=`*(self: Control; value) = self.setPosition(value)

template globalPosition*(self: Control): untyped = self.getGlobalPosition()
template `globalPosition=`*(self: Control; value) = self.setGlobalPosition(value)

template rotation*(self: Control): untyped = self.getRotation()
template `rotation=`*(self: Control; value) = self.setRotation(value)

template rotationDegrees*(self: Control): untyped = self.getRotationDegrees()
template `rotationDegrees=`*(self: Control; value) = self.setRotationDegrees(value)

template scale*(self: Control): untyped = self.getScale()
template `scale=`*(self: Control; value) = self.setScale(value)

template pivotOffset*(self: Control): untyped = self.getPivotOffset()
template `pivotOffset=`*(self: Control; value) = self.setPivotOffset(value)

template sizeFlagsHorizontal*(self: Control): untyped = self.getHSizeFlags()
template `sizeFlagsHorizontal=`*(self: Control; value) = self.setHSizeFlags(value)

template sizeFlagsVertical*(self: Control): untyped = self.getVSizeFlags()
template `sizeFlagsVertical=`*(self: Control; value) = self.setVSizeFlags(value)

template sizeFlagsStretchRatio*(self: Control): untyped = self.getStretchRatio()
template `sizeFlagsStretchRatio=`*(self: Control; value) = self.setStretchRatio(value)

template localizeNumeralSystem*(self: Control): untyped = self.isLocalizingNumeralSystem()
template `localizeNumeralSystem=`*(self: Control; value) = self.setLocalizeNumeralSystem(value)

template autoTranslate*(self: Control): untyped = self.isAutoTranslating()
template `autoTranslate=`*(self: Control; value) = self.setAutoTranslate(value)

template tooltipText*(self: Control): untyped = self.getTooltipText()
template `tooltipText=`*(self: Control; value) = self.setTooltipText(value)

template focusNeighborLeft*(self: Control): untyped = self.getFocusNeighbor(Side(0))
template `focusNeighborLeft=`*(self: Control; value) = self.setFocusNeighbor(Side(0), value)

template focusNeighborTop*(self: Control): untyped = self.getFocusNeighbor(Side(1))
template `focusNeighborTop=`*(self: Control; value) = self.setFocusNeighbor(Side(1), value)

template focusNeighborRight*(self: Control): untyped = self.getFocusNeighbor(Side(2))
template `focusNeighborRight=`*(self: Control; value) = self.setFocusNeighbor(Side(2), value)

template focusNeighborBottom*(self: Control): untyped = self.getFocusNeighbor(Side(3))
template `focusNeighborBottom=`*(self: Control; value) = self.setFocusNeighbor(Side(3), value)

template focusNext*(self: Control): untyped = self.getFocusNext()
template `focusNext=`*(self: Control; value) = self.setFocusNext(value)

template focusPrevious*(self: Control): untyped = self.getFocusPrevious()
template `focusPrevious=`*(self: Control; value) = self.setFocusPrevious(value)

template focusMode*(self: Control): untyped = self.getFocusMode()
template `focusMode=`*(self: Control; value) = self.setFocusMode(value)

template mouseFilter*(self: Control): untyped = self.getMouseFilter()
template `mouseFilter=`*(self: Control; value) = self.setMouseFilter(value)

template mouseForcePassScrollEvents*(self: Control): untyped = self.isForcePassScrollEvents()
template `mouseForcePassScrollEvents=`*(self: Control; value) = self.setForcePassScrollEvents(value)

template mouseDefaultCursorShape*(self: Control): untyped = self.getDefaultCursorShape()
template `mouseDefaultCursorShape=`*(self: Control; value) = self.setDefaultCursorShape(value)

template shortcutContext*(self: Control): untyped = self.getShortcutContext()
template `shortcutContext=`*(self: Control; value) = self.setShortcutContext(value)

template theme*(self: Control): untyped = self.getTheme()
template `theme=`*(self: Control; value) = self.setTheme(value)

template themeTypeVariation*(self: Control): untyped = self.getThemeTypeVariation()
template `themeTypeVariation=`*(self: Control; value) = self.setThemeTypeVariation(value)

const Control_vmap =
  CanvasItem.vmap.concat toTable {
    "haspoint" : "_has_point",
    "structuredtextparser" : "_structured_text_parser",
    "getminimumsize" : "_get_minimum_size",
    "gettooltip" : "_get_tooltip",
    "getdragdata" : "_get_drag_data",
    "candropdata" : "_can_drop_data",
    "dropdata" : "_drop_data",
    "makecustomtooltip" : "_make_custom_tooltip",
    "guiinput" : "_gui_input",
    }
template vmap*(_: typedesc[Control]): Table[string, string] = Control_vmap

proc resized*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resized")
  self.emitSignal(signalname)

proc guiInput*(self: Control; event: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("gui_input")
  let args = [event]
  self.emitSignal(signalname, args)

proc mouseEntered*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_entered")
  self.emitSignal(signalname)

proc mouseExited*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_exited")
  self.emitSignal(signalname)

proc focusEntered*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("focus_entered")
  self.emitSignal(signalname)

proc focusExited*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("focus_exited")
  self.emitSignal(signalname)

proc sizeFlagsChanged*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("size_flags_changed")
  self.emitSignal(signalname)

proc minimumSizeChanged*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("minimum_size_changed")
  self.emitSignal(signalname)

proc themeChanged*(self: Control): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("theme_changed")
  self.emitSignal(signalname)