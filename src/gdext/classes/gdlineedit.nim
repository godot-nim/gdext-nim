{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(LineEdit, Control)

proc hasImeText*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "has_ime_text", 36873697)
  methodbind.ptrcall(self, [], bool)

proc cancelIme*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "cancel_ime", 3218959716)
  methodbind.ptrcall(self, [], void)

proc applyIme*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "apply_ime", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setHorizontalAlignment*(self: LineEdit; alignment: HorizontalAlignment): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_horizontal_alignment", 2312603777)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getHorizontalAlignment*(self: LineEdit): HorizontalAlignment =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_horizontal_alignment", 341400642)
  methodbind.ptrcall(self, [], HorizontalAlignment)

proc edit*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "edit", 3218959716)
  methodbind.ptrcall(self, [], void)

proc unedit*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "unedit", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isEditing*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_editing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setKeepEditingOnTextSubmit*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_keep_editing_on_text_submit", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEditingKeptOnTextSubmit*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_editing_kept_on_text_submit", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clear*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc select*(self: LineEdit; `from`: int32 = 0; to: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "select", 1328111411)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], void)

proc selectAll*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "select_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc deselect*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "deselect", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hasUndo*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "has_undo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasRedo*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "has_redo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasSelection*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "has_selection", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getSelectedText*(self: LineEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_selected_text", 2841200299)
  methodbind.ptrcall(self, [], String)

proc getSelectionFromColumn*(self: LineEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_selection_from_column", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSelectionToColumn*(self: LineEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_selection_to_column", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setText*(self: LineEdit; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: LineEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDrawControlChars*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_draw_control_chars", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawControlChars*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_draw_control_chars", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setTextDirection*(self: LineEdit; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: LineEdit): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: LineEdit; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: LineEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setStructuredTextBidiOverride*(self: LineEdit; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: LineEdit): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: LineEdit; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: LineEdit): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setPlaceholder*(self: LineEdit; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_placeholder", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getPlaceholder*(self: LineEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_placeholder", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCaretColumn*(self: LineEdit; position: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_caret_column", 1286410249)
  methodbind.ptrcall(self, [getPtr position], void)

proc getCaretColumn*(self: LineEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_caret_column", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getNextCompositeCharacterColumn*(self: LineEdit; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_next_composite_character_column", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc getPreviousCompositeCharacterColumn*(self: LineEdit; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_previous_composite_character_column", 923996154)
  methodbind.ptrcall(self, [getPtr column], int32)

proc getScrollOffset*(self: LineEdit): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_scroll_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setExpandToTextLengthEnabled*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_expand_to_text_length_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isExpandToTextLengthEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_expand_to_text_length_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretBlinkEnabled*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_caret_blink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCaretBlinkEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_caret_blink_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretMidGraphemeEnabled*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_caret_mid_grapheme_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCaretMidGraphemeEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_caret_mid_grapheme_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretForceDisplayed*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_caret_force_displayed", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCaretForceDisplayed*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_caret_force_displayed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretBlinkInterval*(self: LineEdit; interval: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_caret_blink_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval], void)

proc getCaretBlinkInterval*(self: LineEdit): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_caret_blink_interval", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxLength*(self: LineEdit; chars: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_max_length", 1286410249)
  methodbind.ptrcall(self, [getPtr chars], void)

proc getMaxLength*(self: LineEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_max_length", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc insertTextAtCaret*(self: LineEdit; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "insert_text_at_caret", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc deleteCharAtCaret*(self: LineEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "delete_char_at_caret", 3218959716)
  methodbind.ptrcall(self, [], void)

proc deleteText*(self: LineEdit; fromColumn: int32; toColumn: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "delete_text", 3937882851)
  methodbind.ptrcall(self, [getPtr fromColumn, getPtr toColumn], void)

proc setEditable*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEditable*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_editable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSecret*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_secret", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSecret*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_secret", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSecretCharacter*(self: LineEdit; character: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_secret_character", 83702148)
  methodbind.ptrcall(self, [getPtr character], void)

proc getSecretCharacter*(self: LineEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_secret_character", 201670096)
  methodbind.ptrcall(self, [], String)

proc menuOption*(self: LineEdit; option: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "menu_option", 1286410249)
  methodbind.ptrcall(self, [getPtr option], void)

proc getMenu*(self: LineEdit): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_menu", 229722558)
  methodbind.ptrcall(self, [], PopupMenu)

proc isMenuVisible*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_menu_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setContextMenuEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_context_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isContextMenuEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_context_menu_enabled", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setEmojiMenuEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_emoji_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEmojiMenuEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_emoji_menu_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBackspaceDeletesCompositeCharacterEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_backspace_deletes_composite_character_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isBackspaceDeletesCompositeCharacterEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_backspace_deletes_composite_character_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVirtualKeyboardEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_virtual_keyboard_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isVirtualKeyboardEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_virtual_keyboard_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVirtualKeyboardShowOnFocus*(self: LineEdit; showOnFocus: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_virtual_keyboard_show_on_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr showOnFocus], void)

proc getVirtualKeyboardShowOnFocus*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_virtual_keyboard_show_on_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVirtualKeyboardType*(self: LineEdit; `type`: LineEdit_VirtualKeyboardType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_virtual_keyboard_type", 2696893573)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getVirtualKeyboardType*(self: LineEdit): LineEdit_VirtualKeyboardType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_virtual_keyboard_type", 1928699316)
  methodbind.ptrcall(self, [], LineEdit_VirtualKeyboardType)

proc setClearButtonEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_clear_button_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isClearButtonEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_clear_button_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcutKeysEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_shortcut_keys_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isShortcutKeysEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_shortcut_keys_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMiddleMousePasteEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_middle_mouse_paste_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMiddleMousePasteEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_middle_mouse_paste_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectingEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_selecting_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSelectingEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_selecting_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeselectOnFocusLossEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_deselect_on_focus_loss_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDeselectOnFocusLossEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_deselect_on_focus_loss_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragAndDropSelectionEnabled*(self: LineEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_drag_and_drop_selection_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDragAndDropSelectionEnabled*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_drag_and_drop_selection_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRightIcon*(self: LineEdit; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_right_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr icon], void)

proc getRightIcon*(self: LineEdit): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "get_right_icon", 255860311)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setFlat*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_flat", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFlat*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_flat", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectAllOnFocus*(self: LineEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "set_select_all_on_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSelectAllOnFocus*(self: LineEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LineEdit, "is_select_all_on_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

template text*(self: LineEdit): untyped = self.getText()
template `text=`*(self: LineEdit; value) = self.setText(value)

template placeholderText*(self: LineEdit): untyped = self.getPlaceholder()
template `placeholderText=`*(self: LineEdit; value) = self.setPlaceholder(value)

template alignment*(self: LineEdit): untyped = self.getHorizontalAlignment()
template `alignment=`*(self: LineEdit; value) = self.setHorizontalAlignment(value)

template maxLength*(self: LineEdit): untyped = self.getMaxLength()
template `maxLength=`*(self: LineEdit; value) = self.setMaxLength(value)

template editable*(self: LineEdit): untyped = self.isEditable()
template `editable=`*(self: LineEdit; value) = self.setEditable(value)

template keepEditingOnTextSubmit*(self: LineEdit): untyped = self.isEditingKeptOnTextSubmit()
template `keepEditingOnTextSubmit=`*(self: LineEdit; value) = self.setKeepEditingOnTextSubmit(value)

template expandToTextLength*(self: LineEdit): untyped = self.isExpandToTextLengthEnabled()
template `expandToTextLength=`*(self: LineEdit; value) = self.setExpandToTextLengthEnabled(value)

template contextMenuEnabled*(self: LineEdit): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: LineEdit; value) = self.setContextMenuEnabled(value)

template emojiMenuEnabled*(self: LineEdit): untyped = self.isEmojiMenuEnabled()
template `emojiMenuEnabled=`*(self: LineEdit; value) = self.setEmojiMenuEnabled(value)

template backspaceDeletesCompositeCharacterEnabled*(self: LineEdit): untyped = self.isBackspaceDeletesCompositeCharacterEnabled()
template `backspaceDeletesCompositeCharacterEnabled=`*(self: LineEdit; value) = self.setBackspaceDeletesCompositeCharacterEnabled(value)

template virtualKeyboardEnabled*(self: LineEdit): untyped = self.isVirtualKeyboardEnabled()
template `virtualKeyboardEnabled=`*(self: LineEdit; value) = self.setVirtualKeyboardEnabled(value)

template virtualKeyboardShowOnFocus*(self: LineEdit): untyped = self.getVirtualKeyboardShowOnFocus()
template `virtualKeyboardShowOnFocus=`*(self: LineEdit; value) = self.setVirtualKeyboardShowOnFocus(value)

template virtualKeyboardType*(self: LineEdit): untyped = self.getVirtualKeyboardType()
template `virtualKeyboardType=`*(self: LineEdit; value) = self.setVirtualKeyboardType(value)

template clearButtonEnabled*(self: LineEdit): untyped = self.isClearButtonEnabled()
template `clearButtonEnabled=`*(self: LineEdit; value) = self.setClearButtonEnabled(value)

template shortcutKeysEnabled*(self: LineEdit): untyped = self.isShortcutKeysEnabled()
template `shortcutKeysEnabled=`*(self: LineEdit; value) = self.setShortcutKeysEnabled(value)

template middleMousePasteEnabled*(self: LineEdit): untyped = self.isMiddleMousePasteEnabled()
template `middleMousePasteEnabled=`*(self: LineEdit; value) = self.setMiddleMousePasteEnabled(value)

template selectingEnabled*(self: LineEdit): untyped = self.isSelectingEnabled()
template `selectingEnabled=`*(self: LineEdit; value) = self.setSelectingEnabled(value)

template deselectOnFocusLossEnabled*(self: LineEdit): untyped = self.isDeselectOnFocusLossEnabled()
template `deselectOnFocusLossEnabled=`*(self: LineEdit; value) = self.setDeselectOnFocusLossEnabled(value)

template dragAndDropSelectionEnabled*(self: LineEdit): untyped = self.isDragAndDropSelectionEnabled()
template `dragAndDropSelectionEnabled=`*(self: LineEdit; value) = self.setDragAndDropSelectionEnabled(value)

template rightIcon*(self: LineEdit): untyped = self.getRightIcon()
template `rightIcon=`*(self: LineEdit; value) = self.setRightIcon(value)

template flat*(self: LineEdit): untyped = self.isFlat()
template `flat=`*(self: LineEdit; value) = self.setFlat(value)

template drawControlChars*(self: LineEdit): untyped = self.getDrawControlChars()
template `drawControlChars=`*(self: LineEdit; value) = self.setDrawControlChars(value)

template selectAllOnFocus*(self: LineEdit): untyped = self.isSelectAllOnFocus()
template `selectAllOnFocus=`*(self: LineEdit; value) = self.setSelectAllOnFocus(value)

template caretBlink*(self: LineEdit): untyped = self.isCaretBlinkEnabled()
template `caretBlink=`*(self: LineEdit; value) = self.setCaretBlinkEnabled(value)

template caretBlinkInterval*(self: LineEdit): untyped = self.getCaretBlinkInterval()
template `caretBlinkInterval=`*(self: LineEdit; value) = self.setCaretBlinkInterval(value)

template caretColumn*(self: LineEdit): untyped = self.getCaretColumn()
template `caretColumn=`*(self: LineEdit; value) = self.setCaretColumn(value)

template caretForceDisplayed*(self: LineEdit): untyped = self.isCaretForceDisplayed()
template `caretForceDisplayed=`*(self: LineEdit; value) = self.setCaretForceDisplayed(value)

template caretMidGrapheme*(self: LineEdit): untyped = self.isCaretMidGraphemeEnabled()
template `caretMidGrapheme=`*(self: LineEdit; value) = self.setCaretMidGraphemeEnabled(value)

template secret*(self: LineEdit): untyped = self.isSecret()
template `secret=`*(self: LineEdit; value) = self.setSecret(value)

template secretCharacter*(self: LineEdit): untyped = self.getSecretCharacter()
template `secretCharacter=`*(self: LineEdit; value) = self.setSecretCharacter(value)

template textDirection*(self: LineEdit): untyped = self.getTextDirection()
template `textDirection=`*(self: LineEdit; value) = self.setTextDirection(value)

template language*(self: LineEdit): untyped = self.getLanguage()
template `language=`*(self: LineEdit; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: LineEdit): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: LineEdit; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: LineEdit): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: LineEdit; value) = self.setStructuredTextBidiOverrideOptions(value)
