{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method convertsTo*(self: EditorResourceConversionPlugin): String {.base.} = (discard)
proc registerVirtual_convertsTo*[T: EditorResourceConversionPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_converts_to"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourceConversionPlugin](p_instance).convertsTo().encode(r_ret)

method handles*(self: EditorResourceConversionPlugin; resource: gdref Resource): bool {.base.} = (discard)
proc registerVirtual_handles*[T: EditorResourceConversionPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_handles"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourceConversionPlugin](p_instance).handles(p_args[0].decode(gdref Resource)).encode(r_ret)

method convert*(self: EditorResourceConversionPlugin; resource: gdref Resource): gdref Resource {.base.} = (discard)
proc registerVirtual_convert*[T: EditorResourceConversionPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_convert"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourceConversionPlugin](p_instance).convert(p_args[0].decode(gdref Resource)).encode(r_ret)