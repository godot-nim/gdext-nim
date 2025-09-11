{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

expandOnClassImported(MultiplayerPeerExtension, MultiplayerPeer)

method getPacket*(self: MultiplayerPeerExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc registerVirtual_getPacket*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)

method putPacket*(self: MultiplayerPeerExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc registerVirtual_putPacket*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_put_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)

method getAvailablePacketCount*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getAvailablePacketCount*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_available_packet_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getAvailablePacketCount().encode(r_ret)

method getMaxPacketSize*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getMaxPacketSize*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_max_packet_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getMaxPacketSize().encode(r_ret)

method getPacketScript*(self: MultiplayerPeerExtension): PackedByteArray {.base.} = (discard)
proc registerVirtual_getPacketScript*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_packet_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getPacketScript().encode(r_ret)

method putPacketScript*(self: MultiplayerPeerExtension; pBuffer: PackedByteArray): Error {.base.} = (discard)
proc registerVirtual_putPacketScript*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_put_packet_script"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).putPacketScript(p_args[0].decode(PackedByteArray)).encode(r_ret)

method getPacketChannel*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getPacketChannel*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_packet_channel"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getPacketChannel().encode(r_ret)

method getPacketMode*(self: MultiplayerPeerExtension): MultiplayerPeer_TransferMode {.base.} = (discard)
proc registerVirtual_getPacketMode*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_packet_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getPacketMode().encode(r_ret)

method setTransferChannel*(self: MultiplayerPeerExtension; pChannel: int32): void {.base.} = (discard)
proc registerVirtual_setTransferChannel*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_transfer_channel"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).setTransferChannel(p_args[0].decode(int32))

method getTransferChannel*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getTransferChannel*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_transfer_channel"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getTransferChannel().encode(r_ret)

method setTransferMode*(self: MultiplayerPeerExtension; pMode: MultiplayerPeer_TransferMode): void {.base.} = (discard)
proc registerVirtual_setTransferMode*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_transfer_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).setTransferMode(p_args[0].decode(MultiplayerPeer_TransferMode))

method getTransferMode*(self: MultiplayerPeerExtension): MultiplayerPeer_TransferMode {.base.} = (discard)
proc registerVirtual_getTransferMode*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_transfer_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getTransferMode().encode(r_ret)

method setTargetPeer*(self: MultiplayerPeerExtension; pPeer: int32): void {.base.} = (discard)
proc registerVirtual_setTargetPeer*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_target_peer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).setTargetPeer(p_args[0].decode(int32))

method getPacketPeer*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getPacketPeer*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_packet_peer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getPacketPeer().encode(r_ret)

method isServer*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc registerVirtual_isServer*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_server"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).isServer().encode(r_ret)

method poll*(self: MultiplayerPeerExtension): void {.base.} = (discard)
proc registerVirtual_poll*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_poll"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).poll()

method close*(self: MultiplayerPeerExtension): void {.base.} = (discard)
proc registerVirtual_close*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_close"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).close()

method disconnectPeer*(self: MultiplayerPeerExtension; pPeer: int32; pForce: bool): void {.base.} = (discard)
proc registerVirtual_disconnectPeer*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_disconnect_peer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).disconnectPeer(p_args[0].decode(int32), p_args[1].decode(bool))

method getUniqueId*(self: MultiplayerPeerExtension): int32 {.base.} = (discard)
proc registerVirtual_getUniqueId*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_unique_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getUniqueId().encode(r_ret)

method setRefuseNewConnections*(self: MultiplayerPeerExtension; pEnable: bool): void {.base.} = (discard)
proc registerVirtual_setRefuseNewConnections*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_refuse_new_connections"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).setRefuseNewConnections(p_args[0].decode(bool))

method isRefusingNewConnections*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc registerVirtual_isRefusingNewConnections*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_refusing_new_connections"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).isRefusingNewConnections().encode(r_ret)

method isServerRelaySupported*(self: MultiplayerPeerExtension): bool {.base.} = (discard)
proc registerVirtual_isServerRelaySupported*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_server_relay_supported"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).isServerRelaySupported().encode(r_ret)

method getConnectionStatus*(self: MultiplayerPeerExtension): MultiplayerPeer_ConnectionStatus {.base.} = (discard)
proc registerVirtual_getConnectionStatus*[T: MultiplayerPeerExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_connection_status"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MultiplayerPeerExtension](p_instance).getConnectionStatus().encode(r_ret)
