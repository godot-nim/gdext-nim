{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method getExtensions*(self: EditorSceneFormatImporter): PackedStringArray {.base.} = (discard)
proc getExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorSceneFormatImporter](p_instance).getExtensions().encode(r_ret)
template getExtensions_bind*(_: typedesc[EditorSceneFormatImporter]): ClassCallVirtual = getExtensions

method importScene*(self: EditorSceneFormatImporter; path: String; flags: uint32; options: Dictionary): Object {.base.} = (discard)
proc importScene(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorSceneFormatImporter](p_instance).importScene(p_args[0].decode(String), p_args[1].decode(uint32), p_args[2].decode(Dictionary)).encode(r_ret)
template importScene_bind*(_: typedesc[EditorSceneFormatImporter]): ClassCallVirtual = importScene

method getImportOptions*(self: EditorSceneFormatImporter; path: String): void {.base.} = (discard)
proc getImportOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorSceneFormatImporter](p_instance).getImportOptions(p_args[0].decode(String))
template getImportOptions_bind*(_: typedesc[EditorSceneFormatImporter]): ClassCallVirtual = getImportOptions

method getOptionVisibility*(self: EditorSceneFormatImporter; path: String; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc getOptionVisibility(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorSceneFormatImporter](p_instance).getOptionVisibility(p_args[0].decode(String), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)
template getOptionVisibility_bind*(_: typedesc[EditorSceneFormatImporter]): ClassCallVirtual = getOptionVisibility

proc addImportOption*(self: EditorSceneFormatImporter; name: String; value: Variant): void =
  expandMethodBind(className EditorSceneFormatImporter, "add_import_option", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc addImportOptionAdvanced*(self: EditorSceneFormatImporter; `type`: Variant_Type; name: String; defaultValue: Variant; hint: PropertyHint = propertyHintNone; hintString: String = gdstring""; usageFlags: int32 = 6): void =
  expandMethodBind(className EditorSceneFormatImporter, "add_import_option_advanced", 3674075649)
  methodbind.ptrcall(self, [getPtr `type`, getPtr name, getPtr defaultValue, getPtr hint, getPtr hintString, getPtr usageFlags])

const EditorSceneFormatImporter_vmap =
  RefCounted.vmap.concat toTable {
    "getextensions" : "_get_extensions",
    "importscene" : "_import_scene",
    "getimportoptions" : "_get_import_options",
    "getoptionvisibility" : "_get_option_visibility",
    }
template vmap*(_: typedesc[EditorSceneFormatImporter]): Table[string, string] = EditorSceneFormatImporter_vmap