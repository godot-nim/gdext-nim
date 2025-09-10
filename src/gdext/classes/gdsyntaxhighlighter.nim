{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource
export SyntaxHighlighter

method getLineSyntaxHighlighting*(self: SyntaxHighlighter; line: int32): Dictionary {.base.} = (discard)
proc registerVirtual_getLineSyntaxHighlighting*[T: SyntaxHighlighter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_line_syntax_highlighting"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SyntaxHighlighter](p_instance).getLineSyntaxHighlighting(p_args[0].decode(int32)).encode(r_ret)

method clearHighlightingCache*(self: SyntaxHighlighter): void {.base.} = (discard)
proc registerVirtual_clearHighlightingCache*[T: SyntaxHighlighter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_clear_highlighting_cache"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SyntaxHighlighter](p_instance).clearHighlightingCache()

method updateCache*(self: SyntaxHighlighter): void {.base.} = (discard)
proc registerVirtual_updateCache*[T: SyntaxHighlighter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update_cache"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SyntaxHighlighter](p_instance).updateCache()

proc getLineSyntaxHighlighting*(self: SyntaxHighlighter; line: int32): Dictionary =
  expandMethodBind(className SyntaxHighlighter, "get_line_syntax_highlighting", 3554694381)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr line], addr ret)
  (addr ret).decode_result(Dictionary)

proc updateCache*(self: SyntaxHighlighter): void =
  expandMethodBind(className SyntaxHighlighter, "update_cache", 3218959716)
  methodbind.ptrcall(self, [])

proc clearHighlightingCache*(self: SyntaxHighlighter): void =
  expandMethodBind(className SyntaxHighlighter, "clear_highlighting_cache", 3218959716)
  methodbind.ptrcall(self, [])

proc getTextEdit*(self: SyntaxHighlighter): TextEdit =
  expandMethodBind(className SyntaxHighlighter, "get_text_edit", 1893027089)
  var ret: encoded TextEdit
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextEdit)
