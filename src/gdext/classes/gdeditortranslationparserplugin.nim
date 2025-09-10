{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted
export EditorTranslationParserPlugin

method parseFile*(self: EditorTranslationParserPlugin; path: String): TypedArray[PackedStringArray] {.base.} = (discard)
proc registerVirtual_parseFile*[T: EditorTranslationParserPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorTranslationParserPlugin](p_instance).parseFile(p_args[0].decode(String)).encode(r_ret)

method getRecognizedExtensions*(self: EditorTranslationParserPlugin): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: EditorTranslationParserPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorTranslationParserPlugin](p_instance).getRecognizedExtensions().encode(r_ret)
