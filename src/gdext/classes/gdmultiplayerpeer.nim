{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc setTransferChannel*(self: MultiplayerPeer; channel: int32): void =
  expandMethodBind(className MultiplayerPeer, "set_transfer_channel", 1286410249)
  var `?param` = [getPtr channel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransferChannel*(self: MultiplayerPeer): int32 =
  expandMethodBind(className MultiplayerPeer, "get_transfer_channel", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTransferMode*(self: MultiplayerPeer; mode: MultiplayerPeer_TransferMode): void =
  expandMethodBind(className MultiplayerPeer, "set_transfer_mode", 950411049)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransferMode*(self: MultiplayerPeer): MultiplayerPeer_TransferMode =
  expandMethodBind(className MultiplayerPeer, "get_transfer_mode", 3369852622)
  var ret: encoded MultiplayerPeer_TransferMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MultiplayerPeer_TransferMode)

proc setTargetPeer*(self: MultiplayerPeer; id: int32): void =
  expandMethodBind(className MultiplayerPeer, "set_target_peer", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPacketPeer*(self: MultiplayerPeer): int32 =
  expandMethodBind(className MultiplayerPeer, "get_packet_peer", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPacketChannel*(self: MultiplayerPeer): int32 =
  expandMethodBind(className MultiplayerPeer, "get_packet_channel", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPacketMode*(self: MultiplayerPeer): MultiplayerPeer_TransferMode =
  expandMethodBind(className MultiplayerPeer, "get_packet_mode", 3369852622)
  var ret: encoded MultiplayerPeer_TransferMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MultiplayerPeer_TransferMode)

proc poll*(self: MultiplayerPeer): void =
  expandMethodBind(className MultiplayerPeer, "poll", 3218959716)
  methodbind.ptrcall(self, nil)

proc close*(self: MultiplayerPeer): void =
  expandMethodBind(className MultiplayerPeer, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc disconnectPeer*(self: MultiplayerPeer; peer: int32; force: bool = false): void =
  expandMethodBind(className MultiplayerPeer, "disconnect_peer", 4023243586)
  var `?param` = [getPtr peer, getPtr force]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnectionStatus*(self: MultiplayerPeer): MultiplayerPeer_ConnectionStatus =
  expandMethodBind(className MultiplayerPeer, "get_connection_status", 2147374275)
  var ret: encoded MultiplayerPeer_ConnectionStatus
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MultiplayerPeer_ConnectionStatus)

proc getUniqueId*(self: MultiplayerPeer): int32 =
  expandMethodBind(className MultiplayerPeer, "get_unique_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc generateUniqueId*(self: MultiplayerPeer): uint32 =
  expandMethodBind(className MultiplayerPeer, "generate_unique_id", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setRefuseNewConnections*(self: MultiplayerPeer; enable: bool): void =
  expandMethodBind(className MultiplayerPeer, "set_refuse_new_connections", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRefusingNewConnections*(self: MultiplayerPeer): bool =
  expandMethodBind(className MultiplayerPeer, "is_refusing_new_connections", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isServerRelaySupported*(self: MultiplayerPeer): bool =
  expandMethodBind(className MultiplayerPeer, "is_server_relay_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template refuseNewConnections*(self: MultiplayerPeer): untyped = self.isRefusingNewConnections()
template `refuseNewConnections=`*(self: MultiplayerPeer; value) = self.setRefuseNewConnections(value)

template transferMode*(self: MultiplayerPeer): untyped = self.getTransferMode()
template `transferMode=`*(self: MultiplayerPeer; value) = self.setTransferMode(value)

template transferChannel*(self: MultiplayerPeer): untyped = self.getTransferChannel()
template `transferChannel=`*(self: MultiplayerPeer; value) = self.setTransferChannel(value)

const MultiplayerPeer_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiplayerPeer]): Table[string, string] = MultiplayerPeer_vmap

proc peerConnected*(self: MultiplayerPeer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_connected")
  let args = [id]
  self.emitSignal(signalname, args)

proc peerDisconnected*(self: MultiplayerPeer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_disconnected")
  let args = [id]
  self.emitSignal(signalname, args)