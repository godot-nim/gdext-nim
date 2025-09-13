{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsyntaxhighlighter; export gdsyntaxhighlighter

expandOnClassImported(EditorSyntaxHighlighter, SyntaxHighlighter)

method getName*(self: EditorSyntaxHighlighter): String {.base.} = (discard)
proc registerVirtual_getName*[T: EditorSyntaxHighlighter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSyntaxHighlighter](p_instance).getName().encode(r_ret)

method getSupportedLanguages*(self: EditorSyntaxHighlighter): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSupportedLanguages*[T: EditorSyntaxHighlighter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_supported_languages"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSyntaxHighlighter](p_instance).getSupportedLanguages().encode(r_ret)
