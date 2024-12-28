{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method handleUnicodeInput*(self: TextEdit; unicodeChar: int32; caretIndex: int32): void {.base.} = (discard)
proc handleUnicodeInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).handleUnicodeInput(p_args[0].decode(int32), p_args[1].decode(int32))
template handleUnicodeInput_bind*(_: typedesc[TextEdit]): ClassCallVirtual = handleUnicodeInput

method backspace*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc backspace(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).backspace(p_args[0].decode(int32))
template backspace_bind*(_: typedesc[TextEdit]): ClassCallVirtual = backspace

method cut*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc cut(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).cut(p_args[0].decode(int32))
template cut_bind*(_: typedesc[TextEdit]): ClassCallVirtual = cut

method copy*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc copy(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).copy(p_args[0].decode(int32))
template copy_bind*(_: typedesc[TextEdit]): ClassCallVirtual = copy

method paste*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc paste(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).paste(p_args[0].decode(int32))
template paste_bind*(_: typedesc[TextEdit]): ClassCallVirtual = paste

method pastePrimaryClipboard*(self: TextEdit; caretIndex: int32): void {.base.} = (discard)
proc pastePrimaryClipboard(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextEdit](p_instance).pastePrimaryClipboard(p_args[0].decode(int32))
template pastePrimaryClipboard_bind*(_: typedesc[TextEdit]): ClassCallVirtual = pastePrimaryClipboard

proc hasImeText*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "has_ime_text", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc cancelIme*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "cancel_ime", 3218959716)
  methodbind.ptrcall(self, [])

proc applyIme*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "apply_ime", 3218959716)
  methodbind.ptrcall(self, [])

proc setEditable*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEditable*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_editable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTextDirection*(self: TextEdit; direction: Control_TextDirection): void =
  expandMethodBind(className TextEdit, "set_text_direction", 119160795)
  methodbind.ptrcall(self, [getPtr direction])

proc getTextDirection*(self: TextEdit): Control_TextDirection =
  expandMethodBind(className TextEdit, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: TextEdit; language: String): void =
  expandMethodBind(className TextEdit, "set_language", 83702148)
  methodbind.ptrcall(self, [getPtr language])

proc getLanguage*(self: TextEdit): String =
  expandMethodBind(className TextEdit, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setStructuredTextBidiOverride*(self: TextEdit; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className TextEdit, "set_structured_text_bidi_override", 55961453)
  methodbind.ptrcall(self, [getPtr parser])

proc getStructuredTextBidiOverride*(self: TextEdit): TextServer_StructuredTextParser =
  expandMethodBind(className TextEdit, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: TextEdit; args: Array): void =
  expandMethodBind(className TextEdit, "set_structured_text_bidi_override_options", 381264803)
  methodbind.ptrcall(self, [getPtr args])

proc getStructuredTextBidiOverrideOptions*(self: TextEdit): Array =
  expandMethodBind(className TextEdit, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setTabSize*(self: TextEdit; size: int32): void =
  expandMethodBind(className TextEdit, "set_tab_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc getTabSize*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_tab_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setIndentWrappedLines*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_indent_wrapped_lines", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isIndentWrappedLines*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_indent_wrapped_lines", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOvertypeModeEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_overtype_mode_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isOvertypeModeEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_overtype_mode_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setContextMenuEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_context_menu_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isContextMenuEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_context_menu_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShortcutKeysEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_shortcut_keys_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isShortcutKeysEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_shortcut_keys_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVirtualKeyboardEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_virtual_keyboard_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isVirtualKeyboardEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_virtual_keyboard_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMiddleMousePasteEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_middle_mouse_paste_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isMiddleMousePasteEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_middle_mouse_paste_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc clear*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc setText*(self: TextEdit; text: String): void =
  expandMethodBind(className TextEdit, "set_text", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getText*(self: TextEdit): String =
  expandMethodBind(className TextEdit, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getLineCount*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPlaceholder*(self: TextEdit; text: String): void =
  expandMethodBind(className TextEdit, "set_placeholder", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getPlaceholder*(self: TextEdit): String =
  expandMethodBind(className TextEdit, "get_placeholder", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setLine*(self: TextEdit; line: int32; newText: String): void =
  expandMethodBind(className TextEdit, "set_line", 501894301)
  methodbind.ptrcall(self, [getPtr line, getPtr newText])

proc getLine*(self: TextEdit; line: int32): String =
  expandMethodBind(className TextEdit, "get_line", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(String)

proc getLineWidth*(self: TextEdit; line: int32; wrapIndex: int32 = -1): int32 =
  expandMethodBind(className TextEdit, "get_line_width", 688195400)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], addr ret)
  (addr ret).decode_result(int32)

proc getLineHeight*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_line_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getIndentLevel*(self: TextEdit; line: int32): int32 =
  expandMethodBind(className TextEdit, "get_indent_level", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(int32)

proc getFirstNonWhitespaceColumn*(self: TextEdit; line: int32): int32 =
  expandMethodBind(className TextEdit, "get_first_non_whitespace_column", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(int32)

proc swapLines*(self: TextEdit; fromLine: int32; toLine: int32): void =
  expandMethodBind(className TextEdit, "swap_lines", 3937882851)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine])

proc insertLineAt*(self: TextEdit; line: int32; text: String): void =
  expandMethodBind(className TextEdit, "insert_line_at", 501894301)
  methodbind.ptrcall(self, [getPtr line, getPtr text])

proc removeLineAt*(self: TextEdit; line: int32; moveCaretsDown: bool = true): void =
  expandMethodBind(className TextEdit, "remove_line_at", 972357352)
  methodbind.ptrcall(self, [getPtr line, getPtr moveCaretsDown])

proc insertTextAtCaret*(self: TextEdit; text: String; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "insert_text_at_caret", 2697778442)
  methodbind.ptrcall(self, [getPtr text, getPtr caretIndex])

proc insertText*(self: TextEdit; text: String; line: int32; column: int32; beforeSelectionBegin: bool = true; beforeSelectionEnd: bool = false): void =
  expandMethodBind(className TextEdit, "insert_text", 1881564334)
  methodbind.ptrcall(self, [getPtr text, getPtr line, getPtr column, getPtr beforeSelectionBegin, getPtr beforeSelectionEnd])

proc removeText*(self: TextEdit; fromLine: int32; fromColumn: int32; toLine: int32; toColumn: int32): void =
  expandMethodBind(className TextEdit, "remove_text", 4275841770)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr fromColumn, getPtr toLine, getPtr toColumn])

proc getLastUnhiddenLine*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_last_unhidden_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getNextVisibleLineOffsetFrom*(self: TextEdit; line: int32; visibleAmount: int32): int32 =
  expandMethodBind(className TextEdit, "get_next_visible_line_offset_from", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line, getPtr visibleAmount], addr ret)
  (addr ret).decode_result(int32)

proc getNextVisibleLineIndexOffsetFrom*(self: TextEdit; line: int32; wrapIndex: int32; visibleAmount: int32): Vector2i =
  expandMethodBind(className TextEdit, "get_next_visible_line_index_offset_from", 3386475622)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex, getPtr visibleAmount], addr ret)
  (addr ret).decode_result(Vector2i)

proc backspace*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "backspace", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc cut*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "cut", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc copy*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "copy", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc paste*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "paste", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc pastePrimaryClipboard*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "paste_primary_clipboard", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc startAction*(self: TextEdit; action: TextEdit_EditAction): void =
  expandMethodBind(className TextEdit, "start_action", 2834827583)
  methodbind.ptrcall(self, [getPtr action])

proc endAction*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "end_action", 3218959716)
  methodbind.ptrcall(self, [])

proc beginComplexOperation*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "begin_complex_operation", 3218959716)
  methodbind.ptrcall(self, [])

proc endComplexOperation*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "end_complex_operation", 3218959716)
  methodbind.ptrcall(self, [])

proc hasUndo*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "has_undo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc hasRedo*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "has_redo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc undo*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "undo", 3218959716)
  methodbind.ptrcall(self, [])

proc redo*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "redo", 3218959716)
  methodbind.ptrcall(self, [])

proc clearUndoHistory*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "clear_undo_history", 3218959716)
  methodbind.ptrcall(self, [])

proc tagSavedVersion*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "tag_saved_version", 3218959716)
  methodbind.ptrcall(self, [])

proc getVersion*(self: TextEdit): uint32 =
  expandMethodBind(className TextEdit, "get_version", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc getSavedVersion*(self: TextEdit): uint32 =
  expandMethodBind(className TextEdit, "get_saved_version", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setSearchText*(self: TextEdit; searchText: String): void =
  expandMethodBind(className TextEdit, "set_search_text", 83702148)
  methodbind.ptrcall(self, [getPtr searchText])

proc setSearchFlags*(self: TextEdit; flags: uint32): void =
  expandMethodBind(className TextEdit, "set_search_flags", 1286410249)
  methodbind.ptrcall(self, [getPtr flags])

proc search*(self: TextEdit; text: String; flags: uint32; fromLine: int32; fromColumn: int32): Vector2i =
  expandMethodBind(className TextEdit, "search", 1203739136)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr text, getPtr flags, getPtr fromLine, getPtr fromColumn], addr ret)
  (addr ret).decode_result(Vector2i)

proc setTooltipRequestFunc*(self: TextEdit; callback: Callable): void =
  expandMethodBind(className TextEdit, "set_tooltip_request_func", 1611583062)
  methodbind.ptrcall(self, [getPtr callback])

proc getLocalMousePos*(self: TextEdit): Vector2 =
  expandMethodBind(className TextEdit, "get_local_mouse_pos", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getWordAtPos*(self: TextEdit; position: Vector2): String =
  expandMethodBind(className TextEdit, "get_word_at_pos", 3674420000)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(String)

proc getLineColumnAtPos*(self: TextEdit; position: Vector2i; allowOutOfBounds: bool = true): Vector2i =
  expandMethodBind(className TextEdit, "get_line_column_at_pos", 239517838)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr position, getPtr allowOutOfBounds], addr ret)
  (addr ret).decode_result(Vector2i)

proc getPosAtLineColumn*(self: TextEdit; line: int32; column: int32): Vector2i =
  expandMethodBind(className TextEdit, "get_pos_at_line_column", 410388347)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr line, getPtr column], addr ret)
  (addr ret).decode_result(Vector2i)

proc getRectAtLineColumn*(self: TextEdit; line: int32; column: int32): Rect2i =
  expandMethodBind(className TextEdit, "get_rect_at_line_column", 3256618057)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [getPtr line, getPtr column], addr ret)
  (addr ret).decode_result(Rect2i)

proc getMinimapLineAtPos*(self: TextEdit; position: Vector2i): int32 =
  expandMethodBind(className TextEdit, "get_minimap_line_at_pos", 2485466453)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(int32)

proc isDraggingCursor*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_dragging_cursor", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isMouseOverSelection*(self: TextEdit; edges: bool; caretIndex: int32 = -1): bool =
  expandMethodBind(className TextEdit, "is_mouse_over_selection", 1840282309)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr edges, getPtr caretIndex], addr ret)
  (addr ret).decode_result(bool)

proc setCaretType*(self: TextEdit; `type`: TextEdit_CaretType): void =
  expandMethodBind(className TextEdit, "set_caret_type", 1211596914)
  methodbind.ptrcall(self, [getPtr `type`])

proc getCaretType*(self: TextEdit): TextEdit_CaretType =
  expandMethodBind(className TextEdit, "get_caret_type", 2830252959)
  var ret: encoded TextEdit_CaretType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextEdit_CaretType)

proc setCaretBlinkEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_caret_blink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCaretBlinkEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_caret_blink_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCaretBlinkInterval*(self: TextEdit; interval: Float): void =
  expandMethodBind(className TextEdit, "set_caret_blink_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval])

proc getCaretBlinkInterval*(self: TextEdit): Float =
  expandMethodBind(className TextEdit, "get_caret_blink_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDrawCaretWhenEditableDisabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_draw_caret_when_editable_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDrawingCaretWhenEditableDisabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_drawing_caret_when_editable_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMoveCaretOnRightClickEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_move_caret_on_right_click_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isMoveCaretOnRightClickEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_move_caret_on_right_click_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCaretMidGraphemeEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_caret_mid_grapheme_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isCaretMidGraphemeEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_caret_mid_grapheme_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMultipleCaretsEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_multiple_carets_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isMultipleCaretsEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_multiple_carets_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc addCaret*(self: TextEdit; line: int32; column: int32): int32 =
  expandMethodBind(className TextEdit, "add_caret", 50157827)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line, getPtr column], addr ret)
  (addr ret).decode_result(int32)

proc removeCaret*(self: TextEdit; caret: int32): void =
  expandMethodBind(className TextEdit, "remove_caret", 1286410249)
  methodbind.ptrcall(self, [getPtr caret])

proc removeSecondaryCarets*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "remove_secondary_carets", 3218959716)
  methodbind.ptrcall(self, [])

proc getCaretCount*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_caret_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addCaretAtCarets*(self: TextEdit; below: bool): void =
  expandMethodBind(className TextEdit, "add_caret_at_carets", 2586408642)
  methodbind.ptrcall(self, [getPtr below])

proc getSortedCarets*(self: TextEdit; includeIgnoredCarets: bool = false): PackedInt32Array =
  expandMethodBind(className TextEdit, "get_sorted_carets", 2131714034)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr includeIgnoredCarets], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc collapseCarets*(self: TextEdit; fromLine: int32; fromColumn: int32; toLine: int32; toColumn: int32; inclusive: bool = false): void =
  expandMethodBind(className TextEdit, "collapse_carets", 228654177)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr fromColumn, getPtr toLine, getPtr toColumn, getPtr inclusive])

proc mergeOverlappingCarets*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "merge_overlapping_carets", 3218959716)
  methodbind.ptrcall(self, [])

proc beginMulticaretEdit*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "begin_multicaret_edit", 3218959716)
  methodbind.ptrcall(self, [])

proc endMulticaretEdit*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "end_multicaret_edit", 3218959716)
  methodbind.ptrcall(self, [])

proc isInMulitcaretEdit*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_in_mulitcaret_edit", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc multicaretEditIgnoreCaret*(self: TextEdit; caretIndex: int32): bool =
  expandMethodBind(className TextEdit, "multicaret_edit_ignore_caret", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(bool)

proc isCaretVisible*(self: TextEdit; caretIndex: int32 = 0): bool =
  expandMethodBind(className TextEdit, "is_caret_visible", 1051549951)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(bool)

proc getCaretDrawPos*(self: TextEdit; caretIndex: int32 = 0): Vector2 =
  expandMethodBind(className TextEdit, "get_caret_draw_pos", 478253731)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(Vector2)

proc setCaretLine*(self: TextEdit; line: int32; adjustViewport: bool = true; canBeHidden: bool = true; wrapIndex: int32 = 0; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_caret_line", 1302582944)
  methodbind.ptrcall(self, [getPtr line, getPtr adjustViewport, getPtr canBeHidden, getPtr wrapIndex, getPtr caretIndex])

proc getCaretLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_caret_line", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc setCaretColumn*(self: TextEdit; column: int32; adjustViewport: bool = true; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_caret_column", 3796796178)
  methodbind.ptrcall(self, [getPtr column, getPtr adjustViewport, getPtr caretIndex])

proc getCaretColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_caret_column", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getCaretWrapIndex*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_caret_wrap_index", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getWordUnderCaret*(self: TextEdit; caretIndex: int32 = -1): String =
  expandMethodBind(className TextEdit, "get_word_under_caret", 3929349208)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(String)

proc setUseDefaultWordSeparators*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_use_default_word_separators", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDefaultWordSeparatorsEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_default_word_separators_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseCustomWordSeparators*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_use_custom_word_separators", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isCustomWordSeparatorsEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_custom_word_separators_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCustomWordSeparators*(self: TextEdit; customWordSeparators: String): void =
  expandMethodBind(className TextEdit, "set_custom_word_separators", 83702148)
  methodbind.ptrcall(self, [getPtr customWordSeparators])

proc getCustomWordSeparators*(self: TextEdit): String =
  expandMethodBind(className TextEdit, "get_custom_word_separators", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setSelectingEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_selecting_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSelectingEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_selecting_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDeselectOnFocusLossEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_deselect_on_focus_loss_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDeselectOnFocusLossEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_deselect_on_focus_loss_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDragAndDropSelectionEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_drag_and_drop_selection_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDragAndDropSelectionEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_drag_and_drop_selection_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSelectionMode*(self: TextEdit; mode: TextEdit_SelectionMode): void =
  expandMethodBind(className TextEdit, "set_selection_mode", 1658801786)
  methodbind.ptrcall(self, [getPtr mode])

proc getSelectionMode*(self: TextEdit): TextEdit_SelectionMode =
  expandMethodBind(className TextEdit, "get_selection_mode", 3750106938)
  var ret: encoded TextEdit_SelectionMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextEdit_SelectionMode)

proc selectAll*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "select_all", 3218959716)
  methodbind.ptrcall(self, [])

proc selectWordUnderCaret*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "select_word_under_caret", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc addSelectionForNextOccurrence*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "add_selection_for_next_occurrence", 3218959716)
  methodbind.ptrcall(self, [])

proc skipSelectionForNextOccurrence*(self: TextEdit): void =
  expandMethodBind(className TextEdit, "skip_selection_for_next_occurrence", 3218959716)
  methodbind.ptrcall(self, [])

proc select*(self: TextEdit; originLine: int32; originColumn: int32; caretLine: int32; caretColumn: int32; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "select", 2560984452)
  methodbind.ptrcall(self, [getPtr originLine, getPtr originColumn, getPtr caretLine, getPtr caretColumn, getPtr caretIndex])

proc hasSelection*(self: TextEdit; caretIndex: int32 = -1): bool =
  expandMethodBind(className TextEdit, "has_selection", 2824505868)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(bool)

proc getSelectedText*(self: TextEdit; caretIndex: int32 = -1): String =
  expandMethodBind(className TextEdit, "get_selected_text", 2309358862)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(String)

proc getSelectionAtLineColumn*(self: TextEdit; line: int32; column: int32; includeEdges: bool = true; onlySelections: bool = true): int32 =
  expandMethodBind(className TextEdit, "get_selection_at_line_column", 1810224333)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line, getPtr column, getPtr includeEdges, getPtr onlySelections], addr ret)
  (addr ret).decode_result(int32)

proc getLineRangesFromCarets*(self: TextEdit; onlySelections: bool = false; mergeAdjacent: bool = true): TypedArray[Vector2i] =
  expandMethodBind(className TextEdit, "get_line_ranges_from_carets", 2393089247)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr onlySelections, getPtr mergeAdjacent], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getSelectionOriginLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_origin_line", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getSelectionOriginColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_origin_column", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc setSelectionOriginLine*(self: TextEdit; line: int32; canBeHidden: bool = true; wrapIndex: int32 = -1; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_selection_origin_line", 195434140)
  methodbind.ptrcall(self, [getPtr line, getPtr canBeHidden, getPtr wrapIndex, getPtr caretIndex])

proc setSelectionOriginColumn*(self: TextEdit; column: int32; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_selection_origin_column", 2230941749)
  methodbind.ptrcall(self, [getPtr column, getPtr caretIndex])

proc getSelectionFromLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_from_line", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getSelectionFromColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_from_column", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getSelectionToLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_to_line", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getSelectionToColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_to_column", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc isCaretAfterSelectionOrigin*(self: TextEdit; caretIndex: int32 = 0): bool =
  expandMethodBind(className TextEdit, "is_caret_after_selection_origin", 1051549951)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(bool)

proc deselect*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "deselect", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc deleteSelection*(self: TextEdit; caretIndex: int32 = -1): void =
  expandMethodBind(className TextEdit, "delete_selection", 1025054187)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc setLineWrappingMode*(self: TextEdit; mode: TextEdit_LineWrappingMode): void =
  expandMethodBind(className TextEdit, "set_line_wrapping_mode", 2525115309)
  methodbind.ptrcall(self, [getPtr mode])

proc getLineWrappingMode*(self: TextEdit): TextEdit_LineWrappingMode =
  expandMethodBind(className TextEdit, "get_line_wrapping_mode", 3562716114)
  var ret: encoded TextEdit_LineWrappingMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextEdit_LineWrappingMode)

proc setAutowrapMode*(self: TextEdit; autowrapMode: TextServer_AutowrapMode): void =
  expandMethodBind(className TextEdit, "set_autowrap_mode", 3289138044)
  methodbind.ptrcall(self, [getPtr autowrapMode])

proc getAutowrapMode*(self: TextEdit): TextServer_AutowrapMode =
  expandMethodBind(className TextEdit, "get_autowrap_mode", 1549071663)
  var ret: encoded TextServer_AutowrapMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextServer_AutowrapMode)

proc isLineWrapped*(self: TextEdit; line: int32): bool =
  expandMethodBind(className TextEdit, "is_line_wrapped", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(bool)

proc getLineWrapCount*(self: TextEdit; line: int32): int32 =
  expandMethodBind(className TextEdit, "get_line_wrap_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(int32)

proc getLineWrapIndexAtColumn*(self: TextEdit; line: int32; column: int32): int32 =
  expandMethodBind(className TextEdit, "get_line_wrap_index_at_column", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr line, getPtr column], addr ret)
  (addr ret).decode_result(int32)

proc getLineWrappedText*(self: TextEdit; line: int32): PackedStringArray =
  expandMethodBind(className TextEdit, "get_line_wrapped_text", 647634434)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setSmoothScrollEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_smooth_scroll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSmoothScrollEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_smooth_scroll_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getVScrollBar*(self: TextEdit): VScrollBar =
  expandMethodBind(className TextEdit, "get_v_scroll_bar", 3226026593)
  var ret: encoded VScrollBar
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VScrollBar)

proc getHScrollBar*(self: TextEdit): HScrollBar =
  expandMethodBind(className TextEdit, "get_h_scroll_bar", 3774687988)
  var ret: encoded HScrollBar
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HScrollBar)

proc setVScroll*(self: TextEdit; value: float64): void =
  expandMethodBind(className TextEdit, "set_v_scroll", 373806689)
  methodbind.ptrcall(self, [getPtr value])

proc getVScroll*(self: TextEdit): float64 =
  expandMethodBind(className TextEdit, "get_v_scroll", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setHScroll*(self: TextEdit; value: int32): void =
  expandMethodBind(className TextEdit, "set_h_scroll", 1286410249)
  methodbind.ptrcall(self, [getPtr value])

proc getHScroll*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_h_scroll", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setScrollPastEndOfFileEnabled*(self: TextEdit; enable: bool): void =
  expandMethodBind(className TextEdit, "set_scroll_past_end_of_file_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isScrollPastEndOfFileEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_scroll_past_end_of_file_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVScrollSpeed*(self: TextEdit; speed: Float): void =
  expandMethodBind(className TextEdit, "set_v_scroll_speed", 373806689)
  methodbind.ptrcall(self, [getPtr speed])

proc getVScrollSpeed*(self: TextEdit): Float =
  expandMethodBind(className TextEdit, "get_v_scroll_speed", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFitContentHeightEnabled*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_fit_content_height_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isFitContentHeightEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_fit_content_height_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getScrollPosForLine*(self: TextEdit; line: int32; wrapIndex: int32 = 0): float64 =
  expandMethodBind(className TextEdit, "get_scroll_pos_for_line", 3929084198)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex], addr ret)
  (addr ret).decode_result(float64)

proc setLineAsFirstVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_line_as_first_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex])

proc getFirstVisibleLine*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_first_visible_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLineAsCenterVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_line_as_center_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex])

proc setLineAsLastVisible*(self: TextEdit; line: int32; wrapIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "set_line_as_last_visible", 2230941749)
  methodbind.ptrcall(self, [getPtr line, getPtr wrapIndex])

proc getLastFullVisibleLine*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_last_full_visible_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getLastFullVisibleLineWrapIndex*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_last_full_visible_line_wrap_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getVisibleLineCount*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_visible_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getVisibleLineCountInRange*(self: TextEdit; fromLine: int32; toLine: int32): int32 =
  expandMethodBind(className TextEdit, "get_visible_line_count_in_range", 3175239445)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine], addr ret)
  (addr ret).decode_result(int32)

proc getTotalVisibleLineCount*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_total_visible_line_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc adjustViewportToCaret*(self: TextEdit; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "adjust_viewport_to_caret", 1995695955)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc centerViewportToCaret*(self: TextEdit; caretIndex: int32 = 0): void =
  expandMethodBind(className TextEdit, "center_viewport_to_caret", 1995695955)
  methodbind.ptrcall(self, [getPtr caretIndex])

proc setDrawMinimap*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_draw_minimap", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDrawingMinimap*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_drawing_minimap", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMinimapWidth*(self: TextEdit; width: int32): void =
  expandMethodBind(className TextEdit, "set_minimap_width", 1286410249)
  methodbind.ptrcall(self, [getPtr width])

proc getMinimapWidth*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_minimap_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getMinimapVisibleLines*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_minimap_visible_lines", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addGutter*(self: TextEdit; at: int32 = -1): void =
  expandMethodBind(className TextEdit, "add_gutter", 1025054187)
  methodbind.ptrcall(self, [getPtr at])

proc removeGutter*(self: TextEdit; gutter: int32): void =
  expandMethodBind(className TextEdit, "remove_gutter", 1286410249)
  methodbind.ptrcall(self, [getPtr gutter])

proc getGutterCount*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_gutter_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setGutterName*(self: TextEdit; gutter: int32; name: String): void =
  expandMethodBind(className TextEdit, "set_gutter_name", 501894301)
  methodbind.ptrcall(self, [getPtr gutter, getPtr name])

proc getGutterName*(self: TextEdit; gutter: int32): String =
  expandMethodBind(className TextEdit, "get_gutter_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(String)

proc setGutterType*(self: TextEdit; gutter: int32; `type`: TextEdit_GutterType): void =
  expandMethodBind(className TextEdit, "set_gutter_type", 1088959071)
  methodbind.ptrcall(self, [getPtr gutter, getPtr `type`])

proc getGutterType*(self: TextEdit; gutter: int32): TextEdit_GutterType =
  expandMethodBind(className TextEdit, "get_gutter_type", 1159699127)
  var ret: encoded TextEdit_GutterType
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(TextEdit_GutterType)

proc setGutterWidth*(self: TextEdit; gutter: int32; width: int32): void =
  expandMethodBind(className TextEdit, "set_gutter_width", 3937882851)
  methodbind.ptrcall(self, [getPtr gutter, getPtr width])

proc getGutterWidth*(self: TextEdit; gutter: int32): int32 =
  expandMethodBind(className TextEdit, "get_gutter_width", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(int32)

proc setGutterDraw*(self: TextEdit; gutter: int32; draw: bool): void =
  expandMethodBind(className TextEdit, "set_gutter_draw", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr draw])

proc isGutterDrawn*(self: TextEdit; gutter: int32): bool =
  expandMethodBind(className TextEdit, "is_gutter_drawn", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(bool)

proc setGutterClickable*(self: TextEdit; gutter: int32; clickable: bool): void =
  expandMethodBind(className TextEdit, "set_gutter_clickable", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr clickable])

proc isGutterClickable*(self: TextEdit; gutter: int32): bool =
  expandMethodBind(className TextEdit, "is_gutter_clickable", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(bool)

proc setGutterOverwritable*(self: TextEdit; gutter: int32; overwritable: bool): void =
  expandMethodBind(className TextEdit, "set_gutter_overwritable", 300928843)
  methodbind.ptrcall(self, [getPtr gutter, getPtr overwritable])

proc isGutterOverwritable*(self: TextEdit; gutter: int32): bool =
  expandMethodBind(className TextEdit, "is_gutter_overwritable", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr gutter], addr ret)
  (addr ret).decode_result(bool)

proc mergeGutters*(self: TextEdit; fromLine: int32; toLine: int32): void =
  expandMethodBind(className TextEdit, "merge_gutters", 3937882851)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine])

proc setGutterCustomDraw*(self: TextEdit; column: int32; drawCallback: Callable): void =
  expandMethodBind(className TextEdit, "set_gutter_custom_draw", 957362965)
  methodbind.ptrcall(self, [getPtr column, getPtr drawCallback])

proc getTotalGutterWidth*(self: TextEdit): int32 =
  expandMethodBind(className TextEdit, "get_total_gutter_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setLineGutterMetadata*(self: TextEdit; line: int32; gutter: int32; metadata: Variant): void =
  expandMethodBind(className TextEdit, "set_line_gutter_metadata", 2060538656)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr metadata])

proc getLineGutterMetadata*(self: TextEdit; line: int32; gutter: int32): Variant =
  expandMethodBind(className TextEdit, "get_line_gutter_metadata", 678354945)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], addr ret)
  (addr ret).decode_result(Variant)

proc setLineGutterText*(self: TextEdit; line: int32; gutter: int32; text: String): void =
  expandMethodBind(className TextEdit, "set_line_gutter_text", 2285447957)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr text])

proc getLineGutterText*(self: TextEdit; line: int32; gutter: int32): String =
  expandMethodBind(className TextEdit, "get_line_gutter_text", 1391810591)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], addr ret)
  (addr ret).decode_result(String)

proc setLineGutterIcon*(self: TextEdit; line: int32; gutter: int32; icon: gdref Texture2D): void =
  expandMethodBind(className TextEdit, "set_line_gutter_icon", 176101966)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr icon])

proc getLineGutterIcon*(self: TextEdit; line: int32; gutter: int32): gdref Texture2D =
  expandMethodBind(className TextEdit, "get_line_gutter_icon", 2584904275)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setLineGutterItemColor*(self: TextEdit; line: int32; gutter: int32; color: Color): void =
  expandMethodBind(className TextEdit, "set_line_gutter_item_color", 3733378741)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr color])

proc getLineGutterItemColor*(self: TextEdit; line: int32; gutter: int32): Color =
  expandMethodBind(className TextEdit, "get_line_gutter_item_color", 2165839948)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], addr ret)
  (addr ret).decode_result(Color)

proc setLineGutterClickable*(self: TextEdit; line: int32; gutter: int32; clickable: bool): void =
  expandMethodBind(className TextEdit, "set_line_gutter_clickable", 1383440665)
  methodbind.ptrcall(self, [getPtr line, getPtr gutter, getPtr clickable])

proc isLineGutterClickable*(self: TextEdit; line: int32; gutter: int32): bool =
  expandMethodBind(className TextEdit, "is_line_gutter_clickable", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr line, getPtr gutter], addr ret)
  (addr ret).decode_result(bool)

proc setLineBackgroundColor*(self: TextEdit; line: int32; color: Color): void =
  expandMethodBind(className TextEdit, "set_line_background_color", 2878471219)
  methodbind.ptrcall(self, [getPtr line, getPtr color])

proc getLineBackgroundColor*(self: TextEdit; line: int32): Color =
  expandMethodBind(className TextEdit, "get_line_background_color", 3457211756)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(Color)

proc setSyntaxHighlighter*(self: TextEdit; syntaxHighlighter: gdref SyntaxHighlighter): void =
  expandMethodBind(className TextEdit, "set_syntax_highlighter", 2765644541)
  methodbind.ptrcall(self, [getPtr syntaxHighlighter])

proc getSyntaxHighlighter*(self: TextEdit): gdref SyntaxHighlighter =
  expandMethodBind(className TextEdit, "get_syntax_highlighter", 2721131626)
  var ret: encoded gdref SyntaxHighlighter
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SyntaxHighlighter)

proc setHighlightCurrentLine*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_highlight_current_line", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isHighlightCurrentLineEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_highlight_current_line_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHighlightAllOccurrences*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_highlight_all_occurrences", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isHighlightAllOccurrencesEnabled*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_highlight_all_occurrences_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getDrawControlChars*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "get_draw_control_chars", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDrawControlChars*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_draw_control_chars", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc setDrawTabs*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_draw_tabs", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDrawingTabs*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_drawing_tabs", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDrawSpaces*(self: TextEdit; enabled: bool): void =
  expandMethodBind(className TextEdit, "set_draw_spaces", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDrawingSpaces*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_drawing_spaces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getMenu*(self: TextEdit): PopupMenu =
  expandMethodBind(className TextEdit, "get_menu", 229722558)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PopupMenu)

proc isMenuVisible*(self: TextEdit): bool =
  expandMethodBind(className TextEdit, "is_menu_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc menuOption*(self: TextEdit; option: int32): void =
  expandMethodBind(className TextEdit, "menu_option", 1286410249)
  methodbind.ptrcall(self, [getPtr option])

proc adjustCaretsAfterEdit*(self: TextEdit; caret: int32; fromLine: int32; fromCol: int32; toLine: int32; toCol: int32): void =
  expandMethodBind(className TextEdit, "adjust_carets_after_edit", 1770277138)
  methodbind.ptrcall(self, [getPtr caret, getPtr fromLine, getPtr fromCol, getPtr toLine, getPtr toCol])

proc getCaretIndexEditOrder*(self: TextEdit): PackedInt32Array =
  expandMethodBind(className TextEdit, "get_caret_index_edit_order", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getSelectionLine*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_line", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

proc getSelectionColumn*(self: TextEdit; caretIndex: int32 = 0): int32 =
  expandMethodBind(className TextEdit, "get_selection_column", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr caretIndex], addr ret)
  (addr ret).decode_result(int32)

template text*(self: TextEdit): untyped = self.getText()
template `text=`*(self: TextEdit; value) = self.setText(value)

template placeholderText*(self: TextEdit): untyped = self.getPlaceholder()
template `placeholderText=`*(self: TextEdit; value) = self.setPlaceholder(value)

template editable*(self: TextEdit): untyped = self.isEditable()
template `editable=`*(self: TextEdit; value) = self.setEditable(value)

template contextMenuEnabled*(self: TextEdit): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: TextEdit; value) = self.setContextMenuEnabled(value)

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

template middleMousePasteEnabled*(self: TextEdit): untyped = self.isMiddleMousePasteEnabled()
template `middleMousePasteEnabled=`*(self: TextEdit; value) = self.setMiddleMousePasteEnabled(value)

template wrapMode*(self: TextEdit): untyped = self.getLineWrappingMode()
template `wrapMode=`*(self: TextEdit; value) = self.setLineWrappingMode(value)

template autowrapMode*(self: TextEdit): untyped = self.getAutowrapMode()
template `autowrapMode=`*(self: TextEdit; value) = self.setAutowrapMode(value)

template indentWrappedLines*(self: TextEdit): untyped = self.isIndentWrappedLines()
template `indentWrappedLines=`*(self: TextEdit; value) = self.setIndentWrappedLines(value)

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

const TextEdit_vmap =
  Control.vmap.concat toTable {
    "handleunicodeinput" : "_handle_unicode_input",
    "backspace" : "_backspace",
    "cut" : "_cut",
    "copy" : "_copy",
    "paste" : "_paste",
    "pasteprimaryclipboard" : "_paste_primary_clipboard",
    }
template vmap*(_: typedesc[TextEdit]): Table[string, string] = TextEdit_vmap

proc textSet*(self: TextEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("text_set")
  self.emitSignal(signalname)

proc textChanged*(self: TextEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("text_changed")
  self.emitSignal(signalname)

proc linesEditedFrom*(self: TextEdit; fromLine: Variant; toLine: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("lines_edited_from")
  let args = [fromLine, toLine]
  self.emitSignal(signalname, args)

proc caretChanged*(self: TextEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("caret_changed")
  self.emitSignal(signalname)

proc gutterClicked*(self: TextEdit; line: Variant; gutter: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("gutter_clicked")
  let args = [line, gutter]
  self.emitSignal(signalname, args)

proc gutterAdded*(self: TextEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("gutter_added")
  self.emitSignal(signalname)

proc gutterRemoved*(self: TextEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("gutter_removed")
  self.emitSignal(signalname)