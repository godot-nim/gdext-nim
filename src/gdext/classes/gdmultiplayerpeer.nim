{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(MultiplayerPeer, PacketPeer)

const TargetPeerBroadcast* = 0
const TargetPeerServer* = 1

proc setTransferChannel*(self: MultiplayerPeer; channel: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "set_transfer_channel", 1286410249)
  methodbind.ptrcall(self, [getPtr channel], void)

proc getTransferChannel*(self: MultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_transfer_channel", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTransferMode*(self: MultiplayerPeer; mode: MultiplayerPeer_TransferMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "set_transfer_mode", 950411049)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getTransferMode*(self: MultiplayerPeer): MultiplayerPeer_TransferMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_transfer_mode", 3369852622)
  methodbind.ptrcall(self, [], MultiplayerPeer_TransferMode)

proc setTargetPeer*(self: MultiplayerPeer; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "set_target_peer", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getPacketPeer*(self: MultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_packet_peer", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPacketChannel*(self: MultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_packet_channel", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPacketMode*(self: MultiplayerPeer): MultiplayerPeer_TransferMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_packet_mode", 3369852622)
  methodbind.ptrcall(self, [], MultiplayerPeer_TransferMode)

proc poll*(self: MultiplayerPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "poll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc close*(self: MultiplayerPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc disconnectPeer*(self: MultiplayerPeer; peer: int32; force: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "disconnect_peer", 4023243586)
  methodbind.ptrcall(self, [getPtr peer, getPtr force], void)

proc getConnectionStatus*(self: MultiplayerPeer): MultiplayerPeer_ConnectionStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_connection_status", 2147374275)
  methodbind.ptrcall(self, [], MultiplayerPeer_ConnectionStatus)

proc getUniqueId*(self: MultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "get_unique_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc generateUniqueId*(self: MultiplayerPeer): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "generate_unique_id", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setRefuseNewConnections*(self: MultiplayerPeer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "set_refuse_new_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isRefusingNewConnections*(self: MultiplayerPeer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "is_refusing_new_connections", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isServerRelaySupported*(self: MultiplayerPeer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerPeer, "is_server_relay_supported", 36873697)
  methodbind.ptrcall(self, [], bool)

template refuseNewConnections*(self: MultiplayerPeer): untyped = self.isRefusingNewConnections()
template `refuseNewConnections=`*(self: MultiplayerPeer; value) = self.setRefuseNewConnections(value)

template transferMode*(self: MultiplayerPeer): untyped = self.getTransferMode()
template `transferMode=`*(self: MultiplayerPeer; value) = self.setTransferMode(value)

template transferChannel*(self: MultiplayerPeer): untyped = self.getTransferChannel()
template `transferChannel=`*(self: MultiplayerPeer; value) = self.setTransferChannel(value)
