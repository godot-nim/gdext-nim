{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method save*(self: ResourceFormatSaver; resource: gdref Resource; path: String; flags: uint32): Error {.base.} = (discard)
proc registerVirtual_save*[T: ResourceFormatSaver](Self: typedesc[T]) =
  Self.vmethods[stringName"_save"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatSaver](p_instance).save(p_args[0].decode(gdref Resource), p_args[1].decode(String), p_args[2].decode(uint32)).encode(r_ret)

method setUid*(self: ResourceFormatSaver; path: String; uid: int64): Error {.base.} = (discard)
proc registerVirtual_setUid*[T: ResourceFormatSaver](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_uid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatSaver](p_instance).setUid(p_args[0].decode(String), p_args[1].decode(int64)).encode(r_ret)

method recognize*(self: ResourceFormatSaver; resource: gdref Resource): bool {.base.} = (discard)
proc registerVirtual_recognize*[T: ResourceFormatSaver](Self: typedesc[T]) =
  Self.vmethods[stringName"_recognize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatSaver](p_instance).recognize(p_args[0].decode(gdref Resource)).encode(r_ret)

method getRecognizedExtensions*(self: ResourceFormatSaver; resource: gdref Resource): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: ResourceFormatSaver](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatSaver](p_instance).getRecognizedExtensions(p_args[0].decode(gdref Resource)).encode(r_ret)

method recognizePath*(self: ResourceFormatSaver; resource: gdref Resource; path: String): bool {.base.} = (discard)
proc registerVirtual_recognizePath*[T: ResourceFormatSaver](Self: typedesc[T]) =
  Self.vmethods[stringName"_recognize_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ResourceFormatSaver](p_instance).recognizePath(p_args[0].decode(gdref Resource), p_args[1].decode(String)).encode(r_ret)