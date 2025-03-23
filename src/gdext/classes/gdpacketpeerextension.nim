{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

method getPacket*(self: PacketPeerExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc registerVirtual_getPacket*[T: PacketPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PacketPeerExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)

method putPacket*(self: PacketPeerExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc registerVirtual_putPacket*[T: PacketPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_put_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PacketPeerExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)

method getAvailablePacketCount*(self: PacketPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getAvailablePacketCount*[T: PacketPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_available_packet_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PacketPeerExtension](p_instance).getAvailablePacketCount().encode(r_ret)

method getMaxPacketSize*(self: PacketPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getMaxPacketSize*[T: PacketPeerExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_max_packet_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[PacketPeerExtension](p_instance).getMaxPacketSize().encode(r_ret)