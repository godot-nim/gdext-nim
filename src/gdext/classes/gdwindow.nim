{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdviewport; export gdviewport

method getContentsMinimumSize*(self: Window): Vector2 {.base.} = (discard)
proc getContentsMinimumSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Window](p_instance).getContentsMinimumSize().encode(r_ret)
template getContentsMinimumSize_bind*(_: typedesc[Window]): ClassCallVirtual = getContentsMinimumSize

proc setTitle*(self: Window; title: String): void =
  expandMethodBind(className Window, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title])

proc getTitle*(self: Window): String =
  expandMethodBind(className Window, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getWindowId*(self: Window): int32 =
  expandMethodBind(className Window, "get_window_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setInitialPosition*(self: Window; initialPosition: Window_WindowInitialPosition): void =
  expandMethodBind(className Window, "set_initial_position", 4084468099)
  methodbind.ptrcall(self, [getPtr initialPosition])

proc getInitialPosition*(self: Window): Window_WindowInitialPosition =
  expandMethodBind(className Window, "get_initial_position", 4294066647)
  var ret: encoded Window_WindowInitialPosition
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_WindowInitialPosition)

proc setCurrentScreen*(self: Window; index: int32): void =
  expandMethodBind(className Window, "set_current_screen", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc getCurrentScreen*(self: Window): int32 =
  expandMethodBind(className Window, "get_current_screen", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPosition*(self: Window; position: Vector2i): void =
  expandMethodBind(className Window, "set_position", 1130785943)
  methodbind.ptrcall(self, [getPtr position])

proc getPosition*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_position", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc moveToCenter*(self: Window): void =
  expandMethodBind(className Window, "move_to_center", 3218959716)
  methodbind.ptrcall(self, [])

proc setSize*(self: Window; size: Vector2i): void =
  expandMethodBind(className Window, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc resetSize*(self: Window): void =
  expandMethodBind(className Window, "reset_size", 3218959716)
  methodbind.ptrcall(self, [])

proc getPositionWithDecorations*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_position_with_decorations", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc getSizeWithDecorations*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_size_with_decorations", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setMaxSize*(self: Window; maxSize: Vector2i): void =
  expandMethodBind(className Window, "set_max_size", 1130785943)
  methodbind.ptrcall(self, [getPtr maxSize])

proc getMaxSize*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_max_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setMinSize*(self: Window; minSize: Vector2i): void =
  expandMethodBind(className Window, "set_min_size", 1130785943)
  methodbind.ptrcall(self, [getPtr minSize])

proc getMinSize*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_min_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setMode*(self: Window; mode: Window_Mode): void =
  expandMethodBind(className Window, "set_mode", 3095236531)
  methodbind.ptrcall(self, [getPtr mode])

proc getMode*(self: Window): Window_Mode =
  expandMethodBind(className Window, "get_mode", 2566346114)
  var ret: encoded Window_Mode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_Mode)

proc setFlag*(self: Window; flag: Window_Flags; enabled: bool): void =
  expandMethodBind(className Window, "set_flag", 3426449779)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled])

proc getFlag*(self: Window; flag: Window_Flags): bool =
  expandMethodBind(className Window, "get_flag", 3062752289)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag], addr ret)
  (addr ret).decode_result(bool)

proc isMaximizeAllowed*(self: Window): bool =
  expandMethodBind(className Window, "is_maximize_allowed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc requestAttention*(self: Window): void =
  expandMethodBind(className Window, "request_attention", 3218959716)
  methodbind.ptrcall(self, [])

proc moveToForeground*(self: Window): void =
  expandMethodBind(className Window, "move_to_foreground", 3218959716)
  methodbind.ptrcall(self, [])

proc setVisible*(self: Window; visible: bool): void =
  expandMethodBind(className Window, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible])

proc isVisible*(self: Window): bool =
  expandMethodBind(className Window, "is_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc hide*(self: Window): void =
  expandMethodBind(className Window, "hide", 3218959716)
  methodbind.ptrcall(self, [])

proc show*(self: Window): void =
  expandMethodBind(className Window, "show", 3218959716)
  methodbind.ptrcall(self, [])

proc setTransient*(self: Window; transient: bool): void =
  expandMethodBind(className Window, "set_transient", 2586408642)
  methodbind.ptrcall(self, [getPtr transient])

proc isTransient*(self: Window): bool =
  expandMethodBind(className Window, "is_transient", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTransientToFocused*(self: Window; enable: bool): void =
  expandMethodBind(className Window, "set_transient_to_focused", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isTransientToFocused*(self: Window): bool =
  expandMethodBind(className Window, "is_transient_to_focused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setExclusive*(self: Window; exclusive: bool): void =
  expandMethodBind(className Window, "set_exclusive", 2586408642)
  methodbind.ptrcall(self, [getPtr exclusive])

proc isExclusive*(self: Window): bool =
  expandMethodBind(className Window, "is_exclusive", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUnparentWhenInvisible*(self: Window; unparent: bool): void =
  expandMethodBind(className Window, "set_unparent_when_invisible", 2586408642)
  methodbind.ptrcall(self, [getPtr unparent])

proc canDraw*(self: Window): bool =
  expandMethodBind(className Window, "can_draw", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc hasFocus*(self: Window): bool =
  expandMethodBind(className Window, "has_focus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc grabFocus*(self: Window): void =
  expandMethodBind(className Window, "grab_focus", 3218959716)
  methodbind.ptrcall(self, [])

proc setImeActive*(self: Window; active: bool): void =
  expandMethodBind(className Window, "set_ime_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc setImePosition*(self: Window; position: Vector2i): void =
  expandMethodBind(className Window, "set_ime_position", 1130785943)
  methodbind.ptrcall(self, [getPtr position])

proc isEmbedded*(self: Window): bool =
  expandMethodBind(className Window, "is_embedded", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getContentsMinimumSize*(self: Window): Vector2 =
  expandMethodBind(className Window, "get_contents_minimum_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setForceNative*(self: Window; forceNative: bool): void =
  expandMethodBind(className Window, "set_force_native", 2586408642)
  methodbind.ptrcall(self, [getPtr forceNative])

proc getForceNative*(self: Window): bool =
  expandMethodBind(className Window, "get_force_native", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setContentScaleSize*(self: Window; size: Vector2i): void =
  expandMethodBind(className Window, "set_content_scale_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getContentScaleSize*(self: Window): Vector2i =
  expandMethodBind(className Window, "get_content_scale_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setContentScaleMode*(self: Window; mode: Window_ContentScaleMode): void =
  expandMethodBind(className Window, "set_content_scale_mode", 2937716473)
  methodbind.ptrcall(self, [getPtr mode])

proc getContentScaleMode*(self: Window): Window_ContentScaleMode =
  expandMethodBind(className Window, "get_content_scale_mode", 161585230)
  var ret: encoded Window_ContentScaleMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_ContentScaleMode)

proc setContentScaleAspect*(self: Window; aspect: Window_ContentScaleAspect): void =
  expandMethodBind(className Window, "set_content_scale_aspect", 2370399418)
  methodbind.ptrcall(self, [getPtr aspect])

proc getContentScaleAspect*(self: Window): Window_ContentScaleAspect =
  expandMethodBind(className Window, "get_content_scale_aspect", 4158790715)
  var ret: encoded Window_ContentScaleAspect
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_ContentScaleAspect)

proc setContentScaleStretch*(self: Window; stretch: Window_ContentScaleStretch): void =
  expandMethodBind(className Window, "set_content_scale_stretch", 349355940)
  methodbind.ptrcall(self, [getPtr stretch])

proc getContentScaleStretch*(self: Window): Window_ContentScaleStretch =
  expandMethodBind(className Window, "get_content_scale_stretch", 536857316)
  var ret: encoded Window_ContentScaleStretch
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_ContentScaleStretch)

proc setKeepTitleVisible*(self: Window; titleVisible: bool): void =
  expandMethodBind(className Window, "set_keep_title_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr titleVisible])

proc getKeepTitleVisible*(self: Window): bool =
  expandMethodBind(className Window, "get_keep_title_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setContentScaleFactor*(self: Window; factor: Float): void =
  expandMethodBind(className Window, "set_content_scale_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor])

proc getContentScaleFactor*(self: Window): Float =
  expandMethodBind(className Window, "get_content_scale_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setUseFontOversampling*(self: Window; enable: bool): void =
  expandMethodBind(className Window, "set_use_font_oversampling", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingFontOversampling*(self: Window): bool =
  expandMethodBind(className Window, "is_using_font_oversampling", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMousePassthroughPolygon*(self: Window; polygon: PackedVector2Array): void =
  expandMethodBind(className Window, "set_mouse_passthrough_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon])

proc getMousePassthroughPolygon*(self: Window): PackedVector2Array =
  expandMethodBind(className Window, "get_mouse_passthrough_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setWrapControls*(self: Window; enable: bool): void =
  expandMethodBind(className Window, "set_wrap_controls", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isWrappingControls*(self: Window): bool =
  expandMethodBind(className Window, "is_wrapping_controls", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc childControlsChanged*(self: Window): void =
  expandMethodBind(className Window, "child_controls_changed", 3218959716)
  methodbind.ptrcall(self, [])

proc setTheme*(self: Window; theme: gdref Theme): void =
  expandMethodBind(className Window, "set_theme", 2326690814)
  methodbind.ptrcall(self, [getPtr theme])

proc getTheme*(self: Window): gdref Theme =
  expandMethodBind(className Window, "get_theme", 3846893731)
  var ret: encoded gdref Theme
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Theme)

proc setThemeTypeVariation*(self: Window; themeType: StringName): void =
  expandMethodBind(className Window, "set_theme_type_variation", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType])

proc getThemeTypeVariation*(self: Window): StringName =
  expandMethodBind(className Window, "get_theme_type_variation", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc beginBulkThemeOverride*(self: Window): void =
  expandMethodBind(className Window, "begin_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [])

proc endBulkThemeOverride*(self: Window): void =
  expandMethodBind(className Window, "end_bulk_theme_override", 3218959716)
  methodbind.ptrcall(self, [])

proc addThemeIconOverride*(self: Window; name: StringName; texture: gdref Texture2D): void =
  expandMethodBind(className Window, "add_theme_icon_override", 1373065600)
  methodbind.ptrcall(self, [getPtr name, getPtr texture])

proc addThemeStyleboxOverride*(self: Window; name: StringName; stylebox: gdref StyleBox): void =
  expandMethodBind(className Window, "add_theme_stylebox_override", 4188838905)
  methodbind.ptrcall(self, [getPtr name, getPtr stylebox])

proc addThemeFontOverride*(self: Window; name: StringName; font: gdref Font): void =
  expandMethodBind(className Window, "add_theme_font_override", 3518018674)
  methodbind.ptrcall(self, [getPtr name, getPtr font])

proc addThemeFontSizeOverride*(self: Window; name: StringName; fontSize: int32): void =
  expandMethodBind(className Window, "add_theme_font_size_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr fontSize])

proc addThemeColorOverride*(self: Window; name: StringName; color: Color): void =
  expandMethodBind(className Window, "add_theme_color_override", 4260178595)
  methodbind.ptrcall(self, [getPtr name, getPtr color])

proc addThemeConstantOverride*(self: Window; name: StringName; constant: int32): void =
  expandMethodBind(className Window, "add_theme_constant_override", 2415702435)
  methodbind.ptrcall(self, [getPtr name, getPtr constant])

proc removeThemeIconOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_icon_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc removeThemeStyleboxOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_stylebox_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc removeThemeFontOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_font_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc removeThemeFontSizeOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_font_size_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc removeThemeColorOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_color_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc removeThemeConstantOverride*(self: Window; name: StringName): void =
  expandMethodBind(className Window, "remove_theme_constant_override", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc getThemeIcon*(self: Window; name: StringName; themeType: StringName = stringName ""): gdref Texture2D =
  expandMethodBind(className Window, "get_theme_icon", 2336455395)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getThemeStylebox*(self: Window; name: StringName; themeType: StringName = stringName ""): gdref StyleBox =
  expandMethodBind(className Window, "get_theme_stylebox", 2759935355)
  var ret: encoded gdref StyleBox
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref StyleBox)

proc getThemeFont*(self: Window; name: StringName; themeType: StringName = stringName ""): gdref Font =
  expandMethodBind(className Window, "get_theme_font", 387378635)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref Font)

proc getThemeFontSize*(self: Window; name: StringName; themeType: StringName = stringName ""): int32 =
  expandMethodBind(className Window, "get_theme_font_size", 229578101)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(int32)

proc getThemeColor*(self: Window; name: StringName; themeType: StringName = stringName ""): Color =
  expandMethodBind(className Window, "get_theme_color", 2377051548)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(Color)

proc getThemeConstant*(self: Window; name: StringName; themeType: StringName = stringName ""): int32 =
  expandMethodBind(className Window, "get_theme_constant", 229578101)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(int32)

proc hasThemeIconOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_icon_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeStyleboxOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_stylebox_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_font_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontSizeOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_font_size_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeColorOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_color_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeConstantOverride*(self: Window; name: StringName): bool =
  expandMethodBind(className Window, "has_theme_constant_override", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeIcon*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_icon", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeStylebox*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_stylebox", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFont*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_font", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeFontSize*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_font_size", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeColor*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_color", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc hasThemeConstant*(self: Window; name: StringName; themeType: StringName = stringName ""): bool =
  expandMethodBind(className Window, "has_theme_constant", 1187511791)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc getThemeDefaultBaseScale*(self: Window): Float =
  expandMethodBind(className Window, "get_theme_default_base_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getThemeDefaultFont*(self: Window): gdref Font =
  expandMethodBind(className Window, "get_theme_default_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Font)

proc getThemeDefaultFontSize*(self: Window): int32 =
  expandMethodBind(className Window, "get_theme_default_font_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLayoutDirection*(self: Window; direction: Window_LayoutDirection): void =
  expandMethodBind(className Window, "set_layout_direction", 3094704184)
  methodbind.ptrcall(self, [getPtr direction])

proc getLayoutDirection*(self: Window): Window_LayoutDirection =
  expandMethodBind(className Window, "get_layout_direction", 3909617982)
  var ret: encoded Window_LayoutDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Window_LayoutDirection)

proc isLayoutRtl*(self: Window): bool =
  expandMethodBind(className Window, "is_layout_rtl", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAutoTranslate*(self: Window; enable: bool): void =
  expandMethodBind(className Window, "set_auto_translate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isAutoTranslating*(self: Window): bool =
  expandMethodBind(className Window, "is_auto_translating", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc popup*(self: Window; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  expandMethodBind(className Window, "popup", 1680304321)
  methodbind.ptrcall(self, [getPtr rect])

proc popupOnParent*(self: Window; parentRect: Rect2i): void =
  expandMethodBind(className Window, "popup_on_parent", 1763793166)
  methodbind.ptrcall(self, [getPtr parentRect])

proc popupCentered*(self: Window; minsize: Vector2i = vector2i(0, 0)): void =
  expandMethodBind(className Window, "popup_centered", 3447975422)
  methodbind.ptrcall(self, [getPtr minsize])

proc popupCenteredRatio*(self: Window; ratio: Float = 0.8): void =
  expandMethodBind(className Window, "popup_centered_ratio", 1014814997)
  methodbind.ptrcall(self, [getPtr ratio])

proc popupCenteredClamped*(self: Window; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  expandMethodBind(className Window, "popup_centered_clamped", 2613752477)
  methodbind.ptrcall(self, [getPtr minsize, getPtr fallbackRatio])

proc popupExclusive*(self: Window; fromNode: Node; rect: Rect2i = rect2i(0, 0, 0, 0)): void =
  expandMethodBind(className Window, "popup_exclusive", 2134721627)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr rect])

proc popupExclusiveOnParent*(self: Window; fromNode: Node; parentRect: Rect2i): void =
  expandMethodBind(className Window, "popup_exclusive_on_parent", 2344671043)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr parentRect])

proc popupExclusiveCentered*(self: Window; fromNode: Node; minsize: Vector2i = vector2i(0, 0)): void =
  expandMethodBind(className Window, "popup_exclusive_centered", 3357594017)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr minsize])

proc popupExclusiveCenteredRatio*(self: Window; fromNode: Node; ratio: Float = 0.8): void =
  expandMethodBind(className Window, "popup_exclusive_centered_ratio", 2284776287)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr ratio])

proc popupExclusiveCenteredClamped*(self: Window; fromNode: Node; minsize: Vector2i = vector2i(0, 0); fallbackRatio: Float = 0.75): void =
  expandMethodBind(className Window, "popup_exclusive_centered_clamped", 2612708785)
  methodbind.ptrcall(self, [getPtr fromNode, getPtr minsize, getPtr fallbackRatio])

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

template theme*(self: Window): untyped = self.getTheme()
template `theme=`*(self: Window; value) = self.setTheme(value)

template themeTypeVariation*(self: Window): untyped = self.getThemeTypeVariation()
template `themeTypeVariation=`*(self: Window; value) = self.setThemeTypeVariation(value)

const Window_vmap =
  Viewport.vmap.concat toTable {
    "getcontentsminimumsize" : "_get_contents_minimum_size",
    }
template vmap*(_: typedesc[Window]): Table[string, string] = Window_vmap

proc windowInput*(self: Window; event: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("window_input")
  let args = [event]
  self.emitSignal(signalname, args)

proc filesDropped*(self: Window; files: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("files_dropped")
  let args = [files]
  self.emitSignal(signalname, args)

proc mouseEntered*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_entered")
  self.emitSignal(signalname)

proc mouseExited*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mouse_exited")
  self.emitSignal(signalname)

proc focusEntered*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("focus_entered")
  self.emitSignal(signalname)

proc focusExited*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("focus_exited")
  self.emitSignal(signalname)

proc closeRequested*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("close_requested")
  self.emitSignal(signalname)

proc goBackRequested*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("go_back_requested")
  self.emitSignal(signalname)

proc visibilityChanged*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_changed")
  self.emitSignal(signalname)

proc aboutToPopup*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("about_to_popup")
  self.emitSignal(signalname)

proc themeChanged*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("theme_changed")
  self.emitSignal(signalname)

proc dpiChanged*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("dpi_changed")
  self.emitSignal(signalname)

proc titlebarChanged*(self: Window): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("titlebar_changed")
  self.emitSignal(signalname)