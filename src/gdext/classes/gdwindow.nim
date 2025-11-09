{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdviewport; export gdviewport

expandOnClassImported(Window, Viewport)

const NotificationVisibilityChanged* = 30
const NotificationThemeChanged* = 32

method getContentsMinimumSize*(self: Window): Vector2 {.base.} = (discard)
proc registerVirtual_getContentsMinimumSize*[T: Window](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_contents_minimum_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Window](p_instance).getContentsMinimumSize().encode(r_ret)

proc setTitle*(self: Window; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title], void)

proc getTitle*(self: Window): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_title", 201670096)
  methodbind.ptrcall(self, [], String)

proc setInitialPosition*(self: Window; initialPosition: Window_WindowInitialPosition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_initial_position", 4084468099)
  methodbind.ptrcall(self, [getPtr initialPosition], void)

proc getInitialPosition*(self: Window): Window_WindowInitialPosition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_initial_position", 4294066647)
  methodbind.ptrcall(self, [], Window_WindowInitialPosition)

proc setCurrentScreen*(self: Window; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_current_screen", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc getCurrentScreen*(self: Window): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_current_screen", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPosition*(self: Window; position: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_position", 1130785943)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_position", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc moveToCenter*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "move_to_center", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setSize*(self: Window; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc resetSize*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "reset_size", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getPositionWithDecorations*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_position_with_decorations", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getSizeWithDecorations*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_size_with_decorations", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setMaxSize*(self: Window; maxSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_max_size", 1130785943)
  methodbind.ptrcall(self, [getPtr maxSize], void)

proc getMaxSize*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_max_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setMinSize*(self: Window; minSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_min_size", 1130785943)
  methodbind.ptrcall(self, [getPtr minSize], void)

proc getMinSize*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_min_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setMode*(self: Window; mode: Window_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_mode", 3095236531)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMode*(self: Window): Window_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_mode", 2566346114)
  methodbind.ptrcall(self, [], Window_Mode)

proc setFlag*(self: Window; flag: Window_Flags; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_flag", 3426449779)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled], void)

proc getFlag*(self: Window; flag: Window_Flags): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_flag", 3062752289)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc isMaximizeAllowed*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_maximize_allowed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc requestAttention*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "request_attention", 3218959716)
  methodbind.ptrcall(self, [], void)

proc moveToForeground*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "move_to_foreground", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setVisible*(self: Window; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisible*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hide*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "hide", 3218959716)
  methodbind.ptrcall(self, [], void)

proc show*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "show", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTransient*(self: Window; transient: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_transient", 2586408642)
  methodbind.ptrcall(self, [getPtr transient], void)

proc isTransient*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_transient", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTransientToFocused*(self: Window; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_transient_to_focused", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isTransientToFocused*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_transient_to_focused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setExclusive*(self: Window; exclusive: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_exclusive", 2586408642)
  methodbind.ptrcall(self, [getPtr exclusive], void)

proc isExclusive*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_exclusive", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUnparentWhenInvisible*(self: Window; unparent: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_unparent_when_invisible", 2586408642)
  methodbind.ptrcall(self, [getPtr unparent], void)

proc canDraw*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "can_draw", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasFocus*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc grabFocus*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "grab_focus", 3218959716)
  methodbind.ptrcall(self, [], void)

proc startDrag*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "start_drag", 3218959716)
  methodbind.ptrcall(self, [], void)

proc startResize*(self: Window; edge: DisplayServer_WindowResizeEdge): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "start_resize", 122288853)
  methodbind.ptrcall(self, [getPtr edge], void)

proc setImeActive*(self: Window; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_ime_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc setImePosition*(self: Window; position: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_ime_position", 1130785943)
  methodbind.ptrcall(self, [getPtr position], void)

proc isEmbedded*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_embedded", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getContentsMinimumSize*(self: Window): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_contents_minimum_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setForceNative*(self: Window; forceNative: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_force_native", 2586408642)
  methodbind.ptrcall(self, [getPtr forceNative], void)

proc getForceNative*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_force_native", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setContentScaleSize*(self: Window; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_content_scale_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getContentScaleSize*(self: Window): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_content_scale_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setContentScaleMode*(self: Window; mode: Window_ContentScaleMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_content_scale_mode", 2937716473)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getContentScaleMode*(self: Window): Window_ContentScaleMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_content_scale_mode", 161585230)
  methodbind.ptrcall(self, [], Window_ContentScaleMode)

proc setContentScaleAspect*(self: Window; aspect: Window_ContentScaleAspect): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_content_scale_aspect", 2370399418)
  methodbind.ptrcall(self, [getPtr aspect], void)

proc getContentScaleAspect*(self: Window): Window_ContentScaleAspect =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_content_scale_aspect", 4158790715)
  methodbind.ptrcall(self, [], Window_ContentScaleAspect)

proc setContentScaleStretch*(self: Window; stretch: Window_ContentScaleStretch): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_content_scale_stretch", 349355940)
  methodbind.ptrcall(self, [getPtr stretch], void)

proc getContentScaleStretch*(self: Window): Window_ContentScaleStretch =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_content_scale_stretch", 536857316)
  methodbind.ptrcall(self, [], Window_ContentScaleStretch)

proc setKeepTitleVisible*(self: Window; titleVisible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_keep_title_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr titleVisible], void)

proc getKeepTitleVisible*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_keep_title_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setContentScaleFactor*(self: Window; factor: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_content_scale_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor], void)

proc getContentScaleFactor*(self: Window): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_content_scale_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMousePassthroughPolygon*(self: Window; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_mouse_passthrough_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getMousePassthroughPolygon*(self: Window): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_mouse_passthrough_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setWrapControls*(self: Window; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_wrap_controls", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isWrappingControls*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_wrapping_controls", 36873697)
  methodbind.ptrcall(self, [], bool)

proc childControlsChanged*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "child_controls_changed", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTheme*(self: Window; theme: gdref Theme): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_theme", 2326690814)
  methodbind.ptrcall(self, [getPtr theme], void)

proc getTheme*(self: Window): gdref Theme =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme", 3846893731)
  methodbind.ptrcall(self, [], gdref Theme)

proc setThemeTypeVariation*(self: Window; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_theme_type_variation", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType], void)

proc getThemeTypeVariation*(self: Window): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_type_variation", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc beginBulkThemeOverride*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "begin_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [], void)

proc endBulkThemeOverride*(self: Window): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "end_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addThemeIconOverride*(self: Window; name: StringName; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_icon_override", 1373065600)
  methodbind.ptrcall(self, [getPtr name, getPtr texture], void)

proc addThemeStyleboxOverride*(self: Window; name: StringName; stylebox: gdref StyleBox): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_stylebox_override", 4188838905)
  methodbind.ptrcall(self, [getPtr name, getPtr stylebox], void)

proc addThemeFontOverride*(self: Window; name: StringName; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_font_override", 3518018674)
  methodbind.ptrcall(self, [getPtr name, getPtr font], void)

proc addThemeFontSizeOverride*(self: Window; name: StringName; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_font_size_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr fontSize], void)

proc addThemeColorOverride*(self: Window; name: StringName; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_color_override", 4260178595)
  methodbind.ptrcall(self, [getPtr name, getPtr color], void)

proc addThemeConstantOverride*(self: Window; name: StringName; constant: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "add_theme_constant_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr constant], void)

proc removeThemeIconOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_icon_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeStyleboxOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_stylebox_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeFontOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_font_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeFontSizeOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_font_size_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeColorOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_color_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc removeThemeConstantOverride*(self: Window; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "remove_theme_constant_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getThemeIcon*(self: Window; name: StringName; themeType: StringName = default(StringName)): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_icon", 3163973443)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Texture2D)

proc getThemeStylebox*(self: Window; name: StringName; themeType: StringName = default(StringName)): gdref StyleBox =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_stylebox", 604739069)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref StyleBox)

proc getThemeFont*(self: Window; name: StringName; themeType: StringName = default(StringName)): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_font", 2826986490)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Font)

proc getThemeFontSize*(self: Window; name: StringName; themeType: StringName = default(StringName)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_font_size", 1327056374)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc getThemeColor*(self: Window; name: StringName; themeType: StringName = default(StringName)): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_color", 2798751242)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], Color)

proc getThemeConstant*(self: Window; name: StringName; themeType: StringName = default(StringName)): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_constant", 1327056374)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc hasThemeIconOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_icon_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeStyleboxOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_stylebox_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeFontOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_font_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeFontSizeOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_font_size_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeColorOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_color_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeConstantOverride*(self: Window; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_constant_override", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc hasThemeIcon*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_icon", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeStylebox*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_stylebox", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeFont*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_font", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeFontSize*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_font_size", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeColor*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_color", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc hasThemeConstant*(self: Window; name: StringName; themeType: StringName = default(StringName)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "has_theme_constant", 866386512)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc getThemeDefaultBaseScale*(self: Window): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_default_base_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getThemeDefaultFont*(self: Window): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_default_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc getThemeDefaultFontSize*(self: Window): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_theme_default_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getWindowId*(self: Window): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_window_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAccessibilityName*(self: Window; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_accessibility_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getAccessibilityName*(self: Window): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_accessibility_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setAccessibilityDescription*(self: Window; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_accessibility_description", 83702148)
  methodbind.ptrcall(self, [getPtr description], void)

proc getAccessibilityDescription*(self: Window): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_accessibility_description", 201670096)
  methodbind.ptrcall(self, [], String)

proc getFocusedWindow*(_: typedesc[Window]): Window =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_focused_window", 1835468782)
  methodbind.ptrcall([], Window)

proc setLayoutDirection*(self: Window; direction: Window_LayoutDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_layout_direction", 3094704184)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getLayoutDirection*(self: Window): Window_LayoutDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "get_layout_direction", 3909617982)
  methodbind.ptrcall(self, [], Window_LayoutDirection)

proc isLayoutRtl*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_layout_rtl", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoTranslate*(self: Window; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_auto_translate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoTranslating*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_auto_translating", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseFontOversampling*(self: Window; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "set_use_font_oversampling", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingFontOversampling*(self: Window): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "is_using_font_oversampling", 36873697)
  methodbind.ptrcall(self, [], bool)

proc popup*(self: Window; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup", 1680304321)
  methodbind.ptrcall(self, [getPtr rect], void)

proc popupOnParent*(self: Window; parentRect: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_on_parent", 1763793166)
  methodbind.ptrcall(self, [getPtr parentRect], void)

proc popupCentered*(self: Window; minsize: Vector2i = vector2i(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_centered", 3447975422)
  methodbind.ptrcall(self, [getPtr minsize], void)

proc popupCenteredRatio*(self: Window; ratio: Float = 0.8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_centered_ratio", 1014814997)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc popupCenteredClamped*(self: Window; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_centered_clamped", 2613752477)
  methodbind.ptrcall(self, [getPtr minsize, getPtr fallbackRatio], void)

proc popupExclusive*(self: Window; fromNode: Node; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_exclusive", 2134721627)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr rect], void)

proc popupExclusiveOnParent*(self: Window; fromNode: Node; parentRect: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_exclusive_on_parent", 2344671043)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr parentRect], void)

proc popupExclusiveCentered*(self: Window; fromNode: Node; minsize: Vector2i = vector2i(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_exclusive_centered", 3357594017)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr minsize], void)

proc popupExclusiveCenteredRatio*(self: Window; fromNode: Node; ratio: Float = 0.8): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_exclusive_centered_ratio", 2284776287)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr ratio], void)

proc popupExclusiveCenteredClamped*(self: Window; fromNode: Node; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Window, "popup_exclusive_centered_clamped", 2612708785)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr minsize, getPtr fallbackRatio], void)

template mode*(self: Window): untyped = self.getMode()
template `mode=`*(self: Window; value) = self.setMode(value)

template title*(self: Window): untyped = self.getTitle()
template `title=`*(self: Window; value) = self.setTitle(value)

template initialPosition*(self: Window): untyped = self.getInitialPosition()
template `initialPosition=`*(self: Window; value) = self.setInitialPosition(value)

template position*(self: Window): untyped = self.getPosition()
template `position=`*(self: Window; value) = self.setPosition(value)

template size*(self: Window): untyped = self.getSize()
template `size=`*(self: Window; value) = self.setSize(value)

template currentScreen*(self: Window): untyped = self.getCurrentScreen()
template `currentScreen=`*(self: Window; value) = self.setCurrentScreen(value)

template mousePassthroughPolygon*(self: Window): untyped = self.getMousePassthroughPolygon()
template `mousePassthroughPolygon=`*(self: Window; value) = self.setMousePassthroughPolygon(value)

template visible*(self: Window): untyped = self.isVisible()
template `visible=`*(self: Window; value) = self.setVisible(value)

template wrapControls*(self: Window): untyped = self.isWrappingControls()
template `wrapControls=`*(self: Window; value) = self.setWrapControls(value)

template transient*(self: Window): untyped = self.isTransient()
template `transient=`*(self: Window; value) = self.setTransient(value)

template transientToFocused*(self: Window): untyped = self.isTransientToFocused()
template `transientToFocused=`*(self: Window; value) = self.setTransientToFocused(value)

template exclusive*(self: Window): untyped = self.isExclusive()
template `exclusive=`*(self: Window; value) = self.setExclusive(value)

template unresizable*(self: Window): untyped = self.getFlag(Window_Flags(0))
template `unresizable=`*(self: Window; value) = self.setFlag(Window_Flags(0), value)

template borderless*(self: Window): untyped = self.getFlag(Window_Flags(1))
template `borderless=`*(self: Window; value) = self.setFlag(Window_Flags(1), value)

template alwaysOnTop*(self: Window): untyped = self.getFlag(Window_Flags(2))
template `alwaysOnTop=`*(self: Window; value) = self.setFlag(Window_Flags(2), value)

template transparent*(self: Window): untyped = self.getFlag(Window_Flags(3))
template `transparent=`*(self: Window; value) = self.setFlag(Window_Flags(3), value)

template unfocusable*(self: Window): untyped = self.getFlag(Window_Flags(4))
template `unfocusable=`*(self: Window; value) = self.setFlag(Window_Flags(4), value)

template popupWindow*(self: Window): untyped = self.getFlag(Window_Flags(5))
template `popupWindow=`*(self: Window; value) = self.setFlag(Window_Flags(5), value)

template extendToTitle*(self: Window): untyped = self.getFlag(Window_Flags(6))
template `extendToTitle=`*(self: Window; value) = self.setFlag(Window_Flags(6), value)

template mousePassthrough*(self: Window): untyped = self.getFlag(Window_Flags(7))
template `mousePassthrough=`*(self: Window; value) = self.setFlag(Window_Flags(7), value)

template sharpCorners*(self: Window): untyped = self.getFlag(Window_Flags(8))
template `sharpCorners=`*(self: Window; value) = self.setFlag(Window_Flags(8), value)

template excludeFromCapture*(self: Window): untyped = self.getFlag(Window_Flags(9))
template `excludeFromCapture=`*(self: Window; value) = self.setFlag(Window_Flags(9), value)

template popupWmHint*(self: Window): untyped = self.getFlag(Window_Flags(10))
template `popupWmHint=`*(self: Window; value) = self.setFlag(Window_Flags(10), value)

template minimizeDisabled*(self: Window): untyped = self.getFlag(Window_Flags(11))
template `minimizeDisabled=`*(self: Window; value) = self.setFlag(Window_Flags(11), value)

template maximizeDisabled*(self: Window): untyped = self.getFlag(Window_Flags(12))
template `maximizeDisabled=`*(self: Window; value) = self.setFlag(Window_Flags(12), value)

template forceNative*(self: Window): untyped = self.getForceNative()
template `forceNative=`*(self: Window; value) = self.setForceNative(value)

template minSize*(self: Window): untyped = self.getMinSize()
template `minSize=`*(self: Window; value) = self.setMinSize(value)

template maxSize*(self: Window): untyped = self.getMaxSize()
template `maxSize=`*(self: Window; value) = self.setMaxSize(value)

template keepTitleVisible*(self: Window): untyped = self.getKeepTitleVisible()
template `keepTitleVisible=`*(self: Window; value) = self.setKeepTitleVisible(value)

template contentScaleSize*(self: Window): untyped = self.getContentScaleSize()
template `contentScaleSize=`*(self: Window; value) = self.setContentScaleSize(value)

template contentScaleMode*(self: Window): untyped = self.getContentScaleMode()
template `contentScaleMode=`*(self: Window; value) = self.setContentScaleMode(value)

template contentScaleAspect*(self: Window): untyped = self.getContentScaleAspect()
template `contentScaleAspect=`*(self: Window; value) = self.setContentScaleAspect(value)

template contentScaleStretch*(self: Window): untyped = self.getContentScaleStretch()
template `contentScaleStretch=`*(self: Window; value) = self.setContentScaleStretch(value)

template contentScaleFactor*(self: Window): untyped = self.getContentScaleFactor()
template `contentScaleFactor=`*(self: Window; value) = self.setContentScaleFactor(value)

template autoTranslate*(self: Window): untyped = self.isAutoTranslating()
template `autoTranslate=`*(self: Window; value) = self.setAutoTranslate(value)

template accessibilityName*(self: Window): untyped = self.getAccessibilityName()
template `accessibilityName=`*(self: Window; value) = self.setAccessibilityName(value)

template accessibilityDescription*(self: Window): untyped = self.getAccessibilityDescription()
template `accessibilityDescription=`*(self: Window; value) = self.setAccessibilityDescription(value)

template theme*(self: Window): untyped = self.getTheme()
template `theme=`*(self: Window; value) = self.setTheme(value)

template themeTypeVariation*(self: Window): untyped = self.getThemeTypeVariation()
template `themeTypeVariation=`*(self: Window; value) = self.setThemeTypeVariation(value)
