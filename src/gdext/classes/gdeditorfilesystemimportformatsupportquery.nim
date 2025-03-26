{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method isActive*(self: EditorFileSystemImportFormatSupportQuery): bool {.base.} = (discard)
proc registerVirtual_isActive*[T: EditorFileSystemImportFormatSupportQuery](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_active"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).isActive().encode(r_ret)

method getFileExtensions*(self: EditorFileSystemImportFormatSupportQuery): PackedStringArray {.base.} = (discard)
proc registerVirtual_getFileExtensions*[T: EditorFileSystemImportFormatSupportQuery](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_file_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).getFileExtensions().encode(r_ret)

method query*(self: EditorFileSystemImportFormatSupportQuery): bool {.base.} = (discard)
proc registerVirtual_query*[T: EditorFileSystemImportFormatSupportQuery](Self: typedesc[T]) =
  Self.vmethods[newStringName"_query"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).query().encode(r_ret)
