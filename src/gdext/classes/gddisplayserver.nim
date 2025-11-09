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
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "has_feature", 334065950)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc getName*(self: DisplayServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc helpSetSearchCallbacks*(self: DisplayServer; searchCallback: Callable; actionCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "help_set_search_callbacks", 1687350599)
  methodbind.ptrcall(self, [getPtr searchCallback, getPtr actionCallback], void)

proc globalMenuSetPopupCallbacks*(self: DisplayServer; menuRoot: String; openCallback: Callable; closeCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_popup_callbacks", 3893727526)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr openCallback, getPtr closeCallback], void)

proc globalMenuAddSubmenuItem*(self: DisplayServer; menuRoot: String; label: String; submenu: String; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_submenu_item", 2828985934)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr submenu, getPtr index], int32)

proc globalMenuAddItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_item", 3616842746)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_check_item", 3616842746)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddIconItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_icon_item", 3867083847)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddIconCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_icon_check_item", 3867083847)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddRadioCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_radio_check_item", 3616842746)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddIconRadioCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_icon_radio_check_item", 3867083847)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddMultistateItem*(self: DisplayServer; menuRoot: String; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_multistate_item", 3297554655)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index], int32)

proc globalMenuAddSeparator*(self: DisplayServer; menuRoot: String; index: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_add_separator", 3214812433)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr index], int32)

proc globalMenuGetItemIndexFromText*(self: DisplayServer; menuRoot: String; text: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_index_from_text", 2878152881)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr text], int32)

proc globalMenuGetItemIndexFromTag*(self: DisplayServer; menuRoot: String; tag: Variant): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_index_from_tag", 2941063483)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr tag], int32)

proc globalMenuIsItemChecked*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_is_item_checked", 3511468594)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], bool)

proc globalMenuIsItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_is_item_checkable", 3511468594)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], bool)

proc globalMenuIsItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_is_item_radio_checkable", 3511468594)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], bool)

proc globalMenuGetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_callback", 748666903)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], Callable)

proc globalMenuGetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_key_callback", 748666903)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], Callable)

proc globalMenuGetItemTag*(self: DisplayServer; menuRoot: String; idx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_tag", 330672633)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], Variant)

proc globalMenuGetItemText*(self: DisplayServer; menuRoot: String; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_text", 591067909)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], String)

proc globalMenuGetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_submenu", 591067909)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], String)

proc globalMenuGetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_accelerator", 936065394)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], Key)

proc globalMenuIsItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_is_item_disabled", 3511468594)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], bool)

proc globalMenuIsItemHidden*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_is_item_hidden", 3511468594)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], bool)

proc globalMenuGetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_tooltip", 591067909)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], String)

proc globalMenuGetItemState*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_state", 3422818498)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], int32)

proc globalMenuGetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_max_states", 3422818498)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], int32)

proc globalMenuGetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_icon", 3591713183)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], gdref Texture2D)

proc globalMenuGetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_indentation_level", 3422818498)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], int32)

proc globalMenuSetItemChecked*(self: DisplayServer; menuRoot: String; idx: int32; checked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_checked", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checked], void)

proc globalMenuSetItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_checkable", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checkable], void)

proc globalMenuSetItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_radio_checkable", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr checkable], void)

proc globalMenuSetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_callback", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr callback], void)

proc globalMenuSetItemHoverCallbacks*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_hover_callbacks", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr callback], void)

proc globalMenuSetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32; keyCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_key_callback", 3809915389)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr keyCallback], void)

proc globalMenuSetItemTag*(self: DisplayServer; menuRoot: String; idx: int32; tag: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_tag", 453659863)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr tag], void)

proc globalMenuSetItemText*(self: DisplayServer; menuRoot: String; idx: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_text", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr text], void)

proc globalMenuSetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32; submenu: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_submenu", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr submenu], void)

proc globalMenuSetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32; keycode: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_accelerator", 566943293)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr keycode], void)

proc globalMenuSetItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_disabled", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr disabled], void)

proc globalMenuSetItemHidden*(self: DisplayServer; menuRoot: String; idx: int32; hidden: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_hidden", 4108344793)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr hidden], void)

proc globalMenuSetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_tooltip", 965966136)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr tooltip], void)

proc globalMenuSetItemState*(self: DisplayServer; menuRoot: String; idx: int32; state: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_state", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr state], void)

proc globalMenuSetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32; maxStates: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_max_states", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr maxStates], void)

proc globalMenuSetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_icon", 3201338066)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr icon], void)

proc globalMenuSetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32; level: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_set_item_indentation_level", 3474840532)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx, getPtr level], void)

proc globalMenuGetItemCount*(self: DisplayServer; menuRoot: String): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_item_count", 1321353865)
  methodbind.ptrcall(self, [getPtr menuRoot], int32)

proc globalMenuRemoveItem*(self: DisplayServer; menuRoot: String; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_remove_item", 2956805083)
  methodbind.ptrcall(self, [getPtr menuRoot, getPtr idx], void)

proc globalMenuClear*(self: DisplayServer; menuRoot: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_clear", 83702148)
  methodbind.ptrcall(self, [getPtr menuRoot], void)

proc globalMenuGetSystemMenuRoots*(self: DisplayServer): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "global_menu_get_system_menu_roots", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc ttsIsSpeaking*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_is_speaking", 36873697)
  methodbind.ptrcall(self, [], bool)

proc ttsIsPaused*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_is_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc ttsGetVoices*(self: DisplayServer): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_get_voices", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc ttsGetVoicesForLanguage*(self: DisplayServer; language: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_get_voices_for_language", 4291131558)
  methodbind.ptrcall(self, [getPtr language], PackedStringArray)

proc ttsSpeak*(self: DisplayServer; text: String; voice: String; volume: int32 = 50; pitch: Float = 1.0; rate: Float = 1.0; utteranceId: int32 = 0; interrupt: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_speak", 903992738)
  methodbind.ptrcall(self, [getPtr text, getPtr voice, getPtr volume, getPtr pitch, getPtr rate, getPtr utteranceId, getPtr interrupt], void)

proc ttsPause*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_pause", 3218959716)
  methodbind.ptrcall(self, [], void)

proc ttsResume*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_resume", 3218959716)
  methodbind.ptrcall(self, [], void)

proc ttsStop*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc ttsSetUtteranceCallback*(self: DisplayServer; event: DisplayServer_TTSUtteranceEvent; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tts_set_utterance_callback", 109679083)
  methodbind.ptrcall(self, [getPtr event, getPtr callable], void)

proc isDarkModeSupported*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "is_dark_mode_supported", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isDarkMode*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "is_dark_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAccentColor*(self: DisplayServer): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_accent_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc getBaseColor*(self: DisplayServer): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_base_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSystemThemeChangeCallback*(self: DisplayServer; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "set_system_theme_change_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc mouseSetMode*(self: DisplayServer; mouseMode: DisplayServer_MouseMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "mouse_set_mode", 348288463)
  methodbind.ptrcall(self, [getPtr mouseMode], void)

proc mouseGetMode*(self: DisplayServer): DisplayServer_MouseMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "mouse_get_mode", 1353961651)
  methodbind.ptrcall(self, [], DisplayServer_MouseMode)

proc warpMouse*(self: DisplayServer; position: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "warp_mouse", 1130785943)
  methodbind.ptrcall(self, [getPtr position], void)

proc mouseGetPosition*(self: DisplayServer): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "mouse_get_position", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc mouseGetButtonState*(self: DisplayServer): set[MouseButtonMask] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "mouse_get_button_state", 2512161324)
  methodbind.ptrcall(self, [], set[MouseButtonMask])

proc clipboardSet*(self: DisplayServer; clipboard: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_set", 83702148)
  methodbind.ptrcall(self, [getPtr clipboard], void)

proc clipboardGet*(self: DisplayServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_get", 201670096)
  methodbind.ptrcall(self, [], String)

proc clipboardGetImage*(self: DisplayServer): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_get_image", 4190603485)
  methodbind.ptrcall(self, [], gdref Image)

proc clipboardHas*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_has", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clipboardHasImage*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_has_image", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clipboardSetPrimary*(self: DisplayServer; clipboardPrimary: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_set_primary", 83702148)
  methodbind.ptrcall(self, [getPtr clipboardPrimary], void)

proc clipboardGetPrimary*(self: DisplayServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "clipboard_get_primary", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDisplayCutouts*(self: DisplayServer): TypedArray[Rect2] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_display_cutouts", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Rect2])

proc getDisplaySafeArea*(self: DisplayServer): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_display_safe_area", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc getScreenCount*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_screen_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPrimaryScreen*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_primary_screen", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getKeyboardFocusScreen*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_keyboard_focus_screen", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getScreenFromRect*(self: DisplayServer; rect: Rect2): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_screen_from_rect", 741354659)
  methodbind.ptrcall(self, [getPtr rect], int32)

proc screenGetPosition*(self: DisplayServer; screen: int32 = -1): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_position", 1725937825)
  methodbind.ptrcall(self, [getPtr screen], Vector2i)

proc screenGetSize*(self: DisplayServer; screen: int32 = -1): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_size", 1725937825)
  methodbind.ptrcall(self, [getPtr screen], Vector2i)

proc screenGetUsableRect*(self: DisplayServer; screen: int32 = -1): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_usable_rect", 2439012528)
  methodbind.ptrcall(self, [getPtr screen], Rect2i)

proc screenGetDpi*(self: DisplayServer; screen: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_dpi", 181039630)
  methodbind.ptrcall(self, [getPtr screen], int32)

proc screenGetScale*(self: DisplayServer; screen: int32 = -1): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_scale", 909105437)
  methodbind.ptrcall(self, [getPtr screen], Float)

proc isTouchscreenAvailable*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "is_touchscreen_available", 36873697)
  methodbind.ptrcall(self, [], bool)

proc screenGetMaxScale*(self: DisplayServer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_max_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc screenGetRefreshRate*(self: DisplayServer; screen: int32 = -1): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_refresh_rate", 909105437)
  methodbind.ptrcall(self, [getPtr screen], Float)

proc screenGetPixel*(self: DisplayServer; position: Vector2i): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_pixel", 1532707496)
  methodbind.ptrcall(self, [getPtr position], Color)

proc screenGetImage*(self: DisplayServer; screen: int32 = -1): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_image", 3813388802)
  methodbind.ptrcall(self, [getPtr screen], gdref Image)

proc screenGetImageRect*(self: DisplayServer; rect: Rect2i): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_image_rect", 2601441065)
  methodbind.ptrcall(self, [getPtr rect], gdref Image)

proc screenSetOrientation*(self: DisplayServer; orientation: DisplayServer_ScreenOrientation; screen: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_set_orientation", 2211511631)
  methodbind.ptrcall(self, [getPtr orientation, getPtr screen], void)

proc screenGetOrientation*(self: DisplayServer; screen: int32 = -1): DisplayServer_ScreenOrientation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_get_orientation", 133818562)
  methodbind.ptrcall(self, [getPtr screen], DisplayServer_ScreenOrientation)

proc screenSetKeepOn*(self: DisplayServer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_set_keep_on", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc screenIsKeptOn*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "screen_is_kept_on", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getWindowList*(self: DisplayServer): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_window_list", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc getWindowAtScreenPosition*(self: DisplayServer; position: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_window_at_screen_position", 2485466453)
  methodbind.ptrcall(self, [getPtr position], int32)

proc windowGetNativeHandle*(self: DisplayServer; handleType: DisplayServer_HandleType; windowId: int32 = 0): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_native_handle", 1096425680)
  methodbind.ptrcall(self, [getPtr handleType, getPtr windowId], int64)

proc windowGetActivePopup*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_active_popup", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc windowSetPopupSafeRect*(self: DisplayServer; window: int32; rect: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_popup_safe_rect", 3317281434)
  methodbind.ptrcall(self, [getPtr window, getPtr rect], void)

proc windowGetPopupSafeRect*(self: DisplayServer; window: int32): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_popup_safe_rect", 2161169500)
  methodbind.ptrcall(self, [getPtr window], Rect2i)

proc windowSetTitle*(self: DisplayServer; title: String; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_title", 441246282)
  methodbind.ptrcall(self, [getPtr title, getPtr windowId], void)

proc windowGetTitleSize*(self: DisplayServer; title: String; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_title_size", 2925301799)
  methodbind.ptrcall(self, [getPtr title, getPtr windowId], Vector2i)

proc windowSetMousePassthrough*(self: DisplayServer; region: PackedVector2Array; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_mouse_passthrough", 1993637420)
  methodbind.ptrcall(self, [getPtr region, getPtr windowId], void)

proc windowGetCurrentScreen*(self: DisplayServer; windowId: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_current_screen", 1591665591)
  methodbind.ptrcall(self, [getPtr windowId], int32)

proc windowSetCurrentScreen*(self: DisplayServer; screen: int32; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_current_screen", 2230941749)
  methodbind.ptrcall(self, [getPtr screen, getPtr windowId], void)

proc windowGetPosition*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_position", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowGetPositionWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_position_with_decorations", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowSetPosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_position", 2019273902)
  methodbind.ptrcall(self, [getPtr position, getPtr windowId], void)

proc windowGetSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_size", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowSetSize*(self: DisplayServer; size: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_size", 2019273902)
  methodbind.ptrcall(self, [getPtr size, getPtr windowId], void)

proc windowSetRectChangedCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_rect_changed_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId], void)

proc windowSetWindowEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_window_event_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId], void)

proc windowSetInputEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_input_event_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId], void)

proc windowSetInputTextCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_input_text_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId], void)

proc windowSetDropFilesCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_drop_files_callback", 1091192925)
  methodbind.ptrcall(self, [getPtr callback, getPtr windowId], void)

proc windowGetAttachedInstanceId*(self: DisplayServer; windowId: int32 = 0): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_attached_instance_id", 1591665591)
  methodbind.ptrcall(self, [getPtr windowId], uint64)

proc windowGetMaxSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_max_size", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowSetMaxSize*(self: DisplayServer; maxSize: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_max_size", 2019273902)
  methodbind.ptrcall(self, [getPtr maxSize, getPtr windowId], void)

proc windowGetMinSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_min_size", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowSetMinSize*(self: DisplayServer; minSize: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_min_size", 2019273902)
  methodbind.ptrcall(self, [getPtr minSize, getPtr windowId], void)

proc windowGetSizeWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_size_with_decorations", 763922886)
  methodbind.ptrcall(self, [getPtr windowId], Vector2i)

proc windowGetMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_WindowMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_mode", 2185728461)
  methodbind.ptrcall(self, [getPtr windowId], DisplayServer_WindowMode)

proc windowSetMode*(self: DisplayServer; mode: DisplayServer_WindowMode; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_mode", 1319965401)
  methodbind.ptrcall(self, [getPtr mode, getPtr windowId], void)

proc windowSetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; enabled: bool; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_flag", 254894155)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled, getPtr windowId], void)

proc windowGetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; windowId: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_flag", 802816991)
  methodbind.ptrcall(self, [getPtr flag, getPtr windowId], bool)

proc windowSetWindowButtonsOffset*(self: DisplayServer; offset: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_window_buttons_offset", 2019273902)
  methodbind.ptrcall(self, [getPtr offset, getPtr windowId], void)

proc windowGetSafeTitleMargins*(self: DisplayServer; windowId: int32 = 0): Vector3i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_safe_title_margins", 2295066620)
  methodbind.ptrcall(self, [getPtr windowId], Vector3i)

proc windowRequestAttention*(self: DisplayServer; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_request_attention", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId], void)

proc windowMoveToForeground*(self: DisplayServer; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_move_to_foreground", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId], void)

proc windowIsFocused*(self: DisplayServer; windowId: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_is_focused", 1051549951)
  methodbind.ptrcall(self, [getPtr windowId], bool)

proc windowCanDraw*(self: DisplayServer; windowId: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_can_draw", 1051549951)
  methodbind.ptrcall(self, [getPtr windowId], bool)

proc windowSetTransient*(self: DisplayServer; windowId: int32; parentWindowId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_transient", 3937882851)
  methodbind.ptrcall(self, [getPtr windowId, getPtr parentWindowId], void)

proc windowSetExclusive*(self: DisplayServer; windowId: int32; exclusive: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_exclusive", 300928843)
  methodbind.ptrcall(self, [getPtr windowId, getPtr exclusive], void)

proc windowSetImeActive*(self: DisplayServer; active: bool; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_ime_active", 1661950165)
  methodbind.ptrcall(self, [getPtr active, getPtr windowId], void)

proc windowSetImePosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_ime_position", 2019273902)
  methodbind.ptrcall(self, [getPtr position, getPtr windowId], void)

proc windowSetVsyncMode*(self: DisplayServer; vsyncMode: DisplayServer_VSyncMode; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_set_vsync_mode", 2179333492)
  methodbind.ptrcall(self, [getPtr vsyncMode, getPtr windowId], void)

proc windowGetVsyncMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_VSyncMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_get_vsync_mode", 578873795)
  methodbind.ptrcall(self, [getPtr windowId], DisplayServer_VSyncMode)

proc windowIsMaximizeAllowed*(self: DisplayServer; windowId: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_is_maximize_allowed", 1051549951)
  methodbind.ptrcall(self, [getPtr windowId], bool)

proc windowMaximizeOnTitleDblClick*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_maximize_on_title_dbl_click", 36873697)
  methodbind.ptrcall(self, [], bool)

proc windowMinimizeOnTitleDblClick*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_minimize_on_title_dbl_click", 36873697)
  methodbind.ptrcall(self, [], bool)

proc windowStartDrag*(self: DisplayServer; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_start_drag", 1995695955)
  methodbind.ptrcall(self, [getPtr windowId], void)

proc windowStartResize*(self: DisplayServer; edge: DisplayServer_WindowResizeEdge; windowId: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "window_start_resize", 4009722312)
  methodbind.ptrcall(self, [getPtr edge, getPtr windowId], void)

proc accessibilityShouldIncreaseContrast*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_should_increase_contrast", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc accessibilityShouldReduceAnimation*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_should_reduce_animation", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc accessibilityShouldReduceTransparency*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_should_reduce_transparency", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc accessibilityScreenReaderActive*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_screen_reader_active", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc accessibilityCreateElement*(self: DisplayServer; windowId: int32; role: DisplayServer_AccessibilityRole): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_create_element", 2968347744)
  methodbind.ptrcall(self, [getPtr windowId, getPtr role], RID)

proc accessibilityCreateSubElement*(self: DisplayServer; parentRid: RID; role: DisplayServer_AccessibilityRole; insertPos: int32 = -1): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_create_sub_element", 1949948826)
  methodbind.ptrcall(self, [getPtr parentRid, getPtr role, getPtr insertPos], RID)

proc accessibilityCreateSubTextEditElements*(self: DisplayServer; parentRid: RID; shapedText: RID; minHeight: Float; insertPos: int32 = -1): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_create_sub_text_edit_elements", 3328635351)
  methodbind.ptrcall(self, [getPtr parentRid, getPtr shapedText, getPtr minHeight, getPtr insertPos], RID)

proc accessibilityHasElement*(self: DisplayServer; id: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_has_element", 4155700596)
  methodbind.ptrcall(self, [getPtr id], bool)

proc accessibilityFreeElement*(self: DisplayServer; id: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_free_element", 2722037293)
  methodbind.ptrcall(self, [getPtr id], void)

proc accessibilityElementSetMeta*(self: DisplayServer; id: RID; meta: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_element_set_meta", 3175752987)
  methodbind.ptrcall(self, [getPtr id, getPtr meta], void)

proc accessibilityElementGetMeta*(self: DisplayServer; id: RID): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_element_get_meta", 4171304767)
  methodbind.ptrcall(self, [getPtr id], Variant)

proc accessibilitySetWindowRect*(self: DisplayServer; windowId: int32; rectOut: Rect2; rectIn: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_set_window_rect", 2386961724)
  methodbind.ptrcall(self, [getPtr windowId, getPtr rectOut, getPtr rectIn], void)

proc accessibilitySetWindowFocused*(self: DisplayServer; windowId: int32; focused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_set_window_focused", 300928843)
  methodbind.ptrcall(self, [getPtr windowId, getPtr focused], void)

proc accessibilityUpdateSetFocus*(self: DisplayServer; id: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_focus", 2722037293)
  methodbind.ptrcall(self, [getPtr id], void)

proc accessibilityGetWindowRoot*(self: DisplayServer; windowId: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_get_window_root", 495598643)
  methodbind.ptrcall(self, [getPtr windowId], RID)

proc accessibilityUpdateSetRole*(self: DisplayServer; id: RID; role: DisplayServer_AccessibilityRole): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_role", 3352768215)
  methodbind.ptrcall(self, [getPtr id, getPtr role], void)

proc accessibilityUpdateSetName*(self: DisplayServer; id: RID; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_name", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc accessibilityUpdateSetExtraInfo*(self: DisplayServer; id: RID; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_extra_info", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr name], void)

proc accessibilityUpdateSetDescription*(self: DisplayServer; id: RID; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description], void)

proc accessibilityUpdateSetValue*(self: DisplayServer; id: RID; value: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_value", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr value], void)

proc accessibilityUpdateSetTooltip*(self: DisplayServer; id: RID; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_tooltip", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr tooltip], void)

proc accessibilityUpdateSetBounds*(self: DisplayServer; id: RID; pRect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_bounds", 1378122625)
  methodbind.ptrcall(self, [getPtr id, getPtr pRect], void)

proc accessibilityUpdateSetTransform*(self: DisplayServer; id: RID; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_transform", 1246044741)
  methodbind.ptrcall(self, [getPtr id, getPtr transform], void)

proc accessibilityUpdateAddChild*(self: DisplayServer; id: RID; childId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_child", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr childId], void)

proc accessibilityUpdateAddRelatedControls*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_controls", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateAddRelatedDetails*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_details", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateAddRelatedDescribedBy*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_described_by", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateAddRelatedFlowTo*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_flow_to", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateAddRelatedLabeledBy*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_labeled_by", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateAddRelatedRadioGroup*(self: DisplayServer; id: RID; relatedId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_related_radio_group", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr relatedId], void)

proc accessibilityUpdateSetActiveDescendant*(self: DisplayServer; id: RID; otherId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_active_descendant", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId], void)

proc accessibilityUpdateSetNextOnLine*(self: DisplayServer; id: RID; otherId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_next_on_line", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId], void)

proc accessibilityUpdateSetPreviousOnLine*(self: DisplayServer; id: RID; otherId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_previous_on_line", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId], void)

proc accessibilityUpdateSetMemberOf*(self: DisplayServer; id: RID; groupId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_member_of", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr groupId], void)

proc accessibilityUpdateSetInPageLinkTarget*(self: DisplayServer; id: RID; otherId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_in_page_link_target", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId], void)

proc accessibilityUpdateSetErrorMessage*(self: DisplayServer; id: RID; otherId: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_error_message", 395945892)
  methodbind.ptrcall(self, [getPtr id, getPtr otherId], void)

proc accessibilityUpdateSetLive*(self: DisplayServer; id: RID; live: DisplayServer_AccessibilityLiveMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_live", 2683302212)
  methodbind.ptrcall(self, [getPtr id, getPtr live], void)

proc accessibilityUpdateAddAction*(self: DisplayServer; id: RID; action: DisplayServer_AccessibilityAction; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_action", 2898696987)
  methodbind.ptrcall(self, [getPtr id, getPtr action, getPtr callable], void)

proc accessibilityUpdateAddCustomAction*(self: DisplayServer; id: RID; actionId: int32; actionDescription: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_add_custom_action", 4153150897)
  methodbind.ptrcall(self, [getPtr id, getPtr actionId, getPtr actionDescription], void)

proc accessibilityUpdateSetTableRowCount*(self: DisplayServer; id: RID; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_row_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr count], void)

proc accessibilityUpdateSetTableColumnCount*(self: DisplayServer; id: RID; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_column_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr count], void)

proc accessibilityUpdateSetTableRowIndex*(self: DisplayServer; id: RID; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_row_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index], void)

proc accessibilityUpdateSetTableColumnIndex*(self: DisplayServer; id: RID; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_column_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index], void)

proc accessibilityUpdateSetTableCellPosition*(self: DisplayServer; id: RID; rowIndex: int32; columnIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_cell_position", 4288446313)
  methodbind.ptrcall(self, [getPtr id, getPtr rowIndex, getPtr columnIndex], void)

proc accessibilityUpdateSetTableCellSpan*(self: DisplayServer; id: RID; rowSpan: int32; columnSpan: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_table_cell_span", 4288446313)
  methodbind.ptrcall(self, [getPtr id, getPtr rowSpan, getPtr columnSpan], void)

proc accessibilityUpdateSetListItemCount*(self: DisplayServer; id: RID; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_item_count", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr size], void)

proc accessibilityUpdateSetListItemIndex*(self: DisplayServer; id: RID; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_item_index", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr index], void)

proc accessibilityUpdateSetListItemLevel*(self: DisplayServer; id: RID; level: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_item_level", 3411492887)
  methodbind.ptrcall(self, [getPtr id, getPtr level], void)

proc accessibilityUpdateSetListItemSelected*(self: DisplayServer; id: RID; selected: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_item_selected", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr selected], void)

proc accessibilityUpdateSetListItemExpanded*(self: DisplayServer; id: RID; expanded: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_item_expanded", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr expanded], void)

proc accessibilityUpdateSetPopupType*(self: DisplayServer; id: RID; popup: DisplayServer_AccessibilityPopupType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_popup_type", 2040885448)
  methodbind.ptrcall(self, [getPtr id, getPtr popup], void)

proc accessibilityUpdateSetChecked*(self: DisplayServer; id: RID; checekd: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_checked", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr checekd], void)

proc accessibilityUpdateSetNumValue*(self: DisplayServer; id: RID; position: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_num_value", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position], void)

proc accessibilityUpdateSetNumRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_num_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max], void)

proc accessibilityUpdateSetNumStep*(self: DisplayServer; id: RID; step: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_num_step", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr step], void)

proc accessibilityUpdateSetNumJump*(self: DisplayServer; id: RID; jump: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_num_jump", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr jump], void)

proc accessibilityUpdateSetScrollX*(self: DisplayServer; id: RID; position: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_scroll_x", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position], void)

proc accessibilityUpdateSetScrollXRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_scroll_x_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max], void)

proc accessibilityUpdateSetScrollY*(self: DisplayServer; id: RID; position: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_scroll_y", 1794382983)
  methodbind.ptrcall(self, [getPtr id, getPtr position], void)

proc accessibilityUpdateSetScrollYRange*(self: DisplayServer; id: RID; min: float64; max: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_scroll_y_range", 2513314492)
  methodbind.ptrcall(self, [getPtr id, getPtr min, getPtr max], void)

proc accessibilityUpdateSetTextDecorations*(self: DisplayServer; id: RID; underline: bool; strikethrough: bool; overline: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_text_decorations", 1672422386)
  methodbind.ptrcall(self, [getPtr id, getPtr underline, getPtr strikethrough, getPtr overline], void)

proc accessibilityUpdateSetTextAlign*(self: DisplayServer; id: RID; align: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_text_align", 3725995085)
  methodbind.ptrcall(self, [getPtr id, getPtr align], void)

proc accessibilityUpdateSetTextSelection*(self: DisplayServer; id: RID; textStartId: RID; startChar: int32; textEndId: RID; endChar: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_text_selection", 3119144029)
  methodbind.ptrcall(self, [getPtr id, getPtr textStartId, getPtr startChar, getPtr textEndId, getPtr endChar], void)

proc accessibilityUpdateSetFlag*(self: DisplayServer; id: RID; flag: DisplayServer_AccessibilityFlags; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_flag", 3758675396)
  methodbind.ptrcall(self, [getPtr id, getPtr flag, getPtr value], void)

proc accessibilityUpdateSetClassname*(self: DisplayServer; id: RID; classname: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_classname", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr classname], void)

proc accessibilityUpdateSetPlaceholder*(self: DisplayServer; id: RID; placeholder: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_placeholder", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr placeholder], void)

proc accessibilityUpdateSetLanguage*(self: DisplayServer; id: RID; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_language", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr language], void)

proc accessibilityUpdateSetTextOrientation*(self: DisplayServer; id: RID; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_text_orientation", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr vertical], void)

proc accessibilityUpdateSetListOrientation*(self: DisplayServer; id: RID; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_list_orientation", 1265174801)
  methodbind.ptrcall(self, [getPtr id, getPtr vertical], void)

proc accessibilityUpdateSetShortcut*(self: DisplayServer; id: RID; shortcut: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_shortcut", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr shortcut], void)

proc accessibilityUpdateSetUrl*(self: DisplayServer; id: RID; url: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_url", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr url], void)

proc accessibilityUpdateSetRoleDescription*(self: DisplayServer; id: RID; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_role_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description], void)

proc accessibilityUpdateSetStateDescription*(self: DisplayServer; id: RID; description: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_state_description", 2726140452)
  methodbind.ptrcall(self, [getPtr id, getPtr description], void)

proc accessibilityUpdateSetColorValue*(self: DisplayServer; id: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_color_value", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color], void)

proc accessibilityUpdateSetBackgroundColor*(self: DisplayServer; id: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_background_color", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color], void)

proc accessibilityUpdateSetForegroundColor*(self: DisplayServer; id: RID; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "accessibility_update_set_foreground_color", 2948539648)
  methodbind.ptrcall(self, [getPtr id, getPtr color], void)

proc imeGetSelection*(self: DisplayServer): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "ime_get_selection", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc imeGetText*(self: DisplayServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "ime_get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc virtualKeyboardShow*(self: DisplayServer; existingText: String; position: Rect2 = rect2(0, 0, 0, 0); `type`: DisplayServer_VirtualKeyboardType = keyboardTypeDefault; maxLength: int32 = -1; cursorStart: int32 = -1; cursorEnd: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "virtual_keyboard_show", 3042891259)
  methodbind.ptrcall(self, [getPtr existingText, getPtr position, getPtr `type`, getPtr maxLength, getPtr cursorStart, getPtr cursorEnd], void)

proc virtualKeyboardHide*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "virtual_keyboard_hide", 3218959716)
  methodbind.ptrcall(self, [], void)

proc virtualKeyboardGetHeight*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "virtual_keyboard_get_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasHardwareKeyboard*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "has_hardware_keyboard", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHardwareKeyboardConnectionChangeCallback*(self: DisplayServer; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "set_hardware_keyboard_connection_change_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc cursorSetShape*(self: DisplayServer; shape: DisplayServer_CursorShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "cursor_set_shape", 2026291549)
  methodbind.ptrcall(self, [getPtr shape], void)

proc cursorGetShape*(self: DisplayServer): DisplayServer_CursorShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "cursor_get_shape", 1087724927)
  methodbind.ptrcall(self, [], DisplayServer_CursorShape)

proc cursorSetCustomImage*(self: DisplayServer; cursor: gdref Resource; shape: DisplayServer_CursorShape = cursorArrow; hotspot: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "cursor_set_custom_image", 1816663697)
  methodbind.ptrcall(self, [getPtr cursor, getPtr shape, getPtr hotspot], void)

proc getSwapCancelOk*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "get_swap_cancel_ok", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc enableForStealingFocus*(self: DisplayServer; processId: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "enable_for_stealing_focus", 1286410249)
  methodbind.ptrcall(self, [getPtr processId], void)

proc dialogShow*(self: DisplayServer; title: String; description: String; buttons: PackedStringArray; callback: Callable): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "dialog_show", 4115553226)
  methodbind.ptrcall(self, [getPtr title, getPtr description, getPtr buttons, getPtr callback], Error)

proc dialogInputText*(self: DisplayServer; title: String; description: String; existingText: String; callback: Callable): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "dialog_input_text", 3088703427)
  methodbind.ptrcall(self, [getPtr title, getPtr description, getPtr existingText, getPtr callback], Error)

proc fileDialogShow*(self: DisplayServer; title: String; currentDirectory: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; callback: Callable; parentWindowId: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "file_dialog_show", 1386825884)
  methodbind.ptrcall(self, [getPtr title, getPtr currentDirectory, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr callback, getPtr parentWindowId], Error)

proc fileDialogWithOptionsShow*(self: DisplayServer; title: String; currentDirectory: String; root: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; options: TypedArray[Dictionary]; callback: Callable; parentWindowId: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "file_dialog_with_options_show", 1448789813)
  methodbind.ptrcall(self, [getPtr title, getPtr currentDirectory, getPtr root, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr options, getPtr callback, getPtr parentWindowId], Error)

proc beep*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "beep", 4051624405)
  methodbind.ptrcall(self, [], void)

proc keyboardGetLayoutCount*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_layout_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc keyboardGetCurrentLayout*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_current_layout", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc keyboardSetCurrentLayout*(self: DisplayServer; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_set_current_layout", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc keyboardGetLayoutLanguage*(self: DisplayServer; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_layout_language", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc keyboardGetLayoutName*(self: DisplayServer; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_layout_name", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc keyboardGetKeycodeFromPhysical*(self: DisplayServer; keycode: Key): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_keycode_from_physical", 3447613187)
  methodbind.ptrcall(self, [getPtr keycode], Key)

proc keyboardGetLabelFromPhysical*(self: DisplayServer; keycode: Key): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "keyboard_get_label_from_physical", 3447613187)
  methodbind.ptrcall(self, [getPtr keycode], Key)

proc showEmojiAndSymbolPicker*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "show_emoji_and_symbol_picker", 4051624405)
  methodbind.ptrcall(self, [], void)

proc colorPicker*(self: DisplayServer; callback: Callable): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "color_picker", 151643214)
  methodbind.ptrcall(self, [getPtr callback], bool)

proc processEvents*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "process_events", 3218959716)
  methodbind.ptrcall(self, [], void)

proc forceProcessAndDropEvents*(self: DisplayServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "force_process_and_drop_events", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setNativeIcon*(self: DisplayServer; filename: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "set_native_icon", 83702148)
  methodbind.ptrcall(self, [getPtr filename], void)

proc setIcon*(self: DisplayServer; image: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "set_icon", 532598488)
  methodbind.ptrcall(self, [getPtr image], void)

proc createStatusIndicator*(self: DisplayServer; icon: gdref Texture2D; tooltip: String; callback: Callable): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "create_status_indicator", 1904285171)
  methodbind.ptrcall(self, [getPtr icon, getPtr tooltip, getPtr callback], int32)

proc statusIndicatorSetIcon*(self: DisplayServer; id: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "status_indicator_set_icon", 666127730)
  methodbind.ptrcall(self, [getPtr id, getPtr icon], void)

proc statusIndicatorSetTooltip*(self: DisplayServer; id: int32; tooltip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "status_indicator_set_tooltip", 501894301)
  methodbind.ptrcall(self, [getPtr id, getPtr tooltip], void)

proc statusIndicatorSetMenu*(self: DisplayServer; id: int32; menuRid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "status_indicator_set_menu", 4040184819)
  methodbind.ptrcall(self, [getPtr id, getPtr menuRid], void)

proc statusIndicatorSetCallback*(self: DisplayServer; id: int32; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "status_indicator_set_callback", 957362965)
  methodbind.ptrcall(self, [getPtr id, getPtr callback], void)

proc statusIndicatorGetRect*(self: DisplayServer; id: int32): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "status_indicator_get_rect", 3327874267)
  methodbind.ptrcall(self, [getPtr id], Rect2)

proc deleteStatusIndicator*(self: DisplayServer; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "delete_status_indicator", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc tabletGetDriverCount*(self: DisplayServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tablet_get_driver_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc tabletGetDriverName*(self: DisplayServer; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tablet_get_driver_name", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc tabletGetCurrentDriver*(self: DisplayServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tablet_get_current_driver", 201670096)
  methodbind.ptrcall(self, [], String)

proc tabletSetCurrentDriver*(self: DisplayServer; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "tablet_set_current_driver", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc isWindowTransparencyAvailable*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "is_window_transparency_available", 36873697)
  methodbind.ptrcall(self, [], bool)

proc registerAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "register_additional_output", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc unregisterAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "unregister_additional_output", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc hasAdditionalOutputs*(self: DisplayServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DisplayServer, "has_additional_outputs", 36873697)
  methodbind.ptrcall(self, [], bool)
