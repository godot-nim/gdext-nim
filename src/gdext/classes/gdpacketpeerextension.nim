{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

method getPacket*(self: PacketPeerExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc getPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PacketPeerExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)
template getPacket_bind*(_: typedesc[PacketPeerExtension]): ClassCallVirtual = getPacket

method putPacket*(self: PacketPeerExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc putPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PacketPeerExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)
template putPacket_bind*(_: typedesc[PacketPeerExtension]): ClassCallVirtual = putPacket

method getAvailablePacketCount*(self: PacketPeerExtension): int32 {.base.} = (discard)
proc getAvailablePacketCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PacketPeerExtension](p_instance).getAvailablePacketCount().encode(r_ret)
template getAvailablePacketCount_bind*(_: typedesc[PacketPeerExtension]): ClassCallVirtual = getAvailablePacketCount

method getMaxPacketSize*(self: PacketPeerExtension): int32 {.base.} = (discard)
proc getMaxPacketSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[PacketPeerExtension](p_instance).getMaxPacketSize().encode(r_ret)
template getMaxPacketSize_bind*(_: typedesc[PacketPeerExtension]): ClassCallVirtual = getMaxPacketSize

const PacketPeerExtension_vmap =
  PacketPeer.vmap.concat toTable {
    "getpacket" : "_get_packet",
    "putpacket" : "_put_packet",
    "getavailablepacketcount" : "_get_available_packet_count",
    "getmaxpacketsize" : "_get_max_packet_size",
    }
template vmap*(_: typedesc[PacketPeerExtension]): Table[string, string] = PacketPeerExtension_vmap