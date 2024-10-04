{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setHorizontalAlignment*(self: LineEdit; alignment: HorizontalAlignment): void =
  expandMethodBind(className LineEdit, "set_horizontal_alignment", 2312603777)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHorizontalAlignment*(self: LineEdit): HorizontalAlignment =
  expandMethodBind(className LineEdit, "get_horizontal_alignment", 341400642)
  var ret: encoded HorizontalAlignment
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HorizontalAlignment)

proc clear*(self: LineEdit): void =
  expandMethodBind(className LineEdit, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc select*(self: LineEdit; `from`: int32 = 0; to: int32 = -1): void =
  expandMethodBind(className LineEdit, "select", 1328111411)
  var `?param` = [getPtr `from`, getPtr to]
  methodbind.ptrcall(self, addr `?param`[0])

proc selectAll*(self: LineEdit): void =
  expandMethodBind(className LineEdit, "select_all", 3218959716)
  methodbind.ptrcall(self, nil)

proc deselect*(self: LineEdit): void =
  expandMethodBind(className LineEdit, "deselect", 3218959716)
  methodbind.ptrcall(self, nil)

proc hasSelection*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "has_selection", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getSelectedText*(self: LineEdit): String =
  expandMethodBind(className LineEdit, "get_selected_text", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getSelectionFromColumn*(self: LineEdit): int32 =
  expandMethodBind(className LineEdit, "get_selection_from_column", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSelectionToColumn*(self: LineEdit): int32 =
  expandMethodBind(className LineEdit, "get_selection_to_column", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setText*(self: LineEdit; text: String): void =
  expandMethodBind(className LineEdit, "set_text", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getText*(self: LineEdit): String =
  expandMethodBind(className LineEdit, "get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDrawControlChars*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "get_draw_control_chars", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawControlChars*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_draw_control_chars", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTextDirection*(self: LineEdit; direction: Control_TextDirection): void =
  expandMethodBind(className LineEdit, "set_text_direction", 119160795)
  var `?param` = [getPtr direction]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextDirection*(self: LineEdit): Control_TextDirection =
  expandMethodBind(className LineEdit, "get_text_direction", 797257663)
  var ret: encoded Control_TextDirection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Control_TextDirection)

proc setLanguage*(self: LineEdit; language: String): void =
  expandMethodBind(className LineEdit, "set_language", 83702148)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: LineEdit): String =
  expandMethodBind(className LineEdit, "get_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setStructuredTextBidiOverride*(self: LineEdit; parser: TextServer_StructuredTextParser): void =
  expandMethodBind(className LineEdit, "set_structured_text_bidi_override", 55961453)
  var `?param` = [getPtr parser]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverride*(self: LineEdit): TextServer_StructuredTextParser =
  expandMethodBind(className LineEdit, "get_structured_text_bidi_override", 3385126229)
  var ret: encoded TextServer_StructuredTextParser
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextServer_StructuredTextParser)

proc setStructuredTextBidiOverrideOptions*(self: LineEdit; args: Array): void =
  expandMethodBind(className LineEdit, "set_structured_text_bidi_override_options", 381264803)
  var `?param` = [getPtr args]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStructuredTextBidiOverrideOptions*(self: LineEdit): Array =
  expandMethodBind(className LineEdit, "get_structured_text_bidi_override_options", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setPlaceholder*(self: LineEdit; text: String): void =
  expandMethodBind(className LineEdit, "set_placeholder", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlaceholder*(self: LineEdit): String =
  expandMethodBind(className LineEdit, "get_placeholder", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCaretColumn*(self: LineEdit; position: int32): void =
  expandMethodBind(className LineEdit, "set_caret_column", 1286410249)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCaretColumn*(self: LineEdit): int32 =
  expandMethodBind(className LineEdit, "get_caret_column", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getScrollOffset*(self: LineEdit): Float =
  expandMethodBind(className LineEdit, "get_scroll_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setExpandToTextLengthEnabled*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_expand_to_text_length_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isExpandToTextLengthEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_expand_to_text_length_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCaretBlinkEnabled*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_caret_blink_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCaretBlinkEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_caret_blink_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCaretMidGraphemeEnabled*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_caret_mid_grapheme_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCaretMidGraphemeEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_caret_mid_grapheme_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCaretForceDisplayed*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_caret_force_displayed", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCaretForceDisplayed*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_caret_force_displayed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCaretBlinkInterval*(self: LineEdit; interval: Float): void =
  expandMethodBind(className LineEdit, "set_caret_blink_interval", 373806689)
  var `?param` = [getPtr interval]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCaretBlinkInterval*(self: LineEdit): Float =
  expandMethodBind(className LineEdit, "get_caret_blink_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxLength*(self: LineEdit; chars: int32): void =
  expandMethodBind(className LineEdit, "set_max_length", 1286410249)
  var `?param` = [getPtr chars]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxLength*(self: LineEdit): int32 =
  expandMethodBind(className LineEdit, "get_max_length", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc insertTextAtCaret*(self: LineEdit; text: String): void =
  expandMethodBind(className LineEdit, "insert_text_at_caret", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc deleteCharAtCaret*(self: LineEdit): void =
  expandMethodBind(className LineEdit, "delete_char_at_caret", 3218959716)
  methodbind.ptrcall(self, nil)

proc deleteText*(self: LineEdit; fromColumn: int32; toColumn: int32): void =
  expandMethodBind(className LineEdit, "delete_text", 3937882851)
  var `?param` = [getPtr fromColumn, getPtr toColumn]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEditable*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_editable", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditable*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_editable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSecret*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_secret", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSecret*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_secret", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSecretCharacter*(self: LineEdit; character: String): void =
  expandMethodBind(className LineEdit, "set_secret_character", 83702148)
  var `?param` = [getPtr character]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSecretCharacter*(self: LineEdit): String =
  expandMethodBind(className LineEdit, "get_secret_character", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc menuOption*(self: LineEdit; option: int32): void =
  expandMethodBind(className LineEdit, "menu_option", 1286410249)
  var `?param` = [getPtr option]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMenu*(self: LineEdit): PopupMenu =
  expandMethodBind(className LineEdit, "get_menu", 229722558)
  var ret: encoded PopupMenu
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PopupMenu)

proc isMenuVisible*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_menu_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setContextMenuEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_context_menu_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isContextMenuEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_context_menu_enabled", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setVirtualKeyboardEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_virtual_keyboard_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVirtualKeyboardEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_virtual_keyboard_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setVirtualKeyboardType*(self: LineEdit; `type`: LineEdit_VirtualKeyboardType): void =
  expandMethodBind(className LineEdit, "set_virtual_keyboard_type", 2696893573)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVirtualKeyboardType*(self: LineEdit): LineEdit_VirtualKeyboardType =
  expandMethodBind(className LineEdit, "get_virtual_keyboard_type", 1928699316)
  var ret: encoded LineEdit_VirtualKeyboardType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LineEdit_VirtualKeyboardType)

proc setClearButtonEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_clear_button_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isClearButtonEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_clear_button_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShortcutKeysEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_shortcut_keys_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShortcutKeysEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_shortcut_keys_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMiddleMousePasteEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_middle_mouse_paste_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMiddleMousePasteEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_middle_mouse_paste_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSelectingEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_selecting_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSelectingEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_selecting_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDeselectOnFocusLossEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_deselect_on_focus_loss_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeselectOnFocusLossEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_deselect_on_focus_loss_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDragAndDropSelectionEnabled*(self: LineEdit; enable: bool): void =
  expandMethodBind(className LineEdit, "set_drag_and_drop_selection_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDragAndDropSelectionEnabled*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_drag_and_drop_selection_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRightIcon*(self: LineEdit; icon: gdref Texture2D): void =
  expandMethodBind(className LineEdit, "set_right_icon", 4051416890)
  var `?param` = [getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRightIcon*(self: LineEdit): gdref Texture2D =
  expandMethodBind(className LineEdit, "get_right_icon", 255860311)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFlat*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_flat", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFlat*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_flat", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSelectAllOnFocus*(self: LineEdit; enabled: bool): void =
  expandMethodBind(className LineEdit, "set_select_all_on_focus", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSelectAllOnFocus*(self: LineEdit): bool =
  expandMethodBind(className LineEdit, "is_select_all_on_focus", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

template expandToTextLength*(self: LineEdit): untyped = self.isExpandToTextLengthEnabled()
template `expandToTextLength=`*(self: LineEdit; value) = self.setExpandToTextLengthEnabled(value)

template contextMenuEnabled*(self: LineEdit): untyped = self.isContextMenuEnabled()
template `contextMenuEnabled=`*(self: LineEdit; value) = self.setContextMenuEnabled(value)

template virtualKeyboardEnabled*(self: LineEdit): untyped = self.isVirtualKeyboardEnabled()
template `virtualKeyboardEnabled=`*(self: LineEdit; value) = self.setVirtualKeyboardEnabled(value)

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

const LineEdit_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LineEdit]): Table[string, string] = LineEdit_vmap

proc textChanged*(self: LineEdit; newText: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("text_changed")
  let args = [newText]
  self.emitSignal(signalname, args)

proc textChangeRejected*(self: LineEdit; rejectedSubstring: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("text_change_rejected")
  let args = [rejectedSubstring]
  self.emitSignal(signalname, args)

proc textSubmitted*(self: LineEdit; newText: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("text_submitted")
  let args = [newText]
  self.emitSignal(signalname, args)