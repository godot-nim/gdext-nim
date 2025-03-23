{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

method getData*(self: StreamPeerExtension; rBuffer: ptr uint8; rBytes: int32; rReceived: ptr int32): Error {.base.} = (discard)
proc registerVirtual_getData*[T: StreamPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StreamPeerExtension](p_instance).getData(p_args[0].decode(ptr uint8), p_args[1].decode(int32), p_args[2].decode(ptr int32)).encode(r_ret)

method getPartialData*(self: StreamPeerExtension; rBuffer: ptr uint8; rBytes: int32; rReceived: ptr int32): Error {.base.} = (discard)
proc registerVirtual_getPartialData*[T: StreamPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_partial_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StreamPeerExtension](p_instance).getPartialData(p_args[0].decode(ptr uint8), p_args[1].decode(int32), p_args[2].decode(ptr int32)).encode(r_ret)

method putData*(self: StreamPeerExtension; pData: ptr uint8; pBytes: int32; rSent: ptr int32): Error {.base.} = (discard)
proc registerVirtual_putData*[T: StreamPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_put_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StreamPeerExtension](p_instance).putData(p_args[0].decode(ptr uint8), p_args[1].decode(int32), p_args[2].decode(ptr int32)).encode(r_ret)

method putPartialData*(self: StreamPeerExtension; pData: ptr uint8; pBytes: int32; rSent: ptr int32): Error {.base.} = (discard)
proc registerVirtual_putPartialData*[T: StreamPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_put_partial_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StreamPeerExtension](p_instance).putPartialData(p_args[0].decode(ptr uint8), p_args[1].decode(int32), p_args[2].decode(ptr int32)).encode(r_ret)

method getAvailableBytes*(self: StreamPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getAvailableBytes*[T: StreamPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_available_bytes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StreamPeerExtension](p_instance).getAvailableBytes().encode(r_ret)