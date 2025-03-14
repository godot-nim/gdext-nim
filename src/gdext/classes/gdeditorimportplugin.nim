{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresourceimporter; export gdresourceimporter

method getImporterName*(self: EditorImportPlugin): String {.base.} = (discard)
proc registerVirtual_getImporterName*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_importer_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getImporterName().encode(r_ret)

method getVisibleName*(self: EditorImportPlugin): String {.base.} = (discard)
proc registerVirtual_getVisibleName*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_visible_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getVisibleName().encode(r_ret)

method getPresetCount*(self: EditorImportPlugin): int32 {.base.} = (discard)
proc registerVirtual_getPresetCount*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_preset_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getPresetCount().encode(r_ret)

method getPresetName*(self: EditorImportPlugin; presetIndex: int32): String {.base.} = (discard)
proc registerVirtual_getPresetName*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_preset_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getPresetName(p_args[0].decode(int32)).encode(r_ret)

method getRecognizedExtensions*(self: EditorImportPlugin): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getRecognizedExtensions().encode(r_ret)

method getImportOptions*(self: EditorImportPlugin; path: String; presetIndex: int32): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getImportOptions*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_import_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getImportOptions(p_args[0].decode(String), p_args[1].decode(int32)).encode(r_ret)

method getSaveExtension*(self: EditorImportPlugin): String {.base.} = (discard)
proc registerVirtual_getSaveExtension*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_save_extension"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getSaveExtension().encode(r_ret)

method getResourceType*(self: EditorImportPlugin): String {.base.} = (discard)
proc registerVirtual_getResourceType*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_resource_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getResourceType().encode(r_ret)

method getPriority*(self: EditorImportPlugin): Float {.base.} = (discard)
proc registerVirtual_getPriority*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getPriority().encode(r_ret)

method getImportOrder*(self: EditorImportPlugin): int32 {.base.} = (discard)
proc registerVirtual_getImportOrder*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_import_order"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getImportOrder().encode(r_ret)

method getFormatVersion*(self: EditorImportPlugin): int32 {.base.} = (discard)
proc registerVirtual_getFormatVersion*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_format_version"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getFormatVersion().encode(r_ret)

method getOptionVisibility*(self: EditorImportPlugin; path: String; optionName: StringName; options: Dictionary): bool {.base.} = (discard)
proc registerVirtual_getOptionVisibility*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).getOptionVisibility(p_args[0].decode(String), p_args[1].decode(StringName), p_args[2].decode(Dictionary)).encode(r_ret)

method `import`*(self: EditorImportPlugin; sourceFile: String; savePath: String; options: Dictionary; platformVariants: TypedArray[String]; genFiles: TypedArray[String]): Error {.base.} = (discard)
proc registerVirtual_import*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_import"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).`import`(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(Dictionary), p_args[3].decode(TypedArray[String]), p_args[4].decode(TypedArray[String])).encode(r_ret)

method canImportThreaded*(self: EditorImportPlugin): bool {.base.} = (discard)
proc registerVirtual_canImportThreaded*[T: EditorImportPlugin](Self: typedesc[T]) =
  Self.vmethods[stringName"_can_import_threaded"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorImportPlugin](p_instance).canImportThreaded().encode(r_ret)

proc appendImportExternalResource*(self: EditorImportPlugin; path: String; customOptions: Dictionary = dictionary(); customImporter: String = gdstring""; generatorParameters: Variant = default(Variant)): Error =
  expandMethodBind(className EditorImportPlugin, "append_import_external_resource", 320493106)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr customOptions, getPtr customImporter, getPtr generatorParameters], addr ret)
  (addr ret).decode_result(Error)