{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

method getPacket*(self: MultiplayerPeerExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc getPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)
template getPacket_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getPacket

method putPacket*(self: MultiplayerPeerExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc putPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)
template putPacket_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = putPacket

method getAvailablePacketCount*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getAvailablePacketCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getAvailablePacketCount().encode(r_ret)
template getAvailablePacketCount_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getAvailablePacketCount

method getMaxPacketSize*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getMaxPacketSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getMaxPacketSize().encode(r_ret)
template getMaxPacketSize_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getMaxPacketSize

method getPacketScript*(self: MultiplayerPeerExtension): PackedByteArray {.base.} = (discard)
proc getPacketScript(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getPacketScript().encode(r_ret)
template getPacketScript_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getPacketScript

method putPacketScript*(self: MultiplayerPeerExtension; pBuffer: PackedByteArray): Error {.base.} = (discard)
proc putPacketScript(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).putPacketScript(p_args[0].decode(PackedByteArray)).encode(r_ret)
template putPacketScript_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = putPacketScript

method getPacketChannel*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getPacketChannel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getPacketChannel().encode(r_ret)
template getPacketChannel_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getPacketChannel

method getPacketMode*(self: MultiplayerPeerExtension): MultiplayerPeer_TransferMode {.base.} = (discard)
proc getPacketMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getPacketMode().encode(r_ret)
template getPacketMode_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getPacketMode

method setTransferChannel*(self: MultiplayerPeerExtension; pChannel: int32): void {.base.} = (discard)
proc setTransferChannel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).setTransferChannel(p_args[0].decode(int32))
template setTransferChannel_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = setTransferChannel

method getTransferChannel*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getTransferChannel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getTransferChannel().encode(r_ret)
template getTransferChannel_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getTransferChannel

method setTransferMode*(self: MultiplayerPeerExtension; pMode: MultiplayerPeer_TransferMode): void {.base.} = (discard)
proc setTransferMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).setTransferMode(p_args[0].decode(MultiplayerPeer_TransferMode))
template setTransferMode_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = setTransferMode

method getTransferMode*(self: MultiplayerPeerExtension): MultiplayerPeer_TransferMode {.base.} = (discard)
proc getTransferMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getTransferMode().encode(r_ret)
template getTransferMode_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getTransferMode

method setTargetPeer*(self: MultiplayerPeerExtension; pPeer: int32): void {.base.} = (discard)
proc setTargetPeer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).setTargetPeer(p_args[0].decode(int32))
template setTargetPeer_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = setTargetPeer

method getPacketPeer*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getPacketPeer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getPacketPeer().encode(r_ret)
template getPacketPeer_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getPacketPeer

method isServer*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc isServer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).isServer().encode(r_ret)
template isServer_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = isServer

method poll*(self: MultiplayerPeerExtension): void {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).poll()
template poll_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = poll

method close*(self: MultiplayerPeerExtension): void {.base.} = (discard)
proc close(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).close()
template close_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = close

method disconnectPeer*(self: MultiplayerPeerExtension; pPeer: int32; pForce: bool): void {.base.} = (discard)
proc disconnectPeer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).disconnectPeer(p_args[0].decode(int32), p_args[1].decode(bool))
template disconnectPeer_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = disconnectPeer

method getUniqueId*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc getUniqueId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getUniqueId().encode(r_ret)
template getUniqueId_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getUniqueId

method setRefuseNewConnections*(self: MultiplayerPeerExtension; pEnable: bool): void {.base.} = (discard)
proc setRefuseNewConnections(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).setRefuseNewConnections(p_args[0].decode(bool))
template setRefuseNewConnections_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = setRefuseNewConnections

method isRefusingNewConnections*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc isRefusingNewConnections(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).isRefusingNewConnections().encode(r_ret)
template isRefusingNewConnections_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = isRefusingNewConnections

method isServerRelaySupported*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc isServerRelaySupported(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).isServerRelaySupported().encode(r_ret)
template isServerRelaySupported_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = isServerRelaySupported

method getConnectionStatus*(self: MultiplayerPeerExtension): MultiplayerPeer_ConnectionStatus {.base.} = (discard)
proc getConnectionStatus(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MultiplayerPeerExtension](p_instance).getConnectionStatus().encode(r_ret)
template getConnectionStatus_bind*(_: typedesc[MultiplayerPeerExtension]): ClassCallVirtual = getConnectionStatus

const MultiplayerPeerExtension_vmap =
  MultiplayerPeer.vmap.concat toTable {
    "getpacket" : "_get_packet",
    "putpacket" : "_put_packet",
    "getavailablepacketcount" : "_get_available_packet_count",
    "getmaxpacketsize" : "_get_max_packet_size",
    "getpacketscript" : "_get_packet_script",
    "putpacketscript" : "_put_packet_script",
    "getpacketchannel" : "_get_packet_channel",
    "getpacketmode" : "_get_packet_mode",
    "settransferchannel" : "_set_transfer_channel",
    "gettransferchannel" : "_get_transfer_channel",
    "settransfermode" : "_set_transfer_mode",
    "gettransfermode" : "_get_transfer_mode",
    "settargetpeer" : "_set_target_peer",
    "getpacketpeer" : "_get_packet_peer",
    "isserver" : "_is_server",
    "poll" : "_poll",
    "close" : "_close",
    "disconnectpeer" : "_disconnect_peer",
    "getuniqueid" : "_get_unique_id",
    "setrefusenewconnections" : "_set_refuse_new_connections",
    "isrefusingnewconnections" : "_is_refusing_new_connections",
    "isserverrelaysupported" : "_is_server_relay_supported",
    "getconnectionstatus" : "_get_connection_status",
    }
template vmap*(_: typedesc[MultiplayerPeerExtension]): Table[string, string] = MultiplayerPeerExtension_vmap