{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ResourceFormatLoader, RefCounted)

method getRecognizedExtensions*(self: ResourceFormatLoader): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getRecognizedExtensions().encode(r_ret)

method recognizePath*(self: ResourceFormatLoader; path: String; `type`: StringName): bool {.base.} = (discard)
proc registerVirtual_recognizePath*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_recognize_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).recognizePath(p_args[0].decode(String), p_args[1].decode(StringName)).encode(r_ret)

method handlesType*(self: ResourceFormatLoader; `type`: StringName): bool {.base.} = (discard)
proc registerVirtual_handlesType*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handles_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).handlesType(p_args[0].decode(StringName)).encode(r_ret)

method getResourceType*(self: ResourceFormatLoader; path: String): String {.base.} = (discard)
proc registerVirtual_getResourceType*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_resource_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getResourceType(p_args[0].decode(String)).encode(r_ret)

method getResourceScriptClass*(self: ResourceFormatLoader; path: String): String {.base.} = (discard)
proc registerVirtual_getResourceScriptClass*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_resource_script_class"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getResourceScriptClass(p_args[0].decode(String)).encode(r_ret)

method getResourceUid*(self: ResourceFormatLoader; path: String): int64 {.base.} = (discard)
proc registerVirtual_getResourceUid*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_resource_uid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getResourceUid(p_args[0].decode(String)).encode(r_ret)

method getDependencies*(self: ResourceFormatLoader; path: String; addTypes: bool): PackedStringArray {.base.} = (discard)
proc registerVirtual_getDependencies*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_dependencies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getDependencies(p_args[0].decode(String), p_args[1].decode(bool)).encode(r_ret)

method renameDependencies*(self: ResourceFormatLoader; path: String; renames: Dictionary[Variant, Variant]): Error {.base.} = (discard)
proc registerVirtual_renameDependencies*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_rename_dependencies"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).renameDependencies(p_args[0].decode(String), p_args[1].decode(Dictionary[Variant, Variant])).encode(r_ret)

method exists*(self: ResourceFormatLoader; path: String): bool {.base.} = (discard)
proc registerVirtual_exists*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_exists"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).exists(p_args[0].decode(String)).encode(r_ret)

method getClassesUsed*(self: ResourceFormatLoader; path: String): PackedStringArray {.base.} = (discard)
proc registerVirtual_getClassesUsed*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_classes_used"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).getClassesUsed(p_args[0].decode(String)).encode(r_ret)

method load*(self: ResourceFormatLoader; path: String; originalPath: String; useSubThreads: bool; cacheMode: int32): Variant {.base.} = (discard)
proc registerVirtual_load*[T: ResourceFormatLoader](Self: typedesc[T]) =
  Self.vmethods[newStringName"_load"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatLoader](p_instance).load(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(bool), p_args[3].decode(int32)).encode(r_ret)
