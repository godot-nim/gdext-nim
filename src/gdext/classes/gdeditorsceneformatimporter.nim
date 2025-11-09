{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorSceneFormatImporter, RefCounted)

const ImportScene* = 1
const ImportAnimation* = 2
const ImportFailOnMissingDependencies* = 4
const ImportGenerateTangentArrays* = 8
const ImportUseNamedSkinBinds* = 16
const ImportDiscardMeshesAndMaterials* = 32
const ImportForceDisableMeshCompression* = 64

method getExtensions*(self: EditorSceneFormatImporter): PackedStringArray {.base.} = (discard)
proc registerVirtual_getExtensions*[T: EditorSceneFormatImporter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSceneFormatImporter](p_instance).getExtensions().encode(r_ret)

method importScene*(self: EditorSceneFormatImporter; path: String; flags: uint32; options: Dictionary): Object {.base.} = (discard)
proc registerVirtual_importScene*[T: EditorSceneFormatImporter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_import_scene"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSceneFormatImporter](p_instance).importScene(p_args[0].decode(String), p_args[1].decode(uint32), p_args[2].decode(Dictionary)).encode(r_ret)

method getImportOptions*(self: EditorSceneFormatImporter; path: String): void {.base.} = (discard)
proc registerVirtual_getImportOptions*[T: EditorSceneFormatImporter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_import_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSceneFormatImporter](p_instance).getImportOptions(p_args[0].decode(String))

method getOptionVisibility*(self: EditorSceneFormatImporter; path: String; forAnimation: bool; option: String): Variant {.base.} = (discard)
proc registerVirtual_getOptionVisibility*[T: EditorSceneFormatImporter](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_option_visibility"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorSceneFormatImporter](p_instance).getOptionVisibility(p_args[0].decode(String), p_args[1].decode(bool), p_args[2].decode(String)).encode(r_ret)

proc addImportOption*(self: EditorSceneFormatImporter; name: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSceneFormatImporter, "add_import_option", 402577236)
  methodbind.ptrcall(self, [getPtr name, getPtr value], void)

proc addImportOptionAdvanced*(self: EditorSceneFormatImporter; `type`: Variant_Type; name: String; defaultValue: Variant; hint: PropertyHint = propertyHintNone; hintString: String = newGdString(); usageFlags: int32 = 6): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSceneFormatImporter, "add_import_option_advanced", 3674075649)
  methodbind.ptrcall(self, [getPtr `type`, getPtr name, getPtr defaultValue, getPtr hint, getPtr hintString, getPtr usageFlags], void)
