{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method save*(self: ResourceFormatSaver; resource: gdref Resource; path: String; flags: uint32): Error {.base.} = (discard)
proc save(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatSaver](p_instance).save(p_args[0].decode(gdref Resource), p_args[1].decode(String), p_args[2].decode(uint32)).encode(r_ret)
template save_bind*(_: typedesc[ResourceFormatSaver]): ClassCallVirtual = save

method setUid*(self: ResourceFormatSaver; path: String; uid: int64): Error {.base.} = (discard)
proc setUid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatSaver](p_instance).setUid(p_args[0].decode(String), p_args[1].decode(int64)).encode(r_ret)
template setUid_bind*(_: typedesc[ResourceFormatSaver]): ClassCallVirtual = setUid

method recognize*(self: ResourceFormatSaver; resource: gdref Resource): bool {.base.} = (discard)
proc recognize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatSaver](p_instance).recognize(p_args[0].decode(gdref Resource)).encode(r_ret)
template recognize_bind*(_: typedesc[ResourceFormatSaver]): ClassCallVirtual = recognize

method getRecognizedExtensions*(self: ResourceFormatSaver; resource: gdref Resource): PackedStringArray {.base.} = (discard)
proc getRecognizedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatSaver](p_instance).getRecognizedExtensions(p_args[0].decode(gdref Resource)).encode(r_ret)
template getRecognizedExtensions_bind*(_: typedesc[ResourceFormatSaver]): ClassCallVirtual = getRecognizedExtensions

method recognizePath*(self: ResourceFormatSaver; resource: gdref Resource; path: String): bool {.base.} = (discard)
proc recognizePath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ResourceFormatSaver](p_instance).recognizePath(p_args[0].decode(gdref Resource), p_args[1].decode(String)).encode(r_ret)
template recognizePath_bind*(_: typedesc[ResourceFormatSaver]): ClassCallVirtual = recognizePath

const ResourceFormatSaver_vmap =
  RefCounted.vmap.concat toTable {
    "save" : "_save",
    "setuid" : "_set_uid",
    "recognize" : "_recognize",
    "getrecognizedextensions" : "_get_recognized_extensions",
    "recognizepath" : "_recognize_path",
    }
template vmap*(_: typedesc[ResourceFormatSaver]): Table[string, string] = ResourceFormatSaver_vmap