{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

method getLineSyntaxHighlighting*(self: SyntaxHighlighter; line: int32): Dictionary {.base.} = (discard)
proc getLineSyntaxHighlighting(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SyntaxHighlighter](p_instance).getLineSyntaxHighlighting(p_args[0].decode(int32)).encode(r_ret)
template getLineSyntaxHighlighting_bind*(_: typedesc[SyntaxHighlighter]): ClassCallVirtual = getLineSyntaxHighlighting

method clearHighlightingCache*(self: SyntaxHighlighter): void {.base.} = (discard)
proc clearHighlightingCache(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SyntaxHighlighter](p_instance).clearHighlightingCache()
template clearHighlightingCache_bind*(_: typedesc[SyntaxHighlighter]): ClassCallVirtual = clearHighlightingCache

method updateCache*(self: SyntaxHighlighter): void {.base.} = (discard)
proc updateCache(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SyntaxHighlighter](p_instance).updateCache()
template updateCache_bind*(_: typedesc[SyntaxHighlighter]): ClassCallVirtual = updateCache

proc getLineSyntaxHighlighting*(self: SyntaxHighlighter; line: int32): Dictionary =
  expandMethodBind(className SyntaxHighlighter, "get_line_syntax_highlighting", 3554694381)
  var `?param` = [getPtr line]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc updateCache*(self: SyntaxHighlighter): void =
  expandMethodBind(className SyntaxHighlighter, "update_cache", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearHighlightingCache*(self: SyntaxHighlighter): void =
  expandMethodBind(className SyntaxHighlighter, "clear_highlighting_cache", 3218959716)
  methodbind.ptrcall(self, nil)

proc getTextEdit*(self: SyntaxHighlighter): TextEdit =
  expandMethodBind(className SyntaxHighlighter, "get_text_edit", 1893027089)
  var ret: encoded TextEdit
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextEdit)

const SyntaxHighlighter_vmap =
  Resource.vmap.concat toTable {
    "getlinesyntaxhighlighting" : "_get_line_syntax_highlighting",
    "clearhighlightingcache" : "_clear_highlighting_cache",
    "updatecache" : "_update_cache",
    }
template vmap*(_: typedesc[SyntaxHighlighter]): Table[string, string] = SyntaxHighlighter_vmap