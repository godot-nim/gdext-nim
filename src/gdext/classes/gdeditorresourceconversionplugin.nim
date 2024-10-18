{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method convertsTo*(self: EditorResourceConversionPlugin): String {.base.} = (discard)
proc convertsTo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourceConversionPlugin](p_instance).convertsTo().encode(r_ret)
template convertsTo_bind*(_: typedesc[EditorResourceConversionPlugin]): ClassCallVirtual = convertsTo

method handles*(self: EditorResourceConversionPlugin; resource: gdref Resource): bool {.base.} = (discard)
proc handles(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourceConversionPlugin](p_instance).handles(p_args[0].decode(gdref Resource)).encode(r_ret)
template handles_bind*(_: typedesc[EditorResourceConversionPlugin]): ClassCallVirtual = handles

method convert*(self: EditorResourceConversionPlugin; resource: gdref Resource): gdref Resource {.base.} = (discard)
proc convert(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourceConversionPlugin](p_instance).convert(p_args[0].decode(gdref Resource)).encode(r_ret)
template convert_bind*(_: typedesc[EditorResourceConversionPlugin]): ClassCallVirtual = convert

const EditorResourceConversionPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "convertsto" : "_converts_to",
    "handles" : "_handles",
    "convert" : "_convert",
    }
template vmap*(_: typedesc[EditorResourceConversionPlugin]): Table[string, string] = EditorResourceConversionPlugin_vmap