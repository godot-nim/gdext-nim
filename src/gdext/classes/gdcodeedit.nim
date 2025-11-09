{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtextedit; export gdtextedit

expandOnClassImported(CodeEdit, TextEdit)

method confirmCodeCompletion*(self: CodeEdit; replace: bool): void {.base.} = (discard)
proc registerVirtual_confirmCodeCompletion*[T: CodeEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_confirm_code_completion"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CodeEdit](p_instance).confirmCodeCompletion(p_args[0].decode(bool))

method requestCodeCompletion*(self: CodeEdit; force: bool): void {.base.} = (discard)
proc registerVirtual_requestCodeCompletion*[T: CodeEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_request_code_completion"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CodeEdit](p_instance).requestCodeCompletion(p_args[0].decode(bool))

method filterCodeCompletionCandidates*(self: CodeEdit; candidates: TypedArray[Dictionary]): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_filterCodeCompletionCandidates*[T: CodeEdit](Self: typedesc[T]) =
  Self.vmethods[newStringName"_filter_code_completion_candidates"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CodeEdit](p_instance).filterCodeCompletionCandidates(p_args[0].decode(TypedArray[Dictionary])).encode(r_ret)

proc setIndentSize*(self: CodeEdit; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_indent_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getIndentSize*(self: CodeEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_indent_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setIndentUsingSpaces*(self: CodeEdit; useSpaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_indent_using_spaces", 2586408642)
  methodbind.ptrcall(self, [getPtr useSpaces], void)

proc isIndentUsingSpaces*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_indent_using_spaces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoIndentEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_auto_indent_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoIndentEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_auto_indent_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoIndentPrefixes*(self: CodeEdit; prefixes: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_auto_indent_prefixes", 381264803)
  methodbind.ptrcall(self, [getPtr prefixes], void)

proc getAutoIndentPrefixes*(self: CodeEdit): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_auto_indent_prefixes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[String])

proc doIndent*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "do_indent", 3218959716)
  methodbind.ptrcall(self, [], void)

proc indentLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "indent_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc unindentLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "unindent_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc convertIndent*(self: CodeEdit; fromLine: int32 = -1; toLine: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "convert_indent", 423910286)
  methodbind.ptrcall(self, [getPtr fromLine, getPtr toLine], void)

proc setAutoBraceCompletionEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_auto_brace_completion_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoBraceCompletionEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_auto_brace_completion_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHighlightMatchingBracesEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_highlight_matching_braces_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHighlightMatchingBracesEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_highlight_matching_braces_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addAutoBraceCompletionPair*(self: CodeEdit; startKey: String; endKey: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "add_auto_brace_completion_pair", 3186203200)
  methodbind.ptrcall(self, [getPtr startKey, getPtr endKey], void)

proc setAutoBraceCompletionPairs*(self: CodeEdit; pairs: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_auto_brace_completion_pairs", 4155329257)
  methodbind.ptrcall(self, [getPtr pairs], void)

proc getAutoBraceCompletionPairs*(self: CodeEdit): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_auto_brace_completion_pairs", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc hasAutoBraceCompletionOpenKey*(self: CodeEdit; openKey: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "has_auto_brace_completion_open_key", 3927539163)
  methodbind.ptrcall(self, [getPtr openKey], bool)

proc hasAutoBraceCompletionCloseKey*(self: CodeEdit; closeKey: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "has_auto_brace_completion_close_key", 3927539163)
  methodbind.ptrcall(self, [getPtr closeKey], bool)

proc getAutoBraceCompletionCloseKey*(self: CodeEdit; openKey: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_auto_brace_completion_close_key", 3135753539)
  methodbind.ptrcall(self, [getPtr openKey], String)

proc setDrawBreakpointsGutter*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_draw_breakpoints_gutter", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawingBreakpointsGutter*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_drawing_breakpoints_gutter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawBookmarksGutter*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_draw_bookmarks_gutter", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawingBookmarksGutter*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_drawing_bookmarks_gutter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawExecutingLinesGutter*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_draw_executing_lines_gutter", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawingExecutingLinesGutter*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_drawing_executing_lines_gutter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLineAsBreakpoint*(self: CodeEdit; line: int32; breakpointed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_as_breakpoint", 300928843)
  methodbind.ptrcall(self, [getPtr line, getPtr breakpointed], void)

proc isLineBreakpointed*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_breakpointed", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc clearBreakpointedLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "clear_breakpointed_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getBreakpointedLines*(self: CodeEdit): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_breakpointed_lines", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setLineAsBookmarked*(self: CodeEdit; line: int32; bookmarked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_as_bookmarked", 300928843)
  methodbind.ptrcall(self, [getPtr line, getPtr bookmarked], void)

proc isLineBookmarked*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_bookmarked", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc clearBookmarkedLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "clear_bookmarked_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getBookmarkedLines*(self: CodeEdit): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_bookmarked_lines", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setLineAsExecuting*(self: CodeEdit; line: int32; executing: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_as_executing", 300928843)
  methodbind.ptrcall(self, [getPtr line, getPtr executing], void)

proc isLineExecuting*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_executing", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc clearExecutingLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "clear_executing_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getExecutingLines*(self: CodeEdit): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_executing_lines", 1930428628)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setDrawLineNumbers*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_draw_line_numbers", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawLineNumbersEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_draw_line_numbers_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLineNumbersZeroPadded*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_numbers_zero_padded", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLineNumbersZeroPadded*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_numbers_zero_padded", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawFoldGutter*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_draw_fold_gutter", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDrawingFoldGutter*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_drawing_fold_gutter", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLineFoldingEnabled*(self: CodeEdit; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_folding_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isLineFoldingEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_folding_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc canFoldLine*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "can_fold_line", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc foldLine*(self: CodeEdit; line: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "fold_line", 1286410249)
  methodbind.ptrcall(self, [getPtr line], void)

proc unfoldLine*(self: CodeEdit; line: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "unfold_line", 1286410249)
  methodbind.ptrcall(self, [getPtr line], void)

proc foldAllLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "fold_all_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc unfoldAllLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "unfold_all_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc toggleFoldableLine*(self: CodeEdit; line: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "toggle_foldable_line", 1286410249)
  methodbind.ptrcall(self, [getPtr line], void)

proc toggleFoldableLinesAtCarets*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "toggle_foldable_lines_at_carets", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isLineFolded*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_folded", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc getFoldedLines*(self: CodeEdit): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_folded_lines", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Int])

proc createCodeRegion*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "create_code_region", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCodeRegionStartTag*(self: CodeEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_region_start_tag", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCodeRegionEndTag*(self: CodeEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_region_end_tag", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCodeRegionTags*(self: CodeEdit; start: String = newGdString("region"); `end`: String = newGdString("endregion")): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_region_tags", 708800718)
  methodbind.ptrcall(self, [getPtr start, getPtr `end`], void)

proc isLineCodeRegionStart*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_code_region_start", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc isLineCodeRegionEnd*(self: CodeEdit; line: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_line_code_region_end", 1116898809)
  methodbind.ptrcall(self, [getPtr line], bool)

proc addStringDelimiter*(self: CodeEdit; startKey: String; endKey: String; lineOnly: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "add_string_delimiter", 3146098955)
  methodbind.ptrcall(self, [getPtr startKey, getPtr endKey, getPtr lineOnly], void)

proc removeStringDelimiter*(self: CodeEdit; startKey: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "remove_string_delimiter", 83702148)
  methodbind.ptrcall(self, [getPtr startKey], void)

proc hasStringDelimiter*(self: CodeEdit; startKey: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "has_string_delimiter", 3927539163)
  methodbind.ptrcall(self, [getPtr startKey], bool)

proc setStringDelimiters*(self: CodeEdit; stringDelimiters: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_string_delimiters", 381264803)
  methodbind.ptrcall(self, [getPtr stringDelimiters], void)

proc clearStringDelimiters*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "clear_string_delimiters", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getStringDelimiters*(self: CodeEdit): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_string_delimiters", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[String])

proc isInString*(self: CodeEdit; line: int32; column: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_in_string", 688195400)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc addCommentDelimiter*(self: CodeEdit; startKey: String; endKey: String; lineOnly: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "add_comment_delimiter", 3146098955)
  methodbind.ptrcall(self, [getPtr startKey, getPtr endKey, getPtr lineOnly], void)

proc removeCommentDelimiter*(self: CodeEdit; startKey: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "remove_comment_delimiter", 83702148)
  methodbind.ptrcall(self, [getPtr startKey], void)

proc hasCommentDelimiter*(self: CodeEdit; startKey: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "has_comment_delimiter", 3927539163)
  methodbind.ptrcall(self, [getPtr startKey], bool)

proc setCommentDelimiters*(self: CodeEdit; commentDelimiters: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_comment_delimiters", 381264803)
  methodbind.ptrcall(self, [getPtr commentDelimiters], void)

proc clearCommentDelimiters*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "clear_comment_delimiters", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCommentDelimiters*(self: CodeEdit): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_comment_delimiters", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[String])

proc isInComment*(self: CodeEdit; line: int32; column: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_in_comment", 688195400)
  methodbind.ptrcall(self, [getPtr line, getPtr column], int32)

proc getDelimiterStartKey*(self: CodeEdit; delimiterIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_delimiter_start_key", 844755477)
  methodbind.ptrcall(self, [getPtr delimiterIndex], String)

proc getDelimiterEndKey*(self: CodeEdit; delimiterIndex: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_delimiter_end_key", 844755477)
  methodbind.ptrcall(self, [getPtr delimiterIndex], String)

proc getDelimiterStartPosition*(self: CodeEdit; line: int32; column: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_delimiter_start_position", 3016396712)
  methodbind.ptrcall(self, [getPtr line, getPtr column], Vector2)

proc getDelimiterEndPosition*(self: CodeEdit; line: int32; column: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_delimiter_end_position", 3016396712)
  methodbind.ptrcall(self, [getPtr line, getPtr column], Vector2)

proc setCodeHint*(self: CodeEdit; codeHint: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_hint", 83702148)
  methodbind.ptrcall(self, [getPtr codeHint], void)

proc setCodeHintDrawBelow*(self: CodeEdit; drawBelow: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_hint_draw_below", 2586408642)
  methodbind.ptrcall(self, [getPtr drawBelow], void)

proc getTextForCodeCompletion*(self: CodeEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_text_for_code_completion", 201670096)
  methodbind.ptrcall(self, [], String)

proc requestCodeCompletion*(self: CodeEdit; force: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "request_code_completion", 107499316)
  methodbind.ptrcall(self, [getPtr force], void)

proc addCodeCompletionOption*(self: CodeEdit; `type`: CodeEdit_CodeCompletionKind; displayText: String; insertText: String; textColor: Color = color(1, 1, 1, 1); icon: gdref Resource = default gdref Resource; value: Variant = default(Variant); location: int32 = 1024): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "add_code_completion_option", 3944379502)
  methodbind.ptrcall(self, [getPtr `type`, getPtr displayText, getPtr insertText, getPtr textColor, getPtr icon, getPtr value, getPtr location], void)

proc updateCodeCompletionOptions*(self: CodeEdit; force: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "update_code_completion_options", 2586408642)
  methodbind.ptrcall(self, [getPtr force], void)

proc getCodeCompletionOptions*(self: CodeEdit): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_completion_options", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getCodeCompletionOption*(self: CodeEdit; index: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_completion_option", 3485342025)
  methodbind.ptrcall(self, [getPtr index], Dictionary)

proc getCodeCompletionSelectedIndex*(self: CodeEdit): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_completion_selected_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCodeCompletionSelectedIndex*(self: CodeEdit; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_completion_selected_index", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc confirmCodeCompletion*(self: CodeEdit; replace: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "confirm_code_completion", 107499316)
  methodbind.ptrcall(self, [getPtr replace], void)

proc cancelCodeCompletion*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "cancel_code_completion", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCodeCompletionEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_completion_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCodeCompletionEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_code_completion_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCodeCompletionPrefixes*(self: CodeEdit; prefixes: TypedArray[String]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_code_completion_prefixes", 381264803)
  methodbind.ptrcall(self, [getPtr prefixes], void)

proc getCodeCompletionPrefixes*(self: CodeEdit): TypedArray[String] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_code_completion_prefixes", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[String])

proc setLineLengthGuidelines*(self: CodeEdit; guidelineColumns: TypedArray[Int]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_line_length_guidelines", 381264803)
  methodbind.ptrcall(self, [getPtr guidelineColumns], void)

proc getLineLengthGuidelines*(self: CodeEdit): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_line_length_guidelines", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Int])

proc setSymbolLookupOnClickEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_symbol_lookup_on_click_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSymbolLookupOnClickEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_symbol_lookup_on_click_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getTextForSymbolLookup*(self: CodeEdit): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_text_for_symbol_lookup", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTextWithCursorChar*(self: CodeEdit; line: int32; column: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "get_text_with_cursor_char", 1391810591)
  methodbind.ptrcall(self, [getPtr line, getPtr column], String)

proc setSymbolLookupWordAsValid*(self: CodeEdit; valid: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_symbol_lookup_word_as_valid", 2586408642)
  methodbind.ptrcall(self, [getPtr valid], void)

proc setSymbolTooltipOnHoverEnabled*(self: CodeEdit; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "set_symbol_tooltip_on_hover_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSymbolTooltipOnHoverEnabled*(self: CodeEdit): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "is_symbol_tooltip_on_hover_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc moveLinesUp*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "move_lines_up", 3218959716)
  methodbind.ptrcall(self, [], void)

proc moveLinesDown*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "move_lines_down", 3218959716)
  methodbind.ptrcall(self, [], void)

proc deleteLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "delete_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

proc duplicateSelection*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "duplicate_selection", 3218959716)
  methodbind.ptrcall(self, [], void)

proc duplicateLines*(self: CodeEdit): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeEdit, "duplicate_lines", 3218959716)
  methodbind.ptrcall(self, [], void)

template symbolLookupOnClick*(self: CodeEdit): untyped = self.isSymbolLookupOnClickEnabled()
template `symbolLookupOnClick=`*(self: CodeEdit; value) = self.setSymbolLookupOnClickEnabled(value)

template symbolTooltipOnHover*(self: CodeEdit): untyped = self.isSymbolTooltipOnHoverEnabled()
template `symbolTooltipOnHover=`*(self: CodeEdit; value) = self.setSymbolTooltipOnHoverEnabled(value)

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
