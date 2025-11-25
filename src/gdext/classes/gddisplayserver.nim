{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(DisplayServer, Object)

const InvalidScreen* = -1
const ScreenWithMouseFocus* = -4
const ScreenWithKeyboardFocus* = -3
const ScreenPrimary* = -2
const ScreenOfMainWindow* = -1
const MainWindowId* = 0
const InvalidWindowId* = -1
const InvalidIndicatorId* = -1

proc hasFeature*(self: DisplayServer; feature: DisplayServer_Feature): bool =
  expandMethodBind(className DisplayServer, "has_feature", 334065950)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc getName*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc helpSetSearchCallbacks*(self: DisplayServer; searchCallback: Callable; actionCallback: Callable): void =
  expandMethodBind(className DisplayServer, "help_set_search_callbacks", 1687350599)
  methodbind.ptrcall(self, [getPtr searchCallback, getPtr actionCallback])

proc globalMenuSetPopupCallbacks*(self: DisplayServer; menuRoot: String; openCallback: Callable; closeCallback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_popup_callbacks", 3893727526)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr openCallback, getPtr closeCallback])

proc globalMenuAddSubmenuItem*(self: DisplayServer; menuRoot: String; label: String; submenu: String; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_submenu_item", 2828985934)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr submenu, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_item", 3616842746)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_check_item", 3616842746)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_item", 3867083847)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_check_item", 3867083847)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddRadioCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_radio_check_item", 3616842746)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconRadioCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_radio_check_item", 3867083847)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddMultistateItem*(self: DisplayServer; menuRoot: String; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_multistate_item", 3297554655)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddSeparator*(self: DisplayServer; menuRoot: String; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_separator", 3214812433)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIndexFromText*(self: DisplayServer; menuRoot: String; text: String): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_index_from_text", 2878152881)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr text], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIndexFromTag*(self: DisplayServer; menuRoot: String; tag: Variant): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_index_from_tag", 2941063483)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr tag], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuIsItemChecked*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_checked", 3511468594)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_checkable", 3511468594)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_radio_checkable", 3511468594)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuGetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  expandMethodBind(className DisplayServer, "global_menu_get_item_callback", 748666903)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(Callable)

proc globalMenuGetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  expandMethodBind(className DisplayServer, "global_menu_get_item_key_callback", 748666903)
  var ret: encoded Callable
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(Callable)

proc globalMenuGetItemTag*(self: DisplayServer; menuRoot: String; idx: int32): Variant =
  expandMethodBind(className DisplayServer, "global_menu_get_item_tag", 330672633)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(Variant)

proc globalMenuGetItemText*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_text", 591067909)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_submenu", 591067909)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32): Key =
  expandMethodBind(className DisplayServer, "global_menu_get_item_accelerator", 936065394)
  var ret: encoded Key
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(Key)

proc globalMenuIsItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_disabled", 3511468594)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemHidden*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_hidden", 3511468594)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuGetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_tooltip", 591067909)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemState*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_state", 3422818498)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_max_states", 3422818498)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32): gdref Texture2D =
  expandMethodBind(className DisplayServer, "global_menu_get_item_icon", 3591713183)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc globalMenuGetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_indentation_level", 3422818498)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuSetItemChecked*(self: DisplayServer; menuRoot: String; idx: int32; checked: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_checked", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checked])

proc globalMenuSetItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_checkable", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checkable])

proc globalMenuSetItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_radio_checkable", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checkable])

proc globalMenuSetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_callback", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr callback])

proc globalMenuSetItemHoverCallbacks*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_hover_callbacks", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr callback])

proc globalMenuSetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32; keyCallback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_key_callback", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr keyCallback])

proc globalMenuSetItemTag*(self: DisplayServer; menuRoot: String; idx: int32; tag: Variant): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_tag", 453659863)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr tag])

proc globalMenuSetItemText*(self: DisplayServer; menuRoot: String; idx: int32; text: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_text", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr text])

proc globalMenuSetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32; submenu: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_submenu", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr submenu])

proc globalMenuSetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32; keycode: Key): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_accelerator", 566943293)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr keycode])

proc globalMenuSetItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32; disabled: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_disabled", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr disabled])

proc globalMenuSetItemHidden*(self: DisplayServer; menuRoot: String; idx: int32; hidden: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_hidden", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr hidden])

proc globalMenuSetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32; tooltip: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_tooltip", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr tooltip])

proc globalMenuSetItemState*(self: DisplayServer; menuRoot: String; idx: int32; state: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_state", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr state])

proc globalMenuSetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32; maxStates: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_max_states", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr maxStates])

proc globalMenuSetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_icon", 3201338066)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr icon])

proc globalMenuSetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32; level: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_indentation_level", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr level])

proc globalMenuGetItemCount*(self: DisplayServer; menuRoot: String): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_count", 1321353865)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr menuRoot], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuRemoveItem*(self: DisplayServer; menuRoot: String; idx: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_remove_item", 2956805083)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx])

proc globalMenuClear*(self: DisplayServer; menuRoot: String): void =
  expandMethodBind(className DisplayServer, "global_menu_clear", 83702148)
  methodbind.ptrcall(self, [getPtr menuRoot])

proc globalMenuGetSystemMenuRoots*(self: DisplayServer): Dictionary[Variant, Variant] =
  expandMethodBind(className DisplayServer, "global_menu_get_system_menu_roots", 3102165223)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc ttsIsSpeaking*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "tts_is_speaking", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc ttsIsPaused*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "tts_is_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc ttsGetVoices*(self: DisplayServer): Array[Dictionary[Variant, Variant]] =
  expandMethodBind(className DisplayServer, "tts_get_voices", 3995934104)
  var ret: encoded Array[Dictionary[Variant, Variant]]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Dictionary[Variant, Variant]])

proc ttsGetVoicesForLanguage*(self: DisplayServer; language: String): PackedStringArray =
  expandMethodBind(className DisplayServer, "tts_get_voices_for_language", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr language], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc ttsSpeak*(self: DisplayServer; text: String; voice: String; volume: int32 = 50; pitch: Float = 1.0; rate: Float = 1.0; utteranceId: int32 = 0; interrupt: bool = false): void =
  expandMethodBind(className DisplayServer, "tts_speak", 903992738)
  methodbind.ptrcall(self, [getPtr text, getPtr voice, getPtr volume, getPtr pitch, getPtr rate, getPtr utteranceId, getPtr interrupt])

proc ttsPause*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_pause", 3218959716)
  methodbind.ptrcall(self, [])

proc ttsResume*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_resume", 3218959716)
  methodbind.ptrcall(self, [])

proc ttsStop*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_stop", 3218959716)
  methodbind.ptrcall(self, [])

proc ttsSetUtteranceCallback*(self: DisplayServer; event: DisplayServer_TTSUtteranceEvent; callable: Callable): void =
  expandMethodBind(className DisplayServer, "tts_set_utterance_callback", 109679083)
  methodbind.ptrcall(self, [getPtr event, getPtr callable])

proc isDarkModeSupported*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_dark_mode_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isDarkMode*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_dark_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getAccentColor*(self: DisplayServer): Color =
  expandMethodBind(className DisplayServer, "get_accent_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc getBaseColor*(self: DisplayServer): Color =
  expandMethodBind(className DisplayServer, "get_base_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setSystemThemeChangeCallback*(self: DisplayServer; callable: Callable): void =
  expandMethodBind(className DisplayServer, "set_system_theme_change_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc mouseSetMode*(self: DisplayServer; mouseMode: DisplayServer_MouseMode): void =
  expandMethodBind(className DisplayServer, "mouse_set_mode", 348288463)
  methodbind.ptrcall(self, [getPtr mouseMode])

proc mouseGetMode*(self: DisplayServer): DisplayServer_MouseMode =
  expandMethodBind(className DisplayServer, "mouse_get_mode", 1353961651)
  var ret: encoded DisplayServer_MouseMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(DisplayServer_MouseMode)

proc warpMouse*(self: DisplayServer; position: Vector2i): void =
  expandMethodBind(className DisplayServer, "warp_mouse", 1130785943)
  methodbind.ptrcall(self, [getPtr position])

proc mouseGetPosition*(self: DisplayServer): Vector2i =
  expandMethodBind(className DisplayServer, "mouse_get_position", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc mouseGetButtonState*(self: DisplayServer): set[MouseButtonMask] =
  expandMethodBind(className DisplayServer, "mouse_get_button_state", 2512161324)
  var ret: encoded set[MouseButtonMask]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[MouseButtonMask])

proc clipboardSet*(self: DisplayServer; clipboard: String): void =
  expandMethodBind(className DisplayServer, "clipboard_set", 83702148)
  methodbind.ptrcall(self, [getPtr clipboard])

proc clipboardGet*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "clipboard_get", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc clipboardGetImage*(self: DisplayServer): gdref Image =
  expandMethodBind(className DisplayServer, "clipboard_get_image", 4190603485)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc clipboardHas*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "clipboard_has", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc clipboardHasImage*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "clipboard_has_image", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc clipboardSetPrimary*(self: DisplayServer; clipboardPrimary: String): void =
  expandMethodBind(className DisplayServer, "clipboard_set_primary", 83702148)
  methodbind.ptrcall(self, [getPtr clipboardPrimary])

proc clipboardGetPrimary*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "clipboard_get_primary", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDisplayCutouts*(self: DisplayServer): Array[Rect2] =
  expandMethodBind(className DisplayServer, "get_display_cutouts", 3995934104)
  var ret: encoded Array[Rect2]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Rect2])

proc getDisplaySafeArea*(self: DisplayServer): Rect2i =
  expandMethodBind(className DisplayServer, "get_display_safe_area", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2i)

proc getScreenCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_screen_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPrimaryScreen*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_primary_screen", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getKeyboardFocusScreen*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_keyboard_focus_screen", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getScreenFromRect*(self: DisplayServer; rect: Rect2): int32 =
  expandMethodBind(className DisplayServer, "get_screen_from_rect", 741354659)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr rect], addr ret)
  (addr ret).decode_result(int32)

proc screenGetPosition*(self: DisplayServer; screen: int32 = -1): Vector2i =
  expandMethodBind(className DisplayServer, "screen_get_position", 1725937825)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(Vector2i)

proc screenGetSize*(self: DisplayServer; screen: int32 = -1): Vector2i =
  expandMethodBind(className DisplayServer, "screen_get_size", 1725937825)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(Vector2i)

proc screenGetUsableRect*(self: DisplayServer; screen: int32 = -1): Rect2i =
  expandMethodBind(className DisplayServer, "screen_get_usable_rect", 2439012528)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(Rect2i)

proc screenGetDpi*(self: DisplayServer; screen: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "screen_get_dpi", 181039630)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(int32)

proc screenGetScale*(self: DisplayServer; screen: int32 = -1): Float =
  expandMethodBind(className DisplayServer, "screen_get_scale", 909105437)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(Float)

proc isTouchscreenAvailable*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_touchscreen_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc screenGetMaxScale*(self: DisplayServer): Float =
  expandMethodBind(className DisplayServer, "screen_get_max_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc screenGetRefreshRate*(self: DisplayServer; screen: int32 = -1): Float =
  expandMethodBind(className DisplayServer, "screen_get_refresh_rate", 909105437)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(Float)

proc screenGetPixel*(self: DisplayServer; position: Vector2i): Color =
  expandMethodBind(className DisplayServer, "screen_get_pixel", 1532707496)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(Color)

proc screenGetImage*(self: DisplayServer; screen: int32 = -1): gdref Image =
  expandMethodBind(className DisplayServer, "screen_get_image", 3813388802)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(gdref Image)

proc screenGetImageRect*(self: DisplayServer; rect: Rect2i): gdref Image =
  expandMethodBind(className DisplayServer, "screen_get_image_rect", 2601441065)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr rect], addr ret)
  (addr ret).decode_result(gdref Image)

proc screenSetOrientation*(self: DisplayServer; orientation: DisplayServer_ScreenOrientation; screen: int32 = -1): void =
  expandMethodBind(className DisplayServer, "screen_set_orientation", 2211511631)
  methodbind.ptrcall(self, [getPtr orientation, getPtr screen])

proc screenGetOrientation*(self: DisplayServer; screen: int32 = -1): DisplayServer_ScreenOrientation =
  expandMethodBind(className DisplayServer, "screen_get_orientation", 133818562)
  var ret: encoded DisplayServer_ScreenOrientation
  methodbind.ptrcall(self, [getPtr screen], addr ret)
  (addr ret).decode_result(DisplayServer_ScreenOrientation)

proc screenSetKeepOn*(self: DisplayServer; enable: bool): void =
  expandMethodBind(className DisplayServer, "screen_set_keep_on", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc screenIsKeptOn*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "screen_is_kept_on", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getWindowList*(self: DisplayServer): PackedInt32Array =
  expandMethodBind(className DisplayServer, "get_window_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getWindowAtScreenPosition*(self: DisplayServer; position: Vector2i): int32 =
  expandMethodBind(className DisplayServer, "get_window_at_screen_position", 2485466453)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc windowGetNativeHandle*(self: DisplayServer; handleType: DisplayServer_HandleType; windowId: int32 = 0): int64 =
  expandMethodBind(className DisplayServer, "window_get_native_handle", 1096425680)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr handleType, getPtr windowId], addr ret)
  (addr ret).decode_result(int64)

proc windowGetActivePopup*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "window_get_active_popup", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc windowSetPopupSafeRect*(self: DisplayServer; window: int32; rect: Rect2i): void =
  expandMethodBind(className DisplayServer, "window_set_popup_safe_rect", 3317281434)
  methodbind.ptrcall(self, [getPtr window, getPtr rect])

proc windowGetPopupSafeRect*(self: DisplayServer; window: int32): Rect2i =
  expandMethodBind(className DisplayServer, "window_get_popup_safe_rect", 2161169500)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [getPtr window], addr ret)
  (addr ret).decode_result(Rect2i)

proc windowSetTitle*(self: DisplayServer; title: String; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_title", 441246282)
  methodbind.ptrcall(self, [getPtr title, getPtr windowId])

proc windowGetTitleSize*(self: DisplayServer; title: String; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_title_size", 2925301799)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr title, getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMousePassthrough*(self: DisplayServer; region: PackedVector2Array; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_mouse_passthrough", 1993637420)
  methodbind.ptrcall(self, [getPtr region, getPtr windowId])

proc windowGetCurrentScreen*(self: DisplayServer; windowId: int32 = 0): int32 =
  expandMethodBind(className DisplayServer, "window_get_current_screen", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(int32)

proc windowSetCurrentScreen*(self: DisplayServer; screen: int32; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_current_screen", 2230941749)
  methodbind.ptrcall(self, [getPtr screen, getPtr windowId])

proc windowGetPosition*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_position", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowGetPositionWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_position_with_decorations", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetPosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_position", 2019273902)
  methodbind.ptrcall(self, [getPtr position, getPtr windowId])

proc windowGetSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_size", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetSize*(self: DisplayServer; size: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_size", 2019273902)
  methodbind.ptrcall(self, [getPtr size, getPtr windowId])

proc windowSetRectChangedCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_rect_changed_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId])

proc windowSetWindowEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_window_event_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId])

proc windowSetInputEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_input_event_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId])

proc windowSetInputTextCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_input_text_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId])

proc windowSetDropFilesCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_drop_files_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId])

proc windowGetAttachedInstanceId*(self: DisplayServer; windowId: int32 = 0): uint64 =
  expandMethodBind(className DisplayServer, "window_get_attached_instance_id", 1591665591)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(uint64)

proc windowGetMaxSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_max_size", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMaxSize*(self: DisplayServer; maxSize: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_max_size", 2019273902)
  methodbind.ptrcall(self, [getPtr maxSize, getPtr windowId])

proc windowGetMinSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_min_size", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMinSize*(self: DisplayServer; minSize: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_min_size", 2019273902)
  methodbind.ptrcall(self, [getPtr minSize, getPtr windowId])

proc windowGetSizeWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_size_with_decorations", 763922886)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowGetMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_WindowMode =
  expandMethodBind(className DisplayServer, "window_get_mode", 2185728461)
  var ret: encoded DisplayServer_WindowMode
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(DisplayServer_WindowMode)

proc windowSetMode*(self: DisplayServer; mode: DisplayServer_WindowMode; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_mode", 1319965401)
  methodbind.ptrcall(self, [getPtr mode, getPtr windowId])

proc windowSetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; enabled: bool; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_flag", 254894155)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled, getPtr windowId])

proc windowGetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_get_flag", 802816991)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr flag, getPtr windowId], addr ret)
  (addr ret).decode_result(bool)

proc windowSetWindowButtonsOffset*(self: DisplayServer; offset: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_window_buttons_offset", 2019273902)
  methodbind.ptrcall(self, [getPtr offset, getPtr windowId])

proc windowGetSafeTitleMargins*(self: DisplayServer; windowId: int32 = 0): Vector3i =
  expandMethodBind(className DisplayServer, "window_get_safe_title_margins", 2295066620)
  var ret: encoded Vector3i
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(Vector3i)

proc windowRequestAttention*(self: DisplayServer; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_request_attention", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId])

proc windowMoveToForeground*(self: DisplayServer; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_move_to_foreground", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId])

proc windowIsFocused*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_is_focused", 1051549951)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(bool)

proc windowCanDraw*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_can_draw", 1051549951)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(bool)

proc windowSetTransient*(self: DisplayServer; windowId: int32; parentWindowId: int32): void =
  expandMethodBind(className DisplayServer, "window_set_transient", 3937882851)
  methodbind.ptrcall(self, [getPtr windowId, getPtr parentWindowId])

proc windowSetExclusive*(self: DisplayServer; windowId: int32; exclusive: bool): void =
  expandMethodBind(className DisplayServer, "window_set_exclusive", 300928843)
  methodbind.ptrcall(self, [getPtr windowId, getPtr exclusive])

proc windowSetImeActive*(self: DisplayServer; active: bool; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_ime_active", 1661950165)
  methodbind.ptrcall(self, [getPtr active, getPtr windowId])

proc windowSetImePosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_ime_position", 2019273902)
  methodbind.ptrcall(self, [getPtr position, getPtr windowId])

proc windowSetVsyncMode*(self: DisplayServer; vsyncMode: DisplayServer_VSyncMode; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_vsync_mode", 2179333492)
  methodbind.ptrcall(self, [getPtr vsyncMode, getPtr windowId])

proc windowGetVsyncMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_VSyncMode =
  expandMethodBind(className DisplayServer, "window_get_vsync_mode", 578873795)
  var ret: encoded DisplayServer_VSyncMode
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(DisplayServer_VSyncMode)

proc windowIsMaximizeAllowed*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_is_maximize_allowed", 1051549951)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(bool)

proc windowMaximizeOnTitleDblClick*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "window_maximize_on_title_dbl_click", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc windowMinimizeOnTitleDblClick*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "window_minimize_on_title_dbl_click", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc windowStartDrag*(self: DisplayServer; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_start_drag", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId])

proc windowStartResize*(self: DisplayServer; edge: DisplayServer_WindowResizeEdge; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_start_resize", 4009722312)
  methodbind.ptrcall(self, [getPtr edge, getPtr windowId])

proc accessibilityShouldIncreaseContrast*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "accessibility_should_increase_contrast", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc accessibilityShouldReduceAnimation*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "accessibility_should_reduce_animation", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc accessibilityShouldReduceTransparency*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "accessibility_should_reduce_transparency", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc accessibilityScreenReaderActive*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "accessibility_screen_reader_active", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc accessibilityCreateElement*(self: DisplayServer; windowId: int32; role: DisplayServer_AccessibilityRole): RID =
  expandMethodBind(className DisplayServer, "accessibility_create_element", 2968347744)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr windowId, getPtr role], addr ret)
  (addr ret).decode_result(RID)

proc accessibilityCreateSubElement*(self: DisplayServer; parentRid: RID; role: DisplayServer_AccessibilityRole; insertPos: int32 = -1): RID =
  expandMethodBind(className DisplayServer, "accessibility_create_sub_element", 1949948826)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr parentRid, getPtr role, getPtr insertPos], addr ret)
  (addr ret).decode_result(RID)

proc accessibilityCreateSubTextEditElements*(self: DisplayServer; parentRid: RID; shapedText: RID; minHeight: Float; insertPos: int32 = -1): RID =
  expandMethodBind(className DisplayServer, "accessibility_create_sub_text_edit_elements", 3328635351)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr parentRid, getPtr shapedText, getPtr minHeight, getPtr insertPos], addr ret)
  (addr ret).decode_result(RID)

proc accessibilityHasElement*(self: DisplayServer; id: RID): bool =
  expandMethodBind(className DisplayServer, "accessibility_has_element", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc accessibilityFreeElement*(self: DisplayServer; id: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_free_element", 2722037293)
  methodbind.ptrcall(self, [getPtr id])

proc accessibilityElementSetMeta*(self: DisplayServer; id: RID; meta: Variant): void =
  expandMethodBind(className DisplayServer, "accessibility_element_set_meta", 3175752987)
  methodbind.ptrcall(self, [getPtr id, getPtr meta])

proc accessibilityElementGetMeta*(self: DisplayServer; id: RID): Variant =
  expandMethodBind(className DisplayServer, "accessibility_element_get_meta", 4171304767)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Variant)

proc accessibilitySetWindowRect*(self: DisplayServer; windowId: int32; rectOut: Rect2; rectIn: Rect2): void =
  expandMethodBind(className DisplayServer, "accessibility_set_window_rect", 2386961724)
  methodbind.ptrcall(self, [getPtr windowId, getPtr rectOut, getPtr rectIn])

proc accessibilitySetWindowFocused*(self: DisplayServer; windowId: int32; focused: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_set_window_focused", 300928843)
  methodbind.ptrcall(self, [getPtr windowId, getPtr focused])

proc accessibilityUpdateSetFocus*(self: DisplayServer; id: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_focus", 2722037293)
  methodbind.ptrcall(self, [getPtr id])

proc accessibilityGetWindowRoot*(self: DisplayServer; windowId: int32): RID =
  expandMethodBind(className DisplayServer, "accessibility_get_window_root", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr windowId], addr ret)
  (addr ret).decode_result(RID)

proc accessibilityUpdateSetRole*(self: DisplayServer; id: RID; role: DisplayServer_AccessibilityRole): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_role", 3352768215)
  methodbind.ptrcall(self, [getPtr id, getPtr role])

proc accessibilityUpdateSetName*(self: DisplayServer; id: RID; name: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_name", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc accessibilityUpdateSetExtraInfo*(self: DisplayServer; id: RID; name: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_extra_info", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name])

proc accessibilityUpdateSetDescription*(self: DisplayServer; id: RID; description: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description])

proc accessibilityUpdateSetValue*(self: DisplayServer; id: RID; value: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_value", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr value])

proc accessibilityUpdateSetTooltip*(self: DisplayServer; id: RID; tooltip: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_tooltip", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr tooltip])

proc accessibilityUpdateSetBounds*(self: DisplayServer; id: RID; pRect: Rect2): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_bounds", 1378122625)
  methodbind.ptrcall(self, [getPtr id, getPtr pRect])

proc accessibilityUpdateSetTransform*(self: DisplayServer; id: RID; transform: Transform2D): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr id, getPtr transform])

proc accessibilityUpdateAddChild*(self: DisplayServer; id: RID; childId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_child", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr childId])

proc accessibilityUpdateAddRelatedControls*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_controls", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateAddRelatedDetails*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_details", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateAddRelatedDescribedBy*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_described_by", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateAddRelatedFlowTo*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_flow_to", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateAddRelatedLabeledBy*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_labeled_by", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateAddRelatedRadioGroup*(self: DisplayServer; id: RID; relatedId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_related_radio_group", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId])

proc accessibilityUpdateSetActiveDescendant*(self: DisplayServer; id: RID; otherId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_active_descendant", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId])

proc accessibilityUpdateSetNextOnLine*(self: DisplayServer; id: RID; otherId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_next_on_line", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId])

proc accessibilityUpdateSetPreviousOnLine*(self: DisplayServer; id: RID; otherId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_previous_on_line", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId])

proc accessibilityUpdateSetMemberOf*(self: DisplayServer; id: RID; groupId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_member_of", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr groupId])

proc accessibilityUpdateSetInPageLinkTarget*(self: DisplayServer; id: RID; otherId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_in_page_link_target", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId])

proc accessibilityUpdateSetErrorMessage*(self: DisplayServer; id: RID; otherId: RID): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_error_message", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId])

proc accessibilityUpdateSetLive*(self: DisplayServer; id: RID; live: DisplayServer_AccessibilityLiveMode): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_live", 2683302212)
  methodbind.ptrcall(self, [getPtr id, getPtr live])

proc accessibilityUpdateAddAction*(self: DisplayServer; id: RID; action: DisplayServer_AccessibilityAction; callable: Callable): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_action", 2898696987)
  methodbind.ptrcall(self, [getPtr id, getPtr action, getPtr callable])

proc accessibilityUpdateAddCustomAction*(self: DisplayServer; id: RID; actionId: int32; actionDescription: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_add_custom_action", 4153150897)
  methodbind.ptrcall(self, [getPtr id, getPtr actionId, getPtr actionDescription])

proc accessibilityUpdateSetTableRowCount*(self: DisplayServer; id: RID; count: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_row_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr count])

proc accessibilityUpdateSetTableColumnCount*(self: DisplayServer; id: RID; count: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_column_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr count])

proc accessibilityUpdateSetTableRowIndex*(self: DisplayServer; id: RID; index: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_row_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index])

proc accessibilityUpdateSetTableColumnIndex*(self: DisplayServer; id: RID; index: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_column_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index])

proc accessibilityUpdateSetTableCellPosition*(self: DisplayServer; id: RID; rowIndex: int32; columnIndex: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_cell_position", 4288446313)
  methodbind.ptrcall(self, [getPtr id, getPtr rowIndex, getPtr columnIndex])

proc accessibilityUpdateSetTableCellSpan*(self: DisplayServer; id: RID; rowSpan: int32; columnSpan: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_table_cell_span", 4288446313)
  methodbind.ptrcall(self, [getPtr id, getPtr rowSpan, getPtr columnSpan])

proc accessibilityUpdateSetListItemCount*(self: DisplayServer; id: RID; size: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_item_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr size])

proc accessibilityUpdateSetListItemIndex*(self: DisplayServer; id: RID; index: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_item_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index])

proc accessibilityUpdateSetListItemLevel*(self: DisplayServer; id: RID; level: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_item_level", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr level])

proc accessibilityUpdateSetListItemSelected*(self: DisplayServer; id: RID; selected: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_item_selected", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr selected])

proc accessibilityUpdateSetListItemExpanded*(self: DisplayServer; id: RID; expanded: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_item_expanded", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr expanded])

proc accessibilityUpdateSetPopupType*(self: DisplayServer; id: RID; popup: DisplayServer_AccessibilityPopupType): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_popup_type", 2040885448)
  methodbind.ptrcall(self, [getPtr id, getPtr popup])

proc accessibilityUpdateSetChecked*(self: DisplayServer; id: RID; checekd: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_checked", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr checekd])

proc accessibilityUpdateSetNumValue*(self: DisplayServer; id: RID; position: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_num_value", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position])

proc accessibilityUpdateSetNumRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_num_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max])

proc accessibilityUpdateSetNumStep*(self: DisplayServer; id: RID; step: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_num_step", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr step])

proc accessibilityUpdateSetNumJump*(self: DisplayServer; id: RID; jump: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_num_jump", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr jump])

proc accessibilityUpdateSetScrollX*(self: DisplayServer; id: RID; position: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_scroll_x", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position])

proc accessibilityUpdateSetScrollXRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_scroll_x_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max])

proc accessibilityUpdateSetScrollY*(self: DisplayServer; id: RID; position: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_scroll_y", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position])

proc accessibilityUpdateSetScrollYRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_scroll_y_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max])

proc accessibilityUpdateSetTextDecorations*(self: DisplayServer; id: RID; underline: bool; strikethrough: bool; overline: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_text_decorations", 1672422386)
  methodbind.ptrcall(self, [getPtr id, getPtr underline, getPtr strikethrough, getPtr overline])

proc accessibilityUpdateSetTextAlign*(self: DisplayServer; id: RID; align: HorizontalAlignment): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_text_align", 3725995085)
  methodbind.ptrcall(self, [getPtr id, getPtr align])

proc accessibilityUpdateSetTextSelection*(self: DisplayServer; id: RID; textStartId: RID; startChar: int32; textEndId: RID; endChar: int32): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_text_selection", 3119144029)
  methodbind.ptrcall(self, [getPtr id, getPtr textStartId, getPtr startChar, getPtr textEndId, getPtr endChar])

proc accessibilityUpdateSetFlag*(self: DisplayServer; id: RID; flag: DisplayServer_AccessibilityFlags; value: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_flag", 3758675396)
  methodbind.ptrcall(self, [getPtr id, getPtr flag, getPtr value])

proc accessibilityUpdateSetClassname*(self: DisplayServer; id: RID; classname: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_classname", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr classname])

proc accessibilityUpdateSetPlaceholder*(self: DisplayServer; id: RID; placeholder: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_placeholder", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr placeholder])

proc accessibilityUpdateSetLanguage*(self: DisplayServer; id: RID; language: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_language", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr language])

proc accessibilityUpdateSetTextOrientation*(self: DisplayServer; id: RID; vertical: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_text_orientation", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr vertical])

proc accessibilityUpdateSetListOrientation*(self: DisplayServer; id: RID; vertical: bool): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_list_orientation", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr vertical])

proc accessibilityUpdateSetShortcut*(self: DisplayServer; id: RID; shortcut: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_shortcut", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr shortcut])

proc accessibilityUpdateSetUrl*(self: DisplayServer; id: RID; url: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_url", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr url])

proc accessibilityUpdateSetRoleDescription*(self: DisplayServer; id: RID; description: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_role_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description])

proc accessibilityUpdateSetStateDescription*(self: DisplayServer; id: RID; description: String): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_state_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description])

proc accessibilityUpdateSetColorValue*(self: DisplayServer; id: RID; color: Color): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_color_value", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color])

proc accessibilityUpdateSetBackgroundColor*(self: DisplayServer; id: RID; color: Color): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_background_color", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color])

proc accessibilityUpdateSetForegroundColor*(self: DisplayServer; id: RID; color: Color): void =
  expandMethodBind(className DisplayServer, "accessibility_update_set_foreground_color", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color])

proc imeGetSelection*(self: DisplayServer): Vector2i =
  expandMethodBind(className DisplayServer, "ime_get_selection", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc imeGetText*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "ime_get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc virtualKeyboardShow*(self: DisplayServer; existingText: String; position: Rect2 = rect2(0, 0, 0, 0); `type`: DisplayServer_VirtualKeyboardType = keyboardTypeDefault; maxLength: int32 = -1; cursorStart: int32 = -1; cursorEnd: int32 = -1): void =
  expandMethodBind(className DisplayServer, "virtual_keyboard_show", 3042891259)
  methodbind.ptrcall(self, [getPtr existingText, getPtr position, getPtr `type`, getPtr maxLength, getPtr cursorStart, getPtr cursorEnd])

proc virtualKeyboardHide*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "virtual_keyboard_hide", 3218959716)
  methodbind.ptrcall(self, [])

proc virtualKeyboardGetHeight*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "virtual_keyboard_get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasHardwareKeyboard*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "has_hardware_keyboard", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHardwareKeyboardConnectionChangeCallback*(self: DisplayServer; callable: Callable): void =
  expandMethodBind(className DisplayServer, "set_hardware_keyboard_connection_change_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable])

proc cursorSetShape*(self: DisplayServer; shape: DisplayServer_CursorShape): void =
  expandMethodBind(className DisplayServer, "cursor_set_shape", 2026291549)
  methodbind.ptrcall(self, [getPtr shape])

proc cursorGetShape*(self: DisplayServer): DisplayServer_CursorShape =
  expandMethodBind(className DisplayServer, "cursor_get_shape", 1087724927)
  var ret: encoded DisplayServer_CursorShape
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(DisplayServer_CursorShape)

proc cursorSetCustomImage*(self: DisplayServer; cursor: gdref Resource; shape: DisplayServer_CursorShape = cursorArrow; hotspot: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className DisplayServer, "cursor_set_custom_image", 1816663697)
  methodbind.ptrcall(self, [getPtr cursor, getPtr shape, getPtr hotspot])

proc getSwapCancelOk*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "get_swap_cancel_ok", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc enableForStealingFocus*(self: DisplayServer; processId: int64): void =
  expandMethodBind(className DisplayServer, "enable_for_stealing_focus", 1286410249)
  methodbind.ptrcall(self, [getPtr processId])

proc dialogShow*(self: DisplayServer; title: String; description: String; buttons: PackedStringArray; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "dialog_show", 4115553226)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr title, getPtr description, getPtr buttons, getPtr callback], addr ret)
  (addr ret).decode_result(Error)

proc dialogInputText*(self: DisplayServer; title: String; description: String; existingText: String; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "dialog_input_text", 3088703427)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr title, getPtr description, getPtr existingText, getPtr callback], addr ret)
  (addr ret).decode_result(Error)

proc fileDialogShow*(self: DisplayServer; title: String; currentDirectory: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; callback: Callable; parentWindowId: int32 = 0): Error =
  expandMethodBind(className DisplayServer, "file_dialog_show", 1386825884)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr title, getPtr currentDirectory, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr callback, getPtr parentWindowId], addr ret)
  (addr ret).decode_result(Error)

proc fileDialogWithOptionsShow*(self: DisplayServer; title: String; currentDirectory: String; root: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; options: Array[Dictionary[Variant, Variant]]; callback: Callable; parentWindowId: int32 = 0): Error =
  expandMethodBind(className DisplayServer, "file_dialog_with_options_show", 1448789813)
  nilCheck options
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr title, getPtr currentDirectory, getPtr root, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr options, getPtr callback, getPtr parentWindowId], addr ret)
  (addr ret).decode_result(Error)

proc beep*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "beep", 4051624405)
  methodbind.ptrcall(self, [])

proc keyboardGetLayoutCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc keyboardGetCurrentLayout*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "keyboard_get_current_layout", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc keyboardSetCurrentLayout*(self: DisplayServer; index: int32): void =
  expandMethodBind(className DisplayServer, "keyboard_set_current_layout", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc keyboardGetLayoutLanguage*(self: DisplayServer; index: int32): String =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_language", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc keyboardGetLayoutName*(self: DisplayServer; index: int32): String =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc keyboardGetKeycodeFromPhysical*(self: DisplayServer; keycode: Key): Key =
  expandMethodBind(className DisplayServer, "keyboard_get_keycode_from_physical", 3447613187)
  var ret: encoded Key
  methodbind.ptrcall(self, [getPtr keycode], addr ret)
  (addr ret).decode_result(Key)

proc keyboardGetLabelFromPhysical*(self: DisplayServer; keycode: Key): Key =
  expandMethodBind(className DisplayServer, "keyboard_get_label_from_physical", 3447613187)
  var ret: encoded Key
  methodbind.ptrcall(self, [getPtr keycode], addr ret)
  (addr ret).decode_result(Key)

proc showEmojiAndSymbolPicker*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "show_emoji_and_symbol_picker", 4051624405)
  methodbind.ptrcall(self, [])

proc colorPicker*(self: DisplayServer; callback: Callable): bool =
  expandMethodBind(className DisplayServer, "color_picker", 151643214)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr callback], addr ret)
  (addr ret).decode_result(bool)

proc processEvents*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "process_events", 3218959716)
  methodbind.ptrcall(self, [])

proc forceProcessAndDropEvents*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "force_process_and_drop_events", 3218959716)
  methodbind.ptrcall(self, [])

proc setNativeIcon*(self: DisplayServer; filename: String): void =
  expandMethodBind(className DisplayServer, "set_native_icon", 83702148)
  methodbind.ptrcall(self, [getPtr filename])

proc setIcon*(self: DisplayServer; image: gdref Image): void =
  expandMethodBind(className DisplayServer, "set_icon", 532598488)
  methodbind.ptrcall(self, [getPtr image])

proc createStatusIndicator*(self: DisplayServer; icon: gdref Texture2D; tooltip: String; callback: Callable): int32 =
  expandMethodBind(className DisplayServer, "create_status_indicator", 1904285171)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr icon, getPtr tooltip, getPtr callback], addr ret)
  (addr ret).decode_result(int32)

proc statusIndicatorSetIcon*(self: DisplayServer; id: int32; icon: gdref Texture2D): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_icon", 666127730)
  methodbind.ptrcall(self, [getPtr id, getPtr icon])

proc statusIndicatorSetTooltip*(self: DisplayServer; id: int32; tooltip: String): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr tooltip])

proc statusIndicatorSetMenu*(self: DisplayServer; id: int32; menuRid: RID): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_menu", 4040184819)
  methodbind.ptrcall(self, [getPtr id, getPtr menuRid])

proc statusIndicatorSetCallback*(self: DisplayServer; id: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_callback", 957362965)
  methodbind.ptrcall(self, [getPtr id, getPtr callback])

proc statusIndicatorGetRect*(self: DisplayServer; id: int32): Rect2 =
  expandMethodBind(className DisplayServer, "status_indicator_get_rect", 3327874267)
  var ret: encoded Rect2
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Rect2)

proc deleteStatusIndicator*(self: DisplayServer; id: int32): void =
  expandMethodBind(className DisplayServer, "delete_status_indicator", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc tabletGetDriverCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "tablet_get_driver_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc tabletGetDriverName*(self: DisplayServer; idx: int32): String =
  expandMethodBind(className DisplayServer, "tablet_get_driver_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc tabletGetCurrentDriver*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "tablet_get_current_driver", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc tabletSetCurrentDriver*(self: DisplayServer; name: String): void =
  expandMethodBind(className DisplayServer, "tablet_set_current_driver", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc isWindowTransparencyAvailable*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_window_transparency_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc registerAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  expandMethodBind(className DisplayServer, "register_additional_output", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`])

proc unregisterAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  expandMethodBind(className DisplayServer, "unregister_additional_output", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`])

proc hasAdditionalOutputs*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "has_additional_outputs", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
