{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(SyntaxHighlighter, Resource)

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
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SyntaxHighlighter, "get_line_syntax_highlighting", 3554694381)
  methodbind.ptrcall(self, [getPtr line], Dictionary)

proc updateCache*(self: SyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SyntaxHighlighter, "update_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearHighlightingCache*(self: SyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SyntaxHighlighter, "clear_highlighting_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getTextEdit*(self: SyntaxHighlighter): TextEdit =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SyntaxHighlighter, "get_text_edit", 1893027089)
  methodbind.ptrcall(self, [], TextEdit)
