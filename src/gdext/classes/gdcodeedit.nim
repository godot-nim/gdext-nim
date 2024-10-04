{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtextedit; export gdtextedit

method confirmCodeCompletion*(self: CodeEdit; replace: bool): void {.base.} = (discard)
proc confirmCodeCompletion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CodeEdit](p_instance).confirmCodeCompletion(p_args[0].decode(bool))
template confirmCodeCompletion_bind*(_: typedesc[CodeEdit]): ClassCallVirtual = confirmCodeCompletion

method requestCodeCompletion*(self: CodeEdit; force: bool): void {.base.} = (discard)
proc requestCodeCompletion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CodeEdit](p_instance).requestCodeCompletion(p_args[0].decode(bool))
template requestCodeCompletion_bind*(_: typedesc[CodeEdit]): ClassCallVirtual = requestCodeCompletion

method filterCodeCompletionCandidates*(self: CodeEdit; candidates: TypedArray[Dictionary]): TypedArray[Dictionary] {.base.} = (discard)
proc filterCodeCompletionCandidates(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CodeEdit](p_instance).filterCodeCompletionCandidates(p_args[0].decode(TypedArray[Dictionary])).encode(r_ret)
template filterCodeCompletionCandidates_bind*(_: typedesc[CodeEdit]): ClassCallVirtual = filterCodeCompletionCandidates

proc setIndentSize*(self: CodeEdit; size: int32): void =
  expandMethodBind(className CodeEdit, "set_indent_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIndentSize*(self: CodeEdit): int32 =
  expandMethodBind(className CodeEdit, "get_indent_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setIndentUsingSpaces*(self: CodeEdit; useSpaces: bool): void =
  expandMethodBind(className CodeEdit, "set_indent_using_spaces", 2586408642)
  var `?param` = [getPtr useSpaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc isIndentUsingSpaces*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_indent_using_spaces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoIndentEnabled*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_auto_indent_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoIndentEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_auto_indent_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoIndentPrefixes*(self: CodeEdit; prefixes: TypedArray[String]): void =
  expandMethodBind(className CodeEdit, "set_auto_indent_prefixes", 381264803)
  var `?param` = [getPtr prefixes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoIndentPrefixes*(self: CodeEdit): TypedArray[String] =
  expandMethodBind(className CodeEdit, "get_auto_indent_prefixes", 3995934104)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc doIndent*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "do_indent", 3218959716)
  methodbind.ptrcall(self, nil)

proc indentLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "indent_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc unindentLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "unindent_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc convertIndent*(self: CodeEdit; fromLine: int32 = -1; toLine: int32 = -1): void =
  expandMethodBind(className CodeEdit, "convert_indent", 423910286)
  var `?param` = [getPtr fromLine, getPtr toLine]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAutoBraceCompletionEnabled*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_auto_brace_completion_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoBraceCompletionEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_auto_brace_completion_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHighlightMatchingBracesEnabled*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_highlight_matching_braces_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHighlightMatchingBracesEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_highlight_matching_braces_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addAutoBraceCompletionPair*(self: CodeEdit; startKey: String; endKey: String): void =
  expandMethodBind(className CodeEdit, "add_auto_brace_completion_pair", 3186203200)
  var `?param` = [getPtr startKey, getPtr endKey]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAutoBraceCompletionPairs*(self: CodeEdit; pairs: Dictionary): void =
  expandMethodBind(className CodeEdit, "set_auto_brace_completion_pairs", 4155329257)
  var `?param` = [getPtr pairs]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoBraceCompletionPairs*(self: CodeEdit): Dictionary =
  expandMethodBind(className CodeEdit, "get_auto_brace_completion_pairs", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc hasAutoBraceCompletionOpenKey*(self: CodeEdit; openKey: String): bool =
  expandMethodBind(className CodeEdit, "has_auto_brace_completion_open_key", 3927539163)
  var `?param` = [getPtr openKey]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc hasAutoBraceCompletionCloseKey*(self: CodeEdit; closeKey: String): bool =
  expandMethodBind(className CodeEdit, "has_auto_brace_completion_close_key", 3927539163)
  var `?param` = [getPtr closeKey]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getAutoBraceCompletionCloseKey*(self: CodeEdit; openKey: String): String =
  expandMethodBind(className CodeEdit, "get_auto_brace_completion_close_key", 3135753539)
  var `?param` = [getPtr openKey]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setDrawBreakpointsGutter*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_draw_breakpoints_gutter", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawingBreakpointsGutter*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_drawing_breakpoints_gutter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawBookmarksGutter*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_draw_bookmarks_gutter", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawingBookmarksGutter*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_drawing_bookmarks_gutter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawExecutingLinesGutter*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_draw_executing_lines_gutter", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawingExecutingLinesGutter*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_drawing_executing_lines_gutter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLineAsBreakpoint*(self: CodeEdit; line: int32; breakpointed: bool): void =
  expandMethodBind(className CodeEdit, "set_line_as_breakpoint", 300928843)
  var `?param` = [getPtr line, getPtr breakpointed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineBreakpointed*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_breakpointed", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearBreakpointedLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "clear_breakpointed_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc getBreakpointedLines*(self: CodeEdit): PackedInt32Array =
  expandMethodBind(className CodeEdit, "get_breakpointed_lines", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setLineAsBookmarked*(self: CodeEdit; line: int32; bookmarked: bool): void =
  expandMethodBind(className CodeEdit, "set_line_as_bookmarked", 300928843)
  var `?param` = [getPtr line, getPtr bookmarked]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineBookmarked*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_bookmarked", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearBookmarkedLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "clear_bookmarked_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc getBookmarkedLines*(self: CodeEdit): PackedInt32Array =
  expandMethodBind(className CodeEdit, "get_bookmarked_lines", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setLineAsExecuting*(self: CodeEdit; line: int32; executing: bool): void =
  expandMethodBind(className CodeEdit, "set_line_as_executing", 300928843)
  var `?param` = [getPtr line, getPtr executing]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineExecuting*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_executing", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearExecutingLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "clear_executing_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc getExecutingLines*(self: CodeEdit): PackedInt32Array =
  expandMethodBind(className CodeEdit, "get_executing_lines", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDrawLineNumbers*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_draw_line_numbers", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawLineNumbersEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_draw_line_numbers_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLineNumbersZeroPadded*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_line_numbers_zero_padded", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineNumbersZeroPadded*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_line_numbers_zero_padded", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawFoldGutter*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_draw_fold_gutter", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawingFoldGutter*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_drawing_fold_gutter", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLineFoldingEnabled*(self: CodeEdit; enabled: bool): void =
  expandMethodBind(className CodeEdit, "set_line_folding_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineFoldingEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_line_folding_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc canFoldLine*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "can_fold_line", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc foldLine*(self: CodeEdit; line: int32): void =
  expandMethodBind(className CodeEdit, "fold_line", 1286410249)
  var `?param` = [getPtr line]
  methodbind.ptrcall(self, addr `?param`[0])

proc unfoldLine*(self: CodeEdit; line: int32): void =
  expandMethodBind(className CodeEdit, "unfold_line", 1286410249)
  var `?param` = [getPtr line]
  methodbind.ptrcall(self, addr `?param`[0])

proc foldAllLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "fold_all_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc unfoldAllLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "unfold_all_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc toggleFoldableLine*(self: CodeEdit; line: int32): void =
  expandMethodBind(className CodeEdit, "toggle_foldable_line", 1286410249)
  var `?param` = [getPtr line]
  methodbind.ptrcall(self, addr `?param`[0])

proc toggleFoldableLinesAtCarets*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "toggle_foldable_lines_at_carets", 3218959716)
  methodbind.ptrcall(self, nil)

proc isLineFolded*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_folded", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getFoldedLines*(self: CodeEdit): TypedArray[Int] =
  expandMethodBind(className CodeEdit, "get_folded_lines", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

proc createCodeRegion*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "create_code_region", 3218959716)
  methodbind.ptrcall(self, nil)

proc getCodeRegionStartTag*(self: CodeEdit): String =
  expandMethodBind(className CodeEdit, "get_code_region_start_tag", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCodeRegionEndTag*(self: CodeEdit): String =
  expandMethodBind(className CodeEdit, "get_code_region_end_tag", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCodeRegionTags*(self: CodeEdit; start: String = gdstring"region"; `end`: String = gdstring"endregion"): void =
  expandMethodBind(className CodeEdit, "set_code_region_tags", 708800718)
  var `?param` = [getPtr start, getPtr `end`]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLineCodeRegionStart*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_code_region_start", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isLineCodeRegionEnd*(self: CodeEdit; line: int32): bool =
  expandMethodBind(className CodeEdit, "is_line_code_region_end", 1116898809)
  var `?param` = [getPtr line]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addStringDelimiter*(self: CodeEdit; startKey: String; endKey: String; lineOnly: bool = false): void =
  expandMethodBind(className CodeEdit, "add_string_delimiter", 3146098955)
  var `?param` = [getPtr startKey, getPtr endKey, getPtr lineOnly]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeStringDelimiter*(self: CodeEdit; startKey: String): void =
  expandMethodBind(className CodeEdit, "remove_string_delimiter", 83702148)
  var `?param` = [getPtr startKey]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasStringDelimiter*(self: CodeEdit; startKey: String): bool =
  expandMethodBind(className CodeEdit, "has_string_delimiter", 3927539163)
  var `?param` = [getPtr startKey]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setStringDelimiters*(self: CodeEdit; stringDelimiters: TypedArray[String]): void =
  expandMethodBind(className CodeEdit, "set_string_delimiters", 381264803)
  var `?param` = [getPtr stringDelimiters]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearStringDelimiters*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "clear_string_delimiters", 3218959716)
  methodbind.ptrcall(self, nil)

proc getStringDelimiters*(self: CodeEdit): TypedArray[String] =
  expandMethodBind(className CodeEdit, "get_string_delimiters", 3995934104)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc isInString*(self: CodeEdit; line: int32; column: int32 = -1): int32 =
  expandMethodBind(className CodeEdit, "is_in_string", 688195400)
  var `?param` = [getPtr line, getPtr column]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addCommentDelimiter*(self: CodeEdit; startKey: String; endKey: String; lineOnly: bool = false): void =
  expandMethodBind(className CodeEdit, "add_comment_delimiter", 3146098955)
  var `?param` = [getPtr startKey, getPtr endKey, getPtr lineOnly]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCommentDelimiter*(self: CodeEdit; startKey: String): void =
  expandMethodBind(className CodeEdit, "remove_comment_delimiter", 83702148)
  var `?param` = [getPtr startKey]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasCommentDelimiter*(self: CodeEdit; startKey: String): bool =
  expandMethodBind(className CodeEdit, "has_comment_delimiter", 3927539163)
  var `?param` = [getPtr startKey]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCommentDelimiters*(self: CodeEdit; commentDelimiters: TypedArray[String]): void =
  expandMethodBind(className CodeEdit, "set_comment_delimiters", 381264803)
  var `?param` = [getPtr commentDelimiters]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearCommentDelimiters*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "clear_comment_delimiters", 3218959716)
  methodbind.ptrcall(self, nil)

proc getCommentDelimiters*(self: CodeEdit): TypedArray[String] =
  expandMethodBind(className CodeEdit, "get_comment_delimiters", 3995934104)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc isInComment*(self: CodeEdit; line: int32; column: int32 = -1): int32 =
  expandMethodBind(className CodeEdit, "is_in_comment", 688195400)
  var `?param` = [getPtr line, getPtr column]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getDelimiterStartKey*(self: CodeEdit; delimiterIndex: int32): String =
  expandMethodBind(className CodeEdit, "get_delimiter_start_key", 844755477)
  var `?param` = [getPtr delimiterIndex]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getDelimiterEndKey*(self: CodeEdit; delimiterIndex: int32): String =
  expandMethodBind(className CodeEdit, "get_delimiter_end_key", 844755477)
  var `?param` = [getPtr delimiterIndex]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getDelimiterStartPosition*(self: CodeEdit; line: int32; column: int32): Vector2 =
  expandMethodBind(className CodeEdit, "get_delimiter_start_position", 3016396712)
  var `?param` = [getPtr line, getPtr column]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getDelimiterEndPosition*(self: CodeEdit; line: int32; column: int32): Vector2 =
  expandMethodBind(className CodeEdit, "get_delimiter_end_position", 3016396712)
  var `?param` = [getPtr line, getPtr column]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setCodeHint*(self: CodeEdit; codeHint: String): void =
  expandMethodBind(className CodeEdit, "set_code_hint", 83702148)
  var `?param` = [getPtr codeHint]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCodeHintDrawBelow*(self: CodeEdit; drawBelow: bool): void =
  expandMethodBind(className CodeEdit, "set_code_hint_draw_below", 2586408642)
  var `?param` = [getPtr drawBelow]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextForCodeCompletion*(self: CodeEdit): String =
  expandMethodBind(className CodeEdit, "get_text_for_code_completion", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc requestCodeCompletion*(self: CodeEdit; force: bool = false): void =
  expandMethodBind(className CodeEdit, "request_code_completion", 107499316)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc addCodeCompletionOption*(self: CodeEdit; `type`: CodeEdit_CodeCompletionKind; displayText: String; insertText: String; textColor: Color = color(1, 1, 1, 1); icon: gdref Resource = default gdref Resource; value: Variant = default(Variant); location: int32 = 1024): void =
  expandMethodBind(className CodeEdit, "add_code_completion_option", 3944379502)
  var `?param` = [getPtr `type`, getPtr displayText, getPtr insertText, getPtr textColor, getPtr icon, getPtr value, getPtr location]
  methodbind.ptrcall(self, addr `?param`[0])

proc updateCodeCompletionOptions*(self: CodeEdit; force: bool): void =
  expandMethodBind(className CodeEdit, "update_code_completion_options", 2586408642)
  var `?param` = [getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCodeCompletionOptions*(self: CodeEdit): TypedArray[Dictionary] =
  expandMethodBind(className CodeEdit, "get_code_completion_options", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getCodeCompletionOption*(self: CodeEdit; index: int32): Dictionary =
  expandMethodBind(className CodeEdit, "get_code_completion_option", 3485342025)
  var `?param` = [getPtr index]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc getCodeCompletionSelectedIndex*(self: CodeEdit): int32 =
  expandMethodBind(className CodeEdit, "get_code_completion_selected_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCodeCompletionSelectedIndex*(self: CodeEdit; index: int32): void =
  expandMethodBind(className CodeEdit, "set_code_completion_selected_index", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc confirmCodeCompletion*(self: CodeEdit; replace: bool = false): void =
  expandMethodBind(className CodeEdit, "confirm_code_completion", 107499316)
  var `?param` = [getPtr replace]
  methodbind.ptrcall(self, addr `?param`[0])

proc cancelCodeCompletion*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "cancel_code_completion", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCodeCompletionEnabled*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_code_completion_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCodeCompletionEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_code_completion_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCodeCompletionPrefixes*(self: CodeEdit; prefixes: TypedArray[String]): void =
  expandMethodBind(className CodeEdit, "set_code_completion_prefixes", 381264803)
  var `?param` = [getPtr prefixes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCodeCompletionPrefixes*(self: CodeEdit): TypedArray[String] =
  expandMethodBind(className CodeEdit, "get_code_completion_prefixes", 3995934104)
  var ret: encoded TypedArray[String]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[String])

proc setLineLengthGuidelines*(self: CodeEdit; guidelineColumns: TypedArray[Int]): void =
  expandMethodBind(className CodeEdit, "set_line_length_guidelines", 381264803)
  var `?param` = [getPtr guidelineColumns]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLineLengthGuidelines*(self: CodeEdit): TypedArray[Int] =
  expandMethodBind(className CodeEdit, "get_line_length_guidelines", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

proc setSymbolLookupOnClickEnabled*(self: CodeEdit; enable: bool): void =
  expandMethodBind(className CodeEdit, "set_symbol_lookup_on_click_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isSymbolLookupOnClickEnabled*(self: CodeEdit): bool =
  expandMethodBind(className CodeEdit, "is_symbol_lookup_on_click_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getTextForSymbolLookup*(self: CodeEdit): String =
  expandMethodBind(className CodeEdit, "get_text_for_symbol_lookup", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTextWithCursorChar*(self: CodeEdit; line: int32; column: int32): String =
  expandMethodBind(className CodeEdit, "get_text_with_cursor_char", 1391810591)
  var `?param` = [getPtr line, getPtr column]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setSymbolLookupWordAsValid*(self: CodeEdit; valid: bool): void =
  expandMethodBind(className CodeEdit, "set_symbol_lookup_word_as_valid", 2586408642)
  var `?param` = [getPtr valid]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveLinesUp*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "move_lines_up", 3218959716)
  methodbind.ptrcall(self, nil)

proc moveLinesDown*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "move_lines_down", 3218959716)
  methodbind.ptrcall(self, nil)

proc deleteLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "delete_lines", 3218959716)
  methodbind.ptrcall(self, nil)

proc duplicateSelection*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "duplicate_selection", 3218959716)
  methodbind.ptrcall(self, nil)

proc duplicateLines*(self: CodeEdit): void =
  expandMethodBind(className CodeEdit, "duplicate_lines", 3218959716)
  methodbind.ptrcall(self, nil)

template symbolLookupOnClick*(self: CodeEdit): untyped = self.isSymbolLookupOnClickEnabled()
template `symbolLookupOnClick=`*(self: CodeEdit; value) = self.setSymbolLookupOnClickEnabled(value)

template lineFolding*(self: CodeEdit): untyped = self.isLineFoldingEnabled()
template `lineFolding=`*(self: CodeEdit; value) = self.setLineFoldingEnabled(value)

template lineLengthGuidelines*(self: CodeEdit): untyped = self.getLineLengthGuidelines()
template `lineLengthGuidelines=`*(self: CodeEdit; value) = self.setLineLengthGuidelines(value)

template guttersDrawBreakpointsGutter*(self: CodeEdit): untyped = self.isDrawingBreakpointsGutter()
template `guttersDrawBreakpointsGutter=`*(self: CodeEdit; value) = self.setDrawBreakpointsGutter(value)

template guttersDrawBookmarks*(self: CodeEdit): untyped = self.isDrawingBookmarksGutter()
template `guttersDrawBookmarks=`*(self: CodeEdit; value) = self.setDrawBookmarksGutter(value)

template guttersDrawExecutingLines*(self: CodeEdit): untyped = self.isDrawingExecutingLinesGutter()
template `guttersDrawExecutingLines=`*(self: CodeEdit; value) = self.setDrawExecutingLinesGutter(value)

template guttersDrawLineNumbers*(self: CodeEdit): untyped = self.isDrawLineNumbersEnabled()
template `guttersDrawLineNumbers=`*(self: CodeEdit; value) = self.setDrawLineNumbers(value)

template guttersZeroPadLineNumbers*(self: CodeEdit): untyped = self.isLineNumbersZeroPadded()
template `guttersZeroPadLineNumbers=`*(self: CodeEdit; value) = self.setLineNumbersZeroPadded(value)

template guttersDrawFoldGutter*(self: CodeEdit): untyped = self.isDrawingFoldGutter()
template `guttersDrawFoldGutter=`*(self: CodeEdit; value) = self.setDrawFoldGutter(value)

template delimiterStrings*(self: CodeEdit): untyped = self.getStringDelimiters()
template `delimiterStrings=`*(self: CodeEdit; value) = self.setStringDelimiters(value)

template delimiterComments*(self: CodeEdit): untyped = self.getCommentDelimiters()
template `delimiterComments=`*(self: CodeEdit; value) = self.setCommentDelimiters(value)

template codeCompletionEnabled*(self: CodeEdit): untyped = self.isCodeCompletionEnabled()
template `codeCompletionEnabled=`*(self: CodeEdit; value) = self.setCodeCompletionEnabled(value)

template codeCompletionPrefixes*(self: CodeEdit): untyped = self.getCodeCompletionPrefixes()
template `codeCompletionPrefixes=`*(self: CodeEdit; value) = self.setCodeCompletionPrefixes(value)

template indentSize*(self: CodeEdit): untyped = self.getIndentSize()
template `indentSize=`*(self: CodeEdit; value) = self.setIndentSize(value)

template indentUseSpaces*(self: CodeEdit): untyped = self.isIndentUsingSpaces()
template `indentUseSpaces=`*(self: CodeEdit; value) = self.setIndentUsingSpaces(value)

template indentAutomatic*(self: CodeEdit): untyped = self.isAutoIndentEnabled()
template `indentAutomatic=`*(self: CodeEdit; value) = self.setAutoIndentEnabled(value)

template indentAutomaticPrefixes*(self: CodeEdit): untyped = self.getAutoIndentPrefixes()
template `indentAutomaticPrefixes=`*(self: CodeEdit; value) = self.setAutoIndentPrefixes(value)

template autoBraceCompletionEnabled*(self: CodeEdit): untyped = self.isAutoBraceCompletionEnabled()
template `autoBraceCompletionEnabled=`*(self: CodeEdit; value) = self.setAutoBraceCompletionEnabled(value)

template autoBraceCompletionHighlightMatching*(self: CodeEdit): untyped = self.isHighlightMatchingBracesEnabled()
template `autoBraceCompletionHighlightMatching=`*(self: CodeEdit; value) = self.setHighlightMatchingBracesEnabled(value)

template autoBraceCompletionPairs*(self: CodeEdit): untyped = self.getAutoBraceCompletionPairs()
template `autoBraceCompletionPairs=`*(self: CodeEdit; value) = self.setAutoBraceCompletionPairs(value)

const CodeEdit_vmap =
  TextEdit.vmap.concat toTable {
    "confirmcodecompletion" : "_confirm_code_completion",
    "requestcodecompletion" : "_request_code_completion",
    "filtercodecompletioncandidates" : "_filter_code_completion_candidates",
    }
template vmap*(_: typedesc[CodeEdit]): Table[string, string] = CodeEdit_vmap

proc breakpointToggled*(self: CodeEdit; line: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("breakpoint_toggled")
  let args = [line]
  self.emitSignal(signalname, args)

proc codeCompletionRequested*(self: CodeEdit): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("code_completion_requested")
  self.emitSignal(signalname)

proc symbolLookup*(self: CodeEdit; symbol: Variant; line: Variant; column: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("symbol_lookup")
  let args = [symbol, line, column]
  self.emitSignal(signalname, args)

proc symbolValidate*(self: CodeEdit; symbol: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("symbol_validate")
  let args = [symbol]
  self.emitSignal(signalname, args)