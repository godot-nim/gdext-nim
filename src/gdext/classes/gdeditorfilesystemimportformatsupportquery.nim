{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method isActive*(self: EditorFileSystemImportFormatSupportQuery): bool {.base.} = (discard)
proc isActive(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).isActive().encode(r_ret)
template isActive_bind*(_: typedesc[EditorFileSystemImportFormatSupportQuery]): ClassCallVirtual = isActive

method getFileExtensions*(self: EditorFileSystemImportFormatSupportQuery): PackedStringArray {.base.} = (discard)
proc getFileExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).getFileExtensions().encode(r_ret)
template getFileExtensions_bind*(_: typedesc[EditorFileSystemImportFormatSupportQuery]): ClassCallVirtual = getFileExtensions

method query*(self: EditorFileSystemImportFormatSupportQuery): bool {.base.} = (discard)
proc query(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorFileSystemImportFormatSupportQuery](p_instance).query().encode(r_ret)
template query_bind*(_: typedesc[EditorFileSystemImportFormatSupportQuery]): ClassCallVirtual = query

const EditorFileSystemImportFormatSupportQuery_vmap =
  RefCounted.vmap.concat toTable {
    "isactive" : "_is_active",
    "getfileextensions" : "_get_file_extensions",
    "query" : "_query",
    }
template vmap*(_: typedesc[EditorFileSystemImportFormatSupportQuery]): Table[string, string] = EditorFileSystemImportFormatSupportQuery_vmap