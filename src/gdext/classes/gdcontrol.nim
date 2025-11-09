{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcanvasitem; export gdcanvasitem

expandOnClassImported(Control, CanvasItem)

const NotificationResized* = 40
const NotificationMouseEnter* = 41
const NotificationMouseExit* = 42
const NotificationMouseEnterSelf* = 60
const NotificationMouseExitSelf* = 61
const NotificationFocusEnter* = 43
const NotificationFocusExit* = 44
const NotificationThemeChanged* = 45
const NotificationScrollBegin* = 47
const NotificationScrollEnd* = 48
const NotificationLayoutDirectionChanged* = 49

method hasPoint*(self: Control; point: Vector2): bool {.base.} = (discard)
proc registerVirtual_hasPoint*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_point"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).hasPoint(p_args[0].decode(Vector2)).encode(r_ret)

method structuredTextParser*(self: Control; args: Array; text: String): TypedArray[Vector3i] {.base.} = (discard)
proc registerVirtual_structuredTextParser*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_structured_text_parser"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).structuredTextParser(p_args[0].decode(Array), p_args[1].decode(String)).encode(r_ret)

method getMinimumSize*(self: Control): Vector2 {.base.} = (discard)
proc registerVirtual_getMinimumSize*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_minimum_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).getMinimumSize().encode(r_ret)

method getTooltip*(self: Control; atPosition: Vector2): String {.base.} = (discard)
proc registerVirtual_getTooltip*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_tooltip"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).getTooltip(p_args[0].decode(Vector2)).encode(r_ret)

method getDragData*(self: Control; atPosition: Vector2): Variant {.base.} = (discard)
proc registerVirtual_getDragData*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_drag_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).getDragData(p_args[0].decode(Vector2)).encode(r_ret)

method canDropData*(self: Control; atPosition: Vector2; data: Variant): bool {.base.} = (discard)
proc registerVirtual_canDropData*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_drop_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).canDropData(p_args[0].decode(Vector2), p_args[1].decode(Variant)).encode(r_ret)

method dropData*(self: Control; atPosition: Vector2; data: Variant): void {.base.} = (discard)
proc registerVirtual_dropData*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_drop_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).dropData(p_args[0].decode(Vector2), p_args[1].decode(Variant))

method makeCustomTooltip*(self: Control; forText: String): Object {.base.} = (discard)
proc registerVirtual_makeCustomTooltip*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_make_custom_tooltip"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).makeCustomTooltip(p_args[0].decode(String)).encode(r_ret)

method accessibilityGetContextualInfo*(self: Control): String {.base.} = (discard)
proc registerVirtual_accessibilityGetContextualInfo*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_accessibility_get_contextual_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).accessibilityGetContextualInfo().encode(r_ret)

method getAccessibilityContainerName*(self: Control; node: Node): String {.base.} = (discard)
proc registerVirtual_getAccessibilityContainerName*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_accessibility_container_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).getAccessibilityContainerName(p_args[0].decode(Node)).encode(r_ret)

method guiInput*(self: Control; event: gdref InputEvent): void {.base.} = (discard)
proc registerVirtual_guiInput*[T: Control](Self: typedesc[T]) =
  Self.vmethods[newStringName"_gui_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Control](p_instance).guiInput(p_args[0].decode(gdref InputEvent))

proc acceptEvent*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "accept_event", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getMinimumSize*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_minimum_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCombinedMinimumSize*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_combined_minimum_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setAnchorsPreset*(self: Control; preset: Control_LayoutPreset; keepOffsets: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_anchors_preset", 509135270)
  methodbind.ptrcall(self, [getPtr preset, getPtr keepOffsets], void)

proc setOffsetsPreset*(self: Control; preset: Control_LayoutPreset; resizeMode: Control_LayoutPresetMode = presetModeMinsize; margin: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_offsets_preset", 3724524307)
  methodbind.ptrcall(self, [getPtr preset, getPtr resizeMode, getPtr margin], void)

proc setAnchorsAndOffsetsPreset*(self: Control; preset: Control_LayoutPreset; resizeMode: Control_LayoutPresetMode = presetModeMinsize; margin: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_anchors_and_offsets_preset", 3724524307)
  methodbind.ptrcall(self, [getPtr preset, getPtr resizeMode, getPtr margin], void)

proc setAnchor*(self: Control; side: Side; anchor: Float; keepOffset: bool = false; pushOppositeAnchor: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_anchor", 2302782885)
  methodbind.ptrcall(self, [getPtr side, getPtr anchor, getPtr keepOffset, getPtr pushOppositeAnchor], void)

proc getAnchor*(self: Control; side: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_anchor", 2869120046)
  methodbind.ptrcall(self, [getPtr side], Float)

proc setOffset*(self: Control; side: Side; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_offset", 4290182280)
  methodbind.ptrcall(self, [getPtr side, getPtr offset], void)

proc getOffset*(self: Control; offset: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_offset", 2869120046)
  methodbind.ptrcall(self, [getPtr offset], Float)

proc setAnchorAndOffset*(self: Control; side: Side; anchor: Float; offset: Float; pushOppositeAnchor: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_anchor_and_offset", 4031722181)
  methodbind.ptrcall(self, [getPtr side, getPtr anchor, getPtr offset, getPtr pushOppositeAnchor], void)

proc setBegin*(self: Control; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_begin", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc setEnd*(self: Control; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_end", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc setPosition*(self: Control; position: Vector2; keepOffsets: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_position", 2436320129)
  methodbind.ptrcall(self, [getPtr position, getPtr keepOffsets], void)

proc setSize*(self: Control; size: Vector2; keepOffsets: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_size", 2436320129)
  methodbind.ptrcall(self, [getPtr size, getPtr keepOffsets], void)

proc resetSize*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "reset_size", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCustomMinimumSize*(self: Control; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_custom_minimum_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc setGlobalPosition*(self: Control; position: Vector2; keepOffsets: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_global_position", 2436320129)
  methodbind.ptrcall(self, [getPtr position, getPtr keepOffsets], void)

proc setRotation*(self: Control; radians: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr radians], void)

proc setRotationDegrees*(self: Control; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_rotation_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc setScale*(self: Control; scale: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale], void)

proc setPivotOffset*(self: Control; pivotOffset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_pivot_offset", 743155724)
  methodbind.ptrcall(self, [getPtr pivotOffset], void)

proc getBegin*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_begin", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getEnd*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_end", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getPosition*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getSize*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRotation*(self: Control): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_rotation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getRotationDegrees*(self: Control): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_rotation_degrees", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getScale*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_scale", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getPivotOffset*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_pivot_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCustomMinimumSize*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_custom_minimum_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getParentAreaSize*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_parent_area_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getGlobalPosition*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_global_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getScreenPosition*(self: Control): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_screen_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRect*(self: Control): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc getGlobalRect*(self: Control): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_global_rect", 1639390495)
  methodbind.ptrcall(self, [], Rect2)

proc setFocusMode*(self: Control; mode: Control_FocusMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_focus_mode", 3232914922)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFocusMode*(self: Control): Control_FocusMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_mode", 2132829277)
  methodbind.ptrcall(self, [], Control_FocusMode)

proc getFocusModeWithOverride*(self: Control): Control_FocusMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_mode_with_override", 2132829277)
  methodbind.ptrcall(self, [], Control_FocusMode)

proc setFocusBehaviorRecursive*(self: Control; focusBehaviorRecursive: Control_FocusBehaviorRecursive): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_focus_behavior_recursive", 4256832521)
  methodbind.ptrcall(self, [getPtr focusBehaviorRecursive], void)

proc getFocusBehaviorRecursive*(self: Control): Control_FocusBehaviorRecursive =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_behavior_recursive", 2435707181)
  methodbind.ptrcall(self, [], Control_FocusBehaviorRecursive)

proc hasFocus*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc grabFocus*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "grab_focus", 3218959716)
  methodbind.ptrcall(self, [], void)

proc releaseFocus*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "release_focus", 3218959716)
  methodbind.ptrcall(self, [], void)

proc findPrevValidFocus*(self: Control): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "find_prev_valid_focus", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc findNextValidFocus*(self: Control): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "find_next_valid_focus", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc findValidFocusNeighbor*(self: Control; side: Side): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "find_valid_focus_neighbor", 1543910170)
  methodbind.ptrcall(self, [getPtr side], Control)

proc setHSizeFlags*(self: Control; flags: set[Control_SizeFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_h_size_flags", 394851643)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getHSizeFlags*(self: Control): set[Control_SizeFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_h_size_flags", 3781367401)
  methodbind.ptrcall(self, [], set[Control_SizeFlags])

proc setStretchRatio*(self: Control; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_stretch_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getStretchRatio*(self: Control): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_stretch_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVSizeFlags*(self: Control; flags: set[Control_SizeFlags]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_v_size_flags", 394851643)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getVSizeFlags*(self: Control): set[Control_SizeFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_v_size_flags", 3781367401)
  methodbind.ptrcall(self, [], set[Control_SizeFlags])

proc setTheme*(self: Control; theme: gdref Theme): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_theme", 2326690814)
  methodbind.ptrcall(self, [getPtr theme], void)

proc getTheme*(self: Control): gdref Theme =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme", 3846893731)
  methodbind.ptrcall(self, [], gdref Theme)

proc setThemeTypeVariation*(self: Control; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_theme_type_variation", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType], void)

proc getThemeTypeVariation*(self: Control): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_type_variation", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc beginBulkThemeOverride*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "begin_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [], void)

proc endBulkThemeOverride*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "end_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addThemeIconOverride*(self: Control; name: StringName; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_icon_override", 1373065600)
  methodbind.ptrcall(self, [getPtr name, getPtr texture], void)

proc addThemeStyleboxOverride*(self: Control; name: StringName; stylebox: gdref StyleBox): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_stylebox_override", 4188838905)
  methodbind.ptrcall(self, [getPtr name, getPtr stylebox], void)

proc addThemeFontOverride*(self: Control; name: StringName; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_font_override", 3518018674)
  methodbind.ptrcall(self, [getPtr name, getPtr font], void)

proc addThemeFontSizeOverride*(self: Control; name: StringName; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_font_size_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr fontSize], void)

proc addThemeColorOverride*(self: Control; name: StringName; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_color_override", 4260178595)
  methodbind.ptrcall(self, [getPtr name, getPtr color], void)

proc addThemeConstantOverride*(self: Control; name: StringName; constant: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "add_theme_constant_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr constant], void)

proc removeThemeIconOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_icon_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeStyleboxOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_stylebox_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeFontOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_font_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeFontSizeOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_font_size_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeColorOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_color_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeConstantOverride*(self: Control; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "remove_theme_constant_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getThemeIcon*(self: Control; name: StringName; themeType: StringName = default(StringName)): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_icon", 3163973443)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Texture2D)

proc getThemeStylebox*(self: Control; name: StringName; themeType: StringName = default(StringName)): gdref StyleBox =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_stylebox", 604739069)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref StyleBox)

proc getThemeFont*(self: Control; name: StringName; themeType: StringName = default(StringName)): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_font", 2826986490)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Font)

proc getThemeFontSize*(self: Control; name: StringName; themeType: StringName = default(StringName)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_font_size", 1327056374)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc getThemeColor*(self: Control; name: StringName; themeType: StringName = default(StringName)): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_color", 2798751242)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], Color)

proc getThemeConstant*(self: Control; name: StringName; themeType: StringName = default(StringName)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_constant", 1327056374)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc hasThemeIconOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_icon_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeStyleboxOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_stylebox_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeFontOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_font_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeFontSizeOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_font_size_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeColorOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_color_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeConstantOverride*(self: Control; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_constant_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeIcon*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_icon", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeStylebox*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_stylebox", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeFont*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_font", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeFontSize*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_font_size", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeColor*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_color", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeConstant*(self: Control; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "has_theme_constant", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc getThemeDefaultBaseScale*(self: Control): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_default_base_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getThemeDefaultFont*(self: Control): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_default_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc getThemeDefaultFontSize*(self: Control): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_theme_default_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getParentControl*(self: Control): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_parent_control", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc setHGrowDirection*(self: Control; direction: Control_GrowDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_h_grow_direction", 2022385301)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getHGrowDirection*(self: Control): Control_GrowDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_h_grow_direction", 3635610155)
  methodbind.ptrcall(self, [], Control_GrowDirection)

proc setVGrowDirection*(self: Control; direction: Control_GrowDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_v_grow_direction", 2022385301)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getVGrowDirection*(self: Control): Control_GrowDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_v_grow_direction", 3635610155)
  methodbind.ptrcall(self, [], Control_GrowDirection)

proc setTooltipAutoTranslateMode*(self: Control; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_tooltip_auto_translate_mode", 776149714)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTooltipAutoTranslateMode*(self: Control): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_tooltip_auto_translate_mode", 2498906432)
  methodbind.ptrcall(self, [], Node_AutoTranslateMode)

proc setTooltipText*(self: Control; hint: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_tooltip_text", 83702148)
  methodbind.ptrcall(self, [getPtr hint], void)

proc getTooltipText*(self: Control): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_tooltip_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTooltip*(self: Control; atPosition: Vector2 = vector2(0, 0)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_tooltip", 2895288280)
  methodbind.ptrcall(self, [getPtr atPosition], String)

proc setDefaultCursorShape*(self: Control; shape: Control_CursorShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_default_cursor_shape", 217062046)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getDefaultCursorShape*(self: Control): Control_CursorShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_default_cursor_shape", 2359535750)
  methodbind.ptrcall(self, [], Control_CursorShape)

proc getCursorShape*(self: Control; position: Vector2 = vector2(0, 0)): Control_CursorShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_cursor_shape", 1395773853)
  methodbind.ptrcall(self, [getPtr position], Control_CursorShape)

proc setFocusNeighbor*(self: Control; side: Side; neighbor: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_focus_neighbor", 2024461774)
  methodbind.ptrcall(self, [getPtr side, getPtr neighbor], void)

proc getFocusNeighbor*(self: Control; side: Side): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_neighbor", 2757935761)
  methodbind.ptrcall(self, [getPtr side], NodePath)

proc setFocusNext*(self: Control; next: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_focus_next", 1348162250)
  methodbind.ptrcall(self, [getPtr next], void)

proc getFocusNext*(self: Control): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_next", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setFocusPrevious*(self: Control; previous: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_focus_previous", 1348162250)
  methodbind.ptrcall(self, [getPtr previous], void)

proc getFocusPrevious*(self: Control): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_focus_previous", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc forceDrag*(self: Control; data: Variant; preview: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "force_drag", 3191844692)
  methodbind.ptrcall(self, [getPtr data, getPtr preview], void)

proc accessibilityDrag*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "accessibility_drag", 3218959716)
  methodbind.ptrcall(self, [], void)

proc accessibilityDrop*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "accessibility_drop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setAccessibilityName*(self: Control; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAccessibilityName*(self: Control): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAccessibilityDescription*(self: Control; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_description", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

proc getAccessibilityDescription*(self: Control): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_description", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAccessibilityLive*(self: Control; mode: DisplayServer_AccessibilityLiveMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_live", 1720261470)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getAccessibilityLive*(self: Control): DisplayServer_AccessibilityLiveMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_live", 3311037003)
  methodbind.ptrcall(self, [], DisplayServer_AccessibilityLiveMode)

proc setAccessibilityControlsNodes*(self: Control; nodePath: TypedArray[NodePath]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_controls_nodes", 381264803)
  methodbind.ptrcall(self, [getPtr nodePath], void)

proc getAccessibilityControlsNodes*(self: Control): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_controls_nodes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc setAccessibilityDescribedByNodes*(self: Control; nodePath: TypedArray[NodePath]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_described_by_nodes", 381264803)
  methodbind.ptrcall(self, [getPtr nodePath], void)

proc getAccessibilityDescribedByNodes*(self: Control): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_described_by_nodes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc setAccessibilityLabeledByNodes*(self: Control; nodePath: TypedArray[NodePath]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_labeled_by_nodes", 381264803)
  methodbind.ptrcall(self, [getPtr nodePath], void)

proc getAccessibilityLabeledByNodes*(self: Control): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_labeled_by_nodes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc setAccessibilityFlowToNodes*(self: Control; nodePath: TypedArray[NodePath]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_accessibility_flow_to_nodes", 381264803)
  methodbind.ptrcall(self, [getPtr nodePath], void)

proc getAccessibilityFlowToNodes*(self: Control): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_accessibility_flow_to_nodes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc setMouseFilter*(self: Control; filter: Control_MouseFilter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_mouse_filter", 3891156122)
  methodbind.ptrcall(self, [getPtr filter], void)

proc getMouseFilter*(self: Control): Control_MouseFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_mouse_filter", 1572545674)
  methodbind.ptrcall(self, [], Control_MouseFilter)

proc getMouseFilterWithOverride*(self: Control): Control_MouseFilter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_mouse_filter_with_override", 1572545674)
  methodbind.ptrcall(self, [], Control_MouseFilter)

proc setMouseBehaviorRecursive*(self: Control; mouseBehaviorRecursive: Control_MouseBehaviorRecursive): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_mouse_behavior_recursive", 849284636)
  methodbind.ptrcall(self, [getPtr mouseBehaviorRecursive], void)

proc getMouseBehaviorRecursive*(self: Control): Control_MouseBehaviorRecursive =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_mouse_behavior_recursive", 3779367402)
  methodbind.ptrcall(self, [], Control_MouseBehaviorRecursive)

proc setForcePassScrollEvents*(self: Control; forcePassScrollEvents: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_force_pass_scroll_events", 2586408642)
  methodbind.ptrcall(self, [getPtr forcePassScrollEvents], void)

proc isForcePassScrollEvents*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_force_pass_scroll_events", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setClipContents*(self: Control; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_clip_contents", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isClippingContents*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_clipping_contents", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc grabClickFocus*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "grab_click_focus", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setDragForwarding*(self: Control; dragFunc: Callable; canDropFunc: Callable; dropFunc: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_drag_forwarding", 1076571380)
  methodbind.ptrcall(self, [getPtr dragFunc, getPtr canDropFunc, getPtr dropFunc], void)

proc setDragPreview*(self: Control; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_drag_preview", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc isDragSuccessful*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_drag_successful", 36873697)
  methodbind.ptrcall(self, [], bool)

proc warpMouse*(self: Control; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "warp_mouse", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc setShortcutContext*(self: Control; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_shortcut_context", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc getShortcutContext*(self: Control): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_shortcut_context", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc updateMinimumSize*(self: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "update_minimum_size", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setLayoutDirection*(self: Control; direction: Control_LayoutDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_layout_direction", 3310692370)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getLayoutDirection*(self: Control): Control_LayoutDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "get_layout_direction", 1546772008)
  methodbind.ptrcall(self, [], Control_LayoutDirection)

proc isLayoutRtl*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_layout_rtl", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoTranslate*(self: Control; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_auto_translate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoTranslating*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_auto_translating", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLocalizeNumeralSystem*(self: Control; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "set_localize_numeral_system", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLocalizingNumeralSystem*(self: Control): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Control, "is_localizing_numeral_system", 36873697)
  methodbind.ptrcall(self, [], bool)

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

template tooltipAutoTranslateMode*(self: Control): untyped = self.getTooltipAutoTranslateMode()
template `tooltipAutoTranslateMode=`*(self: Control; value) = self.setTooltipAutoTranslateMode(value)

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

template focusBehaviorRecursive*(self: Control): untyped = self.getFocusBehaviorRecursive()
template `focusBehaviorRecursive=`*(self: Control; value) = self.setFocusBehaviorRecursive(value)

template mouseFilter*(self: Control): untyped = self.getMouseFilter()
template `mouseFilter=`*(self: Control; value) = self.setMouseFilter(value)

template mouseBehaviorRecursive*(self: Control): untyped = self.getMouseBehaviorRecursive()
template `mouseBehaviorRecursive=`*(self: Control; value) = self.setMouseBehaviorRecursive(value)

template mouseForcePassScrollEvents*(self: Control): untyped = self.isForcePassScrollEvents()
template `mouseForcePassScrollEvents=`*(self: Control; value) = self.setForcePassScrollEvents(value)

template mouseDefaultCursorShape*(self: Control): untyped = self.getDefaultCursorShape()
template `mouseDefaultCursorShape=`*(self: Control; value) = self.setDefaultCursorShape(value)

template shortcutContext*(self: Control): untyped = self.getShortcutContext()
template `shortcutContext=`*(self: Control; value) = self.setShortcutContext(value)

template accessibilityName*(self: Control): untyped = self.getAccessibilityName()
template `accessibilityName=`*(self: Control; value) = self.setAccessibilityName(value)

template accessibilityDescription*(self: Control): untyped = self.getAccessibilityDescription()
template `accessibilityDescription=`*(self: Control; value) = self.setAccessibilityDescription(value)

template accessibilityLive*(self: Control): untyped = self.getAccessibilityLive()
template `accessibilityLive=`*(self: Control; value) = self.setAccessibilityLive(value)

template accessibilityControlsNodes*(self: Control): untyped = self.getAccessibilityControlsNodes()
template `accessibilityControlsNodes=`*(self: Control; value) = self.setAccessibilityControlsNodes(value)

template accessibilityDescribedByNodes*(self: Control): untyped = self.getAccessibilityDescribedByNodes()
template `accessibilityDescribedByNodes=`*(self: Control; value) = self.setAccessibilityDescribedByNodes(value)

template accessibilityLabeledByNodes*(self: Control): untyped = self.getAccessibilityLabeledByNodes()
template `accessibilityLabeledByNodes=`*(self: Control; value) = self.setAccessibilityLabeledByNodes(value)

template accessibilityFlowToNodes*(self: Control): untyped = self.getAccessibilityFlowToNodes()
template `accessibilityFlowToNodes=`*(self: Control; value) = self.setAccessibilityFlowToNodes(value)

template theme*(self: Control): untyped = self.getTheme()
template `theme=`*(self: Control; value) = self.setTheme(value)

template themeTypeVariation*(self: Control): untyped = self.getThemeTypeVariation()
template `themeTypeVariation=`*(self: Control; value) = self.setThemeTypeVariation(value)
