{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method getRecognizedExtensions*(self: ResourceFormatLoader): PackedStringArray {.base.} = (discard)
proc getRecognizedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getRecognizedExtensions().encode(r_ret)
template getRecognizedExtensions_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getRecognizedExtensions

method recognizePath*(self: ResourceFormatLoader; path: String; `type`: StringName): bool {.base.} = (discard)
proc recognizePath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).recognizePath(p_args[0].decode(String), p_args[1].decode(StringName)).encode(r_ret)
template recognizePath_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = recognizePath

method handlesType*(self: ResourceFormatLoader; `type`: StringName): bool {.base.} = (discard)
proc handlesType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).handlesType(p_args[0].decode(StringName)).encode(r_ret)
template handlesType_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = handlesType

method getResourceType*(self: ResourceFormatLoader; path: String): String {.base.} = (discard)
proc getResourceType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getResourceType(p_args[0].decode(String)).encode(r_ret)
template getResourceType_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getResourceType

method getResourceScriptClass*(self: ResourceFormatLoader; path: String): String {.base.} = (discard)
proc getResourceScriptClass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getResourceScriptClass(p_args[0].decode(String)).encode(r_ret)
template getResourceScriptClass_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getResourceScriptClass

method getResourceUid*(self: ResourceFormatLoader; path: String): int64 {.base.} = (discard)
proc getResourceUid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getResourceUid(p_args[0].decode(String)).encode(r_ret)
template getResourceUid_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getResourceUid

method getDependencies*(self: ResourceFormatLoader; path: String; addTypes: bool): PackedStringArray {.base.} = (discard)
proc getDependencies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getDependencies(p_args[0].decode(String), p_args[1].decode(bool)).encode(r_ret)
template getDependencies_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getDependencies

method renameDependencies*(self: ResourceFormatLoader; path: String; renames: Dictionary): Error {.base.} = (discard)
proc renameDependencies(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).renameDependencies(p_args[0].decode(String), p_args[1].decode(Dictionary)).encode(r_ret)
template renameDependencies_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = renameDependencies

method exists*(self: ResourceFormatLoader; path: String): bool {.base.} = (discard)
proc exists(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).exists(p_args[0].decode(String)).encode(r_ret)
template exists_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = exists

method getClassesUsed*(self: ResourceFormatLoader; path: String): PackedStringArray {.base.} = (discard)
proc getClassesUsed(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).getClassesUsed(p_args[0].decode(String)).encode(r_ret)
template getClassesUsed_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = getClassesUsed

method load*(self: ResourceFormatLoader; path: String; originalPath: String; useSubThreads: bool; cacheMode: int32): Variant {.base.} = (discard)
proc load(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatLoader](p_instance).load(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(bool), p_args[3].decode(int32)).encode(r_ret)
template load_bind*(_: typedesc[ResourceFormatLoader]): ClassCallVirtual = load

const ResourceFormatLoader_vmap =
  RefCounted.vmap.concat toTable {
    "getrecognizedextensions" : "_get_recognized_extensions",
    "recognizepath" : "_recognize_path",
    "handlestype" : "_handles_type",
    "getresourcetype" : "_get_resource_type",
    "getresourcescriptclass" : "_get_resource_script_class",
    "getresourceuid" : "_get_resource_uid",
    "getdependencies" : "_get_dependencies",
    "renamedependencies" : "_rename_dependencies",
    "exists" : "_exists",
    "getclassesused" : "_get_classes_used",
    "load" : "_load",
    }
template vmap*(_: typedesc[ResourceFormatLoader]): Table[string, string] = ResourceFormatLoader_vmap