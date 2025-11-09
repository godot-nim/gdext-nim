{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(TextEdit, Control)

method handleUnicodeInput*(self: TextEdit; unicodeChar: int32; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_handleUnicodeInput*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handle_unicode_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).handleUnicodeInput(p_args[0].decode(int32), p_args[1].decode(int32))

method backspace*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_backspace*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_backspace"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).backspace(p_args[0].decode(int32))

method cut*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_cut*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_cut"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).cut(p_args[0].decode(int32))

method copy*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_copy*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_copy"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).copy(p_args[0].decode(int32))

method paste*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_paste*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_paste"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).paste(p_args[0].decode(int32))

method pastePrimaryClipboard*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc registerVirtual_pastePrimaryClipboard*[T: TextEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_paste_primary_clipboard"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextEdit](p_instance).pastePrimaryClipboard(p_args[0].decode(int32))

proc hasImeText*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "has_ime_text", 36873697)
  methodbind.ptrcall(self, [], bool)

proc cancelIme*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "cancel_ime", 3218959716)
  methodbind.ptrcall(self, [], void)

proc applyIme*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "apply_ime", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setEditable*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEditable*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_editable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTextDirection*(self: TextEdit; direction: Control_TextDirection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction], void)

proc getTextDirection*(self: TextEdit): Control_TextDirection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_text_direction", 797257663)
  methodbind.ptrcall(self, [], Control_TextDirection)

proc setLanguage*(self: TextEdit; language: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: TextEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc setStructuredTextBidiOverride*(self: TextEdit; parser: TextServer_StructuredTextParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser], void)

proc getStructuredTextBidiOverride*(self: TextEdit): TextServer_StructuredTextParser =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_structured_text_bidi_override", 3385126229)
  methodbind.ptrcall(self, [], TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TextEdit; args: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args], void)

proc getStructuredTextBidiOverrideOptions*(self: TextEdit): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_structured_text_bidi_override_options", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setTabSize*(self: TextEdit; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_tab_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getTabSize*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_tab_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setIndentWrappedLines*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_indent_wrapped_lines", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isIndentWrappedLines*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_indent_wrapped_lines", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTabInputMode*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_tab_input_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getTabInputMode*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_tab_input_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOvertypeModeEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_overtype_mode_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isOvertypeModeEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_overtype_mode_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setContextMenuEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_context_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isContextMenuEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_context_menu_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEmojiMenuEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_emoji_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEmojiMenuEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_emoji_menu_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBackspaceDeletesCompositeCharacterEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_backspace_deletes_composite_character_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isBackspaceDeletesCompositeCharacterEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_backspace_deletes_composite_character_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShortcutKeysEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_shortcut_keys_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isShortcutKeysEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_shortcut_keys_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVirtualKeyboardEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_virtual_keyboard_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isVirtualKeyboardEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_virtual_keyboard_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVirtualKeyboardShowOnFocus*(self: TextEdit; showOnFocus: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_virtual_keyboard_show_on_focus", 2586408642)
  methodbind.ptrcall(self, [getPtr showOnFocus], void)

proc getVirtualKeyboardShowOnFocus*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_virtual_keyboard_show_on_focus", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMiddleMousePasteEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_middle_mouse_paste_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMiddleMousePasteEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_middle_mouse_paste_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEmptySelectionClipboardEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_empty_selection_clipboard_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEmptySelectionClipboardEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_empty_selection_clipboard_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clear*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setText*(self: TextEdit; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getText*(self: TextEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc getLineCount*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPlaceholder*(self: TextEdit; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_placeholder", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getPlaceholder*(self: TextEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_placeholder", 201670096)
  methodbind.ptrcall(self, [], String)

proc setLine*(self: TextEdit; line: int32; newText: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line", 501894301)
  methodbind.ptrcall(self, [getPtr line, getPtr newText], void)

proc getLine*(self: TextEdit; line: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line", 844755477)
  methodbind.ptrcall(self, [getPtr line], String)

proc getLineWithIme*(self: TextEdit; line: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_with_ime", 844755477)
  methodbind.ptrcall(self, [getPtr line], String)

proc getLineWidth*(self: TextEdit; line: int32; wrapIndex: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_width", 688195400)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], int32)

proc getLineHeight*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getIndentLevel*(self: TextEdit; line: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_indent_level", 923996154)
  methodbind.ptrcall(self, [getPtr line], int32)

proc getFirstNonWhitespaceColumn*(self: TextEdit; line: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_first_non_whitespace_column", 923996154)
  methodbind.ptrcall(self, [getPtr line], int32)

proc swapLines*(self: TextEdit; fromLine: int32; toLine: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "swap_lines", 3937882851)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine], void)

proc insertLineAt*(self: TextEdit; line: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "insert_line_at", 501894301)
  methodbind.ptrcall(self, [getPtr line, getPtr text], void)

proc removeLineAt*(self: TextEdit; line: int32; moveCaretsDown: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "remove_line_at", 972357352)
  methodbind.ptrcall(self, [getPtr line, getPtr moveCaretsDown], void)

proc insertTextAtCaret*(self: TextEdit; text: String; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "insert_text_at_caret", 2697778442)
  methodbind.ptrcall(self, [getPtr text, getPtr caretIndex], void)

proc insertText*(self: TextEdit; text: String; line: int32; column: int32; beforeSelectionBegin: bool = true; beforeSelectionEnd: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "insert_text", 1881564334)
  methodbind.ptrcall(self, [getPtr text, getPtr line, getPtr column, getPtr beforeSelectionBegin, getPtr beforeSelectionEnd], void)

proc removeText*(self: TextEdit; fromLine: int32; fromColumn: int32; toLine: int32; toColumn: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "remove_text", 4275841770)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr fromColumn, getPtr toLine, getPtr toColumn], void)

proc getLastUnhiddenLine*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_last_unhidden_line", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getNextVisibleLineOffsetFrom*(self: TextEdit; line: int32; visibleAmount: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_next_visible_line_offset_from", 3175239445)
  methodbind.ptrcall(self, [getPtr line, getPtr visibleAmount], int32)

proc getNextVisibleLineIndexOffsetFrom*(self: TextEdit; line: int32; wrapIndex: int32; visibleAmount: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_next_visible_line_index_offset_from", 3386475622)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex, getPtr visibleAmount], Vector2i)

proc backspace*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "backspace", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc cut*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "cut", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc copy*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "copy", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc paste*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "paste", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc pastePrimaryClipboard*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "paste_primary_clipboard", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc startAction*(self: TextEdit; action: TextEdit_EditAction): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "start_action", 2834827583)
  methodbind.ptrcall(self, [getPtr action], void)

proc endAction*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "end_action", 3218959716)
  methodbind.ptrcall(self, [], void)

proc beginComplexOperation*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "begin_complex_operation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc endComplexOperation*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "end_complex_operation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hasUndo*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "has_undo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasRedo*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "has_redo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc undo*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "undo", 3218959716)
  methodbind.ptrcall(self, [], void)

proc redo*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "redo", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearUndoHistory*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "clear_undo_history", 3218959716)
  methodbind.ptrcall(self, [], void)

proc tagSavedVersion*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "tag_saved_version", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getVersion*(self: TextEdit): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_version", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc getSavedVersion*(self: TextEdit): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_saved_version", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setSearchText*(self: TextEdit; searchText: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_search_text", 83702148)
  methodbind.ptrcall(self, [getPtr searchText], void)

proc setSearchFlags*(self: TextEdit; flags: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_search_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr flags], void)

proc search*(self: TextEdit; text: String; flags: uint32; fromLine: int32; fromColumn: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "search", 1203739136)
  methodbind.ptrcall(self, [getPtr text, getPtr flags, getPtr fromLine, getPtr fromColumn], Vector2i)

proc setTooltipRequestFunc*(self: TextEdit; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_tooltip_request_func", 1611583062)
  methodbind.ptrcall(self, [getPtr callback], void)

proc getLocalMousePos*(self: TextEdit): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_local_mouse_pos", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getWordAtPos*(self: TextEdit; position: Vector2): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_word_at_pos", 3674420000)
  methodbind.ptrcall(self, [getPtr position], String)

proc getLineColumnAtPos*(self: TextEdit; position: Vector2i; clampLine: bool = true; clampColumn: bool = true): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_column_at_pos", 3472935744)
  methodbind.ptrcall(self, [getPtr position, getPtr clampLine, getPtr clampColumn], Vector2i)

proc getPosAtLineColumn*(self: TextEdit; line: int32; column: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_pos_at_line_column", 410388347)
  methodbind.ptrcall(self, [getPtr line, getPtr column], Vector2i)

proc getRectAtLineColumn*(self: TextEdit; line: int32; column: int32): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_rect_at_line_column", 3256618057)
  methodbind.ptrcall(self, [getPtr line, getPtr column], Rect2i)

proc getMinimapLineAtPos*(self: TextEdit; position: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_minimap_line_at_pos", 2485466453)
  methodbind.ptrcall(self, [getPtr position], int32)

proc isDraggingCursor*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_dragging_cursor", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isMouseOverSelection*(self: TextEdit; edges: bool; caretIndex: int32 = -1): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_mouse_over_selection", 1840282309)
  methodbind.ptrcall(self, [getPtr edges, getPtr caretIndex], bool)

proc setCaretType*(self: TextEdit; `type`: TextEdit_CaretType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_type", 1211596914)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getCaretType*(self: TextEdit): TextEdit_CaretType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_type", 2830252959)
  methodbind.ptrcall(self, [], TextEdit_CaretType)

proc setCaretBlinkEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_blink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCaretBlinkEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_caret_blink_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretBlinkInterval*(self: TextEdit; interval: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_blink_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval], void)

proc getCaretBlinkInterval*(self: TextEdit): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_blink_interval", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDrawCaretWhenEditableDisabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_draw_caret_when_editable_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawingCaretWhenEditableDisabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_drawing_caret_when_editable_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMoveCaretOnRightClickEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_move_caret_on_right_click_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isMoveCaretOnRightClickEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_move_caret_on_right_click_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCaretMidGraphemeEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_mid_grapheme_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCaretMidGraphemeEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_caret_mid_grapheme_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMultipleCaretsEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_multiple_carets_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMultipleCaretsEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_multiple_carets_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addCaret*(self: TextEdit; line: int32; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "add_caret", 50157827)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc removeCaret*(self: TextEdit; caret: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "remove_caret", 1286410249)
  methodbind.ptrcall(self, [getPtr caret], void)

proc removeSecondaryCarets*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "remove_secondary_carets", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCaretCount*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addCaretAtCarets*(self: TextEdit; below: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "add_caret_at_carets", 2586408642)
  methodbind.ptrcall(self, [getPtr below], void)

proc getSortedCarets*(self: TextEdit; includeIgnoredCarets: bool = false): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_sorted_carets", 2131714034)
  methodbind.ptrcall(self, [getPtr includeIgnoredCarets], PackedInt32Array)

proc collapseCarets*(self: TextEdit; fromLine: int32; fromColumn: int32; toLine: int32; toColumn: int32; inclusive: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "collapse_carets", 228654177)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr fromColumn, getPtr toLine, getPtr toColumn, getPtr inclusive], void)

proc mergeOverlappingCarets*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "merge_overlapping_carets", 3218959716)
  methodbind.ptrcall(self, [], void)

proc beginMulticaretEdit*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "begin_multicaret_edit", 3218959716)
  methodbind.ptrcall(self, [], void)

proc endMulticaretEdit*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "end_multicaret_edit", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isInMulitcaretEdit*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_in_mulitcaret_edit", 36873697)
  methodbind.ptrcall(self, [], bool)

proc multicaretEditIgnoreCaret*(self: TextEdit; caretIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "multicaret_edit_ignore_caret", 1116898809)
  methodbind.ptrcall(self, [getPtr caretIndex], bool)

proc isCaretVisible*(self: TextEdit; caretIndex: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_caret_visible", 1051549951)
  methodbind.ptrcall(self, [getPtr caretIndex], bool)

proc getCaretDrawPos*(self: TextEdit; caretIndex: int32 = 0): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_draw_pos", 478253731)
  methodbind.ptrcall(self, [getPtr caretIndex], Vector2)

proc setCaretLine*(self: TextEdit; line: int32; adjustViewport: bool = true; canBeHidden: bool = true; wrapIndex: int32 = 0; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_line", 1302582944)
  methodbind.ptrcall(self, [getPtr line, getPtr adjustViewport, getPtr canBeHidden, getPtr wrapIndex, getPtr caretIndex], void)

proc getCaretLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_line", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc setCaretColumn*(self: TextEdit; column: int32; adjustViewport: bool = true; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_caret_column", 3796796178)
  methodbind.ptrcall(self, [getPtr column, getPtr adjustViewport, getPtr caretIndex], void)

proc getCaretColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_column", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getNextCompositeCharacterColumn*(self: TextEdit; line: int32; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_next_composite_character_column", 3175239445)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc getPreviousCompositeCharacterColumn*(self: TextEdit; line: int32; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_previous_composite_character_column", 3175239445)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc getCaretWrapIndex*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_wrap_index", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getWordUnderCaret*(self: TextEdit; caretIndex: int32 = -1): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_word_under_caret", 3929349208)
  methodbind.ptrcall(self, [getPtr caretIndex], String)

proc setUseDefaultWordSeparators*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_use_default_word_separators", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDefaultWordSeparatorsEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_default_word_separators_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseCustomWordSeparators*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_use_custom_word_separators", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCustomWordSeparatorsEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_custom_word_separators_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCustomWordSeparators*(self: TextEdit; customWordSeparators: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_custom_word_separators", 83702148)
  methodbind.ptrcall(self, [getPtr customWordSeparators], void)

proc getCustomWordSeparators*(self: TextEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_custom_word_separators", 201670096)
  methodbind.ptrcall(self, [], String)

proc setSelectingEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_selecting_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSelectingEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_selecting_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeselectOnFocusLossEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_deselect_on_focus_loss_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDeselectOnFocusLossEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_deselect_on_focus_loss_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDragAndDropSelectionEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_drag_and_drop_selection_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDragAndDropSelectionEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_drag_and_drop_selection_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSelectionMode*(self: TextEdit; mode: TextEdit_SelectionMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_selection_mode", 1658801786)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getSelectionMode*(self: TextEdit): TextEdit_SelectionMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_mode", 3750106938)
  methodbind.ptrcall(self, [], TextEdit_SelectionMode)

proc selectAll*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "select_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc selectWordUnderCaret*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "select_word_under_caret", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc addSelectionForNextOccurrence*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "add_selection_for_next_occurrence", 3218959716)
  methodbind.ptrcall(self, [], void)

proc skipSelectionForNextOccurrence*(self: TextEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "skip_selection_for_next_occurrence", 3218959716)
  methodbind.ptrcall(self, [], void)

proc select*(self: TextEdit; originLine: int32; originColumn: int32; caretLine: int32; caretColumn: int32; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "select", 2560984452)
  methodbind.ptrcall(self, [getPtr originLine, getPtr originColumn, getPtr caretLine, getPtr caretColumn, getPtr caretIndex], void)

proc hasSelection*(self: TextEdit; caretIndex: int32 = -1): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "has_selection", 2824505868)
  methodbind.ptrcall(self, [getPtr caretIndex], bool)

proc getSelectedText*(self: TextEdit; caretIndex: int32 = -1): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selected_text", 2309358862)
  methodbind.ptrcall(self, [getPtr caretIndex], String)

proc getSelectionAtLineColumn*(self: TextEdit; line: int32; column: int32; includeEdges: bool = true; onlySelections: bool = true): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_at_line_column", 1810224333)
  methodbind.ptrcall(self, [getPtr line, getPtr column, getPtr includeEdges, getPtr onlySelections], int32)

proc getLineRangesFromCarets*(self: TextEdit; onlySelections: bool = false; mergeAdjacent: bool = true): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_ranges_from_carets", 2393089247)
  methodbind.ptrcall(self, [getPtr onlySelections, getPtr mergeAdjacent], TypedArray[Vector2i])

proc getSelectionOriginLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_origin_line", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getSelectionOriginColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_origin_column", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc setSelectionOriginLine*(self: TextEdit; line: int32; canBeHidden: bool = true; wrapIndex: int32 = -1; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_selection_origin_line", 195434140)
  methodbind.ptrcall(self, [getPtr line, getPtr canBeHidden, getPtr wrapIndex, getPtr caretIndex], void)

proc setSelectionOriginColumn*(self: TextEdit; column: int32; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_selection_origin_column", 2230941749)
  methodbind.ptrcall(self, [getPtr column, getPtr caretIndex], void)

proc getSelectionFromLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_from_line", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getSelectionFromColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_from_column", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getSelectionToLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_to_line", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getSelectionToColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_to_column", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc isCaretAfterSelectionOrigin*(self: TextEdit; caretIndex: int32 = 0): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_caret_after_selection_origin", 1051549951)
  methodbind.ptrcall(self, [getPtr caretIndex], bool)

proc deselect*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "deselect", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc deleteSelection*(self: TextEdit; caretIndex: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "delete_selection", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc setLineWrappingMode*(self: TextEdit; mode: TextEdit_LineWrappingMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_wrapping_mode", 2525115309)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getLineWrappingMode*(self: TextEdit): TextEdit_LineWrappingMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_wrapping_mode", 3562716114)
  methodbind.ptrcall(self, [], TextEdit_LineWrappingMode)

proc setAutowrapMode*(self: TextEdit; autowrapMode: TextServer_AutowrapMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode], void)

proc getAutowrapMode*(self: TextEdit): TextServer_AutowrapMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_autowrap_mode", 1549071663)
  methodbind.ptrcall(self, [], TextServer_AutowrapMode)

proc isLineWrapped*(self: TextEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_line_wrapped", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc getLineWrapCount*(self: TextEdit; line: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_wrap_count", 923996154)
  methodbind.ptrcall(self, [getPtr line], int32)

proc getLineWrapIndexAtColumn*(self: TextEdit; line: int32; column: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_wrap_index_at_column", 3175239445)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc getLineWrappedText*(self: TextEdit; line: int32): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_wrapped_text", 647634434)
  methodbind.ptrcall(self, [getPtr line], PackedStringArray)

proc setSmoothScrollEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_smooth_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSmoothScrollEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_smooth_scroll_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getVScrollBar*(self: TextEdit): VScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_v_scroll_bar", 3226026593)
  methodbind.ptrcall(self, [], VScrollBar)

proc getHScrollBar*(self: TextEdit): HScrollBar =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_h_scroll_bar", 3774687988)
  methodbind.ptrcall(self, [], HScrollBar)

proc setVScroll*(self: TextEdit; value: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_v_scroll", 373806689)
  methodbind.ptrcall(self, [getPtr value], void)

proc getVScroll*(self: TextEdit): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_v_scroll", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setHScroll*(self: TextEdit; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_h_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value], void)

proc getHScroll*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_h_scroll", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setScrollPastEndOfFileEnabled*(self: TextEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_scroll_past_end_of_file_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isScrollPastEndOfFileEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_scroll_past_end_of_file_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVScrollSpeed*(self: TextEdit; speed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_v_scroll_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed], void)

proc getVScrollSpeed*(self: TextEdit): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_v_scroll_speed", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFitContentHeightEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_fit_content_height_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFitContentHeightEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_fit_content_height_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFitContentWidthEnabled*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_fit_content_width_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isFitContentWidthEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_fit_content_width_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getScrollPosForLine*(self: TextEdit; line: int32; wrapIndex: int32 = 0): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_scroll_pos_for_line", 3929084198)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], float64)

proc setLineAsFirstVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_as_first_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], void)

proc getFirstVisibleLine*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_first_visible_line", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLineAsCenterVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_as_center_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], void)

proc setLineAsLastVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_as_last_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], void)

proc getLastFullVisibleLine*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_last_full_visible_line", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLastFullVisibleLineWrapIndex*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_last_full_visible_line_wrap_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleLineCount*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_visible_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getVisibleLineCountInRange*(self: TextEdit; fromLine: int32; toLine: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_visible_line_count_in_range", 3175239445)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine], int32)

proc getTotalVisibleLineCount*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_total_visible_line_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc adjustViewportToCaret*(self: TextEdit; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "adjust_viewport_to_caret", 1995695955)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc centerViewportToCaret*(self: TextEdit; caretIndex: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "center_viewport_to_caret", 1995695955)
  methodbind.ptrcall(self, [getPtr caretIndex], void)

proc setDrawMinimap*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_draw_minimap", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDrawingMinimap*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_drawing_minimap", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMinimapWidth*(self: TextEdit; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_minimap_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width], void)

proc getMinimapWidth*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_minimap_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getMinimapVisibleLines*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_minimap_visible_lines", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addGutter*(self: TextEdit; at: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "add_gutter", 1025054187)
  methodbind.ptrcall(self, [getPtr at], void)

proc removeGutter*(self: TextEdit; gutter: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "remove_gutter", 1286410249)
  methodbind.ptrcall(self, [getPtr gutter], void)

proc getGutterCount*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_gutter_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setGutterName*(self: TextEdit; gutter: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_name", 501894301)
  methodbind.ptrcall(self, [getPtr gutter, getPtr name], void)

proc getGutterName*(self: TextEdit; gutter: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_gutter_name", 844755477)
  methodbind.ptrcall(self, [getPtr gutter], String)

proc setGutterType*(self: TextEdit; gutter: int32; `type`: TextEdit_GutterType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_type", 1088959071)
  methodbind.ptrcall(self, [getPtr gutter, getPtr `type`], void)

proc getGutterType*(self: TextEdit; gutter: int32): TextEdit_GutterType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_gutter_type", 1159699127)
  methodbind.ptrcall(self, [getPtr gutter], TextEdit_GutterType)

proc setGutterWidth*(self: TextEdit; gutter: int32; width: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_width", 3937882851)
  methodbind.ptrcall(self, [getPtr gutter, getPtr width], void)

proc getGutterWidth*(self: TextEdit; gutter: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_gutter_width", 923996154)
  methodbind.ptrcall(self, [getPtr gutter], int32)

proc setGutterDraw*(self: TextEdit; gutter: int32; draw: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_draw", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr draw], void)

proc isGutterDrawn*(self: TextEdit; gutter: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_gutter_drawn", 1116898809)
  methodbind.ptrcall(self, [getPtr gutter], bool)

proc setGutterClickable*(self: TextEdit; gutter: int32; clickable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_clickable", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr clickable], void)

proc isGutterClickable*(self: TextEdit; gutter: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_gutter_clickable", 1116898809)
  methodbind.ptrcall(self, [getPtr gutter], bool)

proc setGutterOverwritable*(self: TextEdit; gutter: int32; overwritable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_overwritable", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr overwritable], void)

proc isGutterOverwritable*(self: TextEdit; gutter: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_gutter_overwritable", 1116898809)
  methodbind.ptrcall(self, [getPtr gutter], bool)

proc mergeGutters*(self: TextEdit; fromLine: int32; toLine: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "merge_gutters", 3937882851)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine], void)

proc setGutterCustomDraw*(self: TextEdit; column: int32; drawCallback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_gutter_custom_draw", 957362965)
  methodbind.ptrcall(self, [getPtr column, getPtr drawCallback], void)

proc getTotalGutterWidth*(self: TextEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_total_gutter_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLineGutterMetadata*(self: TextEdit; line: int32; gutter: int32; metadata: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_gutter_metadata", 2060538656)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr metadata], void)

proc getLineGutterMetadata*(self: TextEdit; line: int32; gutter: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_gutter_metadata", 678354945)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], Variant)

proc setLineGutterText*(self: TextEdit; line: int32; gutter: int32; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_gutter_text", 2285447957)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr text], void)

proc getLineGutterText*(self: TextEdit; line: int32; gutter: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_gutter_text", 1391810591)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], String)

proc setLineGutterIcon*(self: TextEdit; line: int32; gutter: int32; icon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_gutter_icon", 176101966)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr icon], void)

proc getLineGutterIcon*(self: TextEdit; line: int32; gutter: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_gutter_icon", 2584904275)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], gdref Texture2D)

proc setLineGutterItemColor*(self: TextEdit; line: int32; gutter: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_gutter_item_color", 3733378741)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr color], void)

proc getLineGutterItemColor*(self: TextEdit; line: int32; gutter: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_gutter_item_color", 2165839948)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], Color)

proc setLineGutterClickable*(self: TextEdit; line: int32; gutter: int32; clickable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_gutter_clickable", 1383440665)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr clickable], void)

proc isLineGutterClickable*(self: TextEdit; line: int32; gutter: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_line_gutter_clickable", 2522259332)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], bool)

proc setLineBackgroundColor*(self: TextEdit; line: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_line_background_color", 2878471219)
  methodbind.ptrcall(self, [getPtr line, getPtr color], void)

proc getLineBackgroundColor*(self: TextEdit; line: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_line_background_color", 3457211756)
  methodbind.ptrcall(self, [getPtr line], Color)

proc setSyntaxHighlighter*(self: TextEdit; syntaxHighlighter: gdref SyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_syntax_highlighter", 2765644541)
  methodbind.ptrcall(self, [getPtr syntaxHighlighter], void)

proc getSyntaxHighlighter*(self: TextEdit): gdref SyntaxHighlighter =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_syntax_highlighter", 2721131626)
  methodbind.ptrcall(self, [], gdref SyntaxHighlighter)

proc setHighlightCurrentLine*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_highlight_current_line", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isHighlightCurrentLineEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_highlight_current_line_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHighlightAllOccurrences*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_highlight_all_occurrences", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isHighlightAllOccurrencesEnabled*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_highlight_all_occurrences_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getDrawControlChars*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_draw_control_chars", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawControlChars*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_draw_control_chars", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setDrawTabs*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_draw_tabs", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDrawingTabs*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_drawing_tabs", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawSpaces*(self: TextEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "set_draw_spaces", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDrawingSpaces*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_drawing_spaces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getMenu*(self: TextEdit): PopupMenu =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_menu", 229722558)
  methodbind.ptrcall(self, [], PopupMenu)

proc isMenuVisible*(self: TextEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "is_menu_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc menuOption*(self: TextEdit; option: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "menu_option", 1286410249)
  methodbind.ptrcall(self, [getPtr option], void)

proc adjustCaretsAfterEdit*(self: TextEdit; caret: int32; fromLine: int32; fromCol: int32; toLine: int32; toCol: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "adjust_carets_after_edit", 1770277138)
  methodbind.ptrcall(self, [getPtr caret, getPtr fromLine, getPtr fromCol, getPtr toLine, getPtr toCol], void)

proc getCaretIndexEditOrder*(self: TextEdit): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_caret_index_edit_order", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc getSelectionLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_line", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

proc getSelectionColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TextEdit, "get_selection_column", 1591665591)
  methodbind.ptrcall(self, [getPtr caretIndex], int32)

template text*(self: TextEdit): untyped = self.getText()
template `text=`*(self: TextEdit; value) = self.setText(value)

template placeholderText*(self: TextEdit): untyped = self.getPlaceholder()
template `placeholderText=`*(self: TextEdit; value) = self.setPlaceholder(value)

template editable*(self: TextEdit): untyped = self.isEditable()
template `editable=`*(self: TextEdit; value) = self.setEditable(value)

template contextMenuEnabled*(self: TextEdit): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: TextEdit; value) = self.setContextMenuEnabled(value)

template emojiMenuEnabled*(self: TextEdit): untyped = self.isEmojiMenuEnabled()
template `emojiMenuEnabled=`*(self: TextEdit; value) = self.setEmojiMenuEnabled(value)

template backspaceDeletesCompositeCharacterEnabled*(self: TextEdit): untyped = self.isBackspaceDeletesCompositeCharacterEnabled()
template `backspaceDeletesCompositeCharacterEnabled=`*(self: TextEdit; value) = self.setBackspaceDeletesCompositeCharacterEnabled(value)

template shortcutKeysEnabled*(self: TextEdit): untyped = self.isShortcutKeysEnabled()
template `shortcutKeysEnabled=`*(self: TextEdit; value) = self.setShortcutKeysEnabled(value)

template selectingEnabled*(self: TextEdit): untyped = self.isSelectingEnabled()
template `selectingEnabled=`*(self: TextEdit; value) = self.setSelectingEnabled(value)

template deselectOnFocusLossEnabled*(self: TextEdit): untyped = self.isDeselectOnFocusLossEnabled()
template `deselectOnFocusLossEnabled=`*(self: TextEdit; value) = self.setDeselectOnFocusLossEnabled(value)

template dragAndDropSelectionEnabled*(self: TextEdit): untyped = self.isDragAndDropSelectionEnabled()
template `dragAndDropSelectionEnabled=`*(self: TextEdit; value) = self.setDragAndDropSelectionEnabled(value)

template virtualKeyboardEnabled*(self: TextEdit): untyped = self.isVirtualKeyboardEnabled()
template `virtualKeyboardEnabled=`*(self: TextEdit; value) = self.setVirtualKeyboardEnabled(value)

template virtualKeyboardShowOnFocus*(self: TextEdit): untyped = self.getVirtualKeyboardShowOnFocus()
template `virtualKeyboardShowOnFocus=`*(self: TextEdit; value) = self.setVirtualKeyboardShowOnFocus(value)

template middleMousePasteEnabled*(self: TextEdit): untyped = self.isMiddleMousePasteEnabled()
template `middleMousePasteEnabled=`*(self: TextEdit; value) = self.setMiddleMousePasteEnabled(value)

template emptySelectionClipboardEnabled*(self: TextEdit): untyped = self.isEmptySelectionClipboardEnabled()
template `emptySelectionClipboardEnabled=`*(self: TextEdit; value) = self.setEmptySelectionClipboardEnabled(value)

template wrapMode*(self: TextEdit): untyped = self.getLineWrappingMode()
template `wrapMode=`*(self: TextEdit; value) = self.setLineWrappingMode(value)

template autowrapMode*(self: TextEdit): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: TextEdit; value) = self.setAutowrapMode(value)

template indentWrappedLines*(self: TextEdit): untyped = self.isIndentWrappedLines()
template `indentWrappedLines=`*(self: TextEdit; value) = self.setIndentWrappedLines(value)

template tabInputMode*(self: TextEdit): untyped = self.getTabInputMode()
template `tabInputMode=`*(self: TextEdit; value) = self.setTabInputMode(value)

template scrollSmooth*(self: TextEdit): untyped = self.isSmoothScrollEnabled()
template `scrollSmooth=`*(self: TextEdit; value) = self.setSmoothScrollEnabled(value)

template scrollVScrollSpeed*(self: TextEdit): untyped = self.getVScrollSpeed()
template `scrollVScrollSpeed=`*(self: TextEdit; value) = self.setVScrollSpeed(value)

template scrollPastEndOfFile*(self: TextEdit): untyped = self.isScrollPastEndOfFileEnabled()
template `scrollPastEndOfFile=`*(self: TextEdit; value) = self.setScrollPastEndOfFileEnabled(value)

template scrollVertical*(self: TextEdit): untyped = self.getVScroll()
template `scrollVertical=`*(self: TextEdit; value) = self.setVScroll(value)

template scrollHorizontal*(self: TextEdit): untyped = self.getHScroll()
template `scrollHorizontal=`*(self: TextEdit; value) = self.setHScroll(value)

template scrollFitContentHeight*(self: TextEdit): untyped = self.isFitContentHeightEnabled()
template `scrollFitContentHeight=`*(self: TextEdit; value) = self.setFitContentHeightEnabled(value)

template scrollFitContentWidth*(self: TextEdit): untyped = self.isFitContentWidthEnabled()
template `scrollFitContentWidth=`*(self: TextEdit; value) = self.setFitContentWidthEnabled(value)

template minimapDraw*(self: TextEdit): untyped = self.isDrawingMinimap()
template `minimapDraw=`*(self: TextEdit; value) = self.setDrawMinimap(value)

template minimapWidth*(self: TextEdit): untyped = self.getMinimapWidth()
template `minimapWidth=`*(self: TextEdit; value) = self.setMinimapWidth(value)

template caretType*(self: TextEdit): untyped = self.getCaretType()
template `caretType=`*(self: TextEdit; value) = self.setCaretType(value)

template caretBlink*(self: TextEdit): untyped = self.isCaretBlinkEnabled()
template `caretBlink=`*(self: TextEdit; value) = self.setCaretBlinkEnabled(value)

template caretBlinkInterval*(self: TextEdit): untyped = self.getCaretBlinkInterval()
template `caretBlinkInterval=`*(self: TextEdit; value) = self.setCaretBlinkInterval(value)

template caretDrawWhenEditableDisabled*(self: TextEdit): untyped = self.isDrawingCaretWhenEditableDisabled()
template `caretDrawWhenEditableDisabled=`*(self: TextEdit; value) = self.setDrawCaretWhenEditableDisabled(value)

template caretMoveOnRightClick*(self: TextEdit): untyped = self.isMoveCaretOnRightClickEnabled()
template `caretMoveOnRightClick=`*(self: TextEdit; value) = self.setMoveCaretOnRightClickEnabled(value)

template caretMidGrapheme*(self: TextEdit): untyped = self.isCaretMidGraphemeEnabled()
template `caretMidGrapheme=`*(self: TextEdit; value) = self.setCaretMidGraphemeEnabled(value)

template caretMultiple*(self: TextEdit): untyped = self.isMultipleCaretsEnabled()
template `caretMultiple=`*(self: TextEdit; value) = self.setMultipleCaretsEnabled(value)

template useDefaultWordSeparators*(self: TextEdit): untyped = self.isDefaultWordSeparatorsEnabled()
template `useDefaultWordSeparators=`*(self: TextEdit; value) = self.setUseDefaultWordSeparators(value)

template useCustomWordSeparators*(self: TextEdit): untyped = self.isCustomWordSeparatorsEnabled()
template `useCustomWordSeparators=`*(self: TextEdit; value) = self.setUseCustomWordSeparators(value)

template customWordSeparators*(self: TextEdit): untyped = self.getCustomWordSeparators()
template `customWordSeparators=`*(self: TextEdit; value) = self.setCustomWordSeparators(value)

template syntaxHighlighter*(self: TextEdit): untyped = self.getSyntaxHighlighter()
template `syntaxHighlighter=`*(self: TextEdit; value) = self.setSyntaxHighlighter(value)

template highlightAllOccurrences*(self: TextEdit): untyped = self.isHighlightAllOccurrencesEnabled()
template `highlightAllOccurrences=`*(self: TextEdit; value) = self.setHighlightAllOccurrences(value)

template highlightCurrentLine*(self: TextEdit): untyped = self.isHighlightCurrentLineEnabled()
template `highlightCurrentLine=`*(self: TextEdit; value) = self.setHighlightCurrentLine(value)

template drawControlChars*(self: TextEdit): untyped = self.getDrawControlChars()
template `drawControlChars=`*(self: TextEdit; value) = self.setDrawControlChars(value)

template drawTabs*(self: TextEdit): untyped = self.isDrawingTabs()
template `drawTabs=`*(self: TextEdit; value) = self.setDrawTabs(value)

template drawSpaces*(self: TextEdit): untyped = self.isDrawingSpaces()
template `drawSpaces=`*(self: TextEdit; value) = self.setDrawSpaces(value)

template textDirection*(self: TextEdit): untyped = self.getTextDirection()
template `textDirection=`*(self: TextEdit; value) = self.setTextDirection(value)

template language*(self: TextEdit): untyped = self.getLanguage()
template `language=`*(self: TextEdit; value) = self.setLanguage(value)

template structuredTextBidiOverride*(self: TextEdit): untyped = self.getStructuredTextBidiOverride()
template `structuredTextBidiOverride=`*(self: TextEdit; value) = self.setStructuredTextBidiOverride(value)

template structuredTextBidiOverrideOptions*(self: TextEdit): untyped = self.getStructuredTextBidiOverrideOptions()
template `structuredTextBidiOverrideOptions=`*(self: TextEdit; value) = self.setStructuredTextBidiOverrideOptions(value)
