{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(ENetPacketPeer, PacketPeer)

const PacketLossScale* = 65536
const PacketThrottleScale* = 32
const FlagReliable* = 1
const FlagUnsequenced* = 2
const FlagUnreliableFragment* = 8

proc peerDisconnect*(self: ENetPacketPeer; data: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "peer_disconnect", 1995695955)
  methodbind.ptrcall(self, [getPtr data], void)

proc peerDisconnectLater*(self: ENetPacketPeer; data: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "peer_disconnect_later", 1995695955)
  methodbind.ptrcall(self, [getPtr data], void)

proc peerDisconnectNow*(self: ENetPacketPeer; data: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "peer_disconnect_now", 1995695955)
  methodbind.ptrcall(self, [getPtr data], void)

proc ping*(self: ENetPacketPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "ping", 3218959716)
  methodbind.ptrcall(self, [], void)

proc pingInterval*(self: ENetPacketPeer; pingInterval: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "ping_interval", 1286410249)
  methodbind.ptrcall(self, [getPtr pingInterval], void)

proc reset*(self: ENetPacketPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "reset", 3218959716)
  methodbind.ptrcall(self, [], void)

proc send*(self: ENetPacketPeer; channel: int32; packet: PackedByteArray; flags: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "send", 120522849)
  methodbind.ptrcall(self, [getPtr channel, getPtr packet, getPtr flags], Error)

proc throttleConfigure*(self: ENetPacketPeer; interval: int32; acceleration: int32; deceleration: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "throttle_configure", 1649997291)
  methodbind.ptrcall(self, [getPtr interval, getPtr acceleration, getPtr deceleration], void)

proc setTimeout*(self: ENetPacketPeer; timeout: int32; timeoutMin: int32; timeoutMax: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "set_timeout", 1649997291)
  methodbind.ptrcall(self, [getPtr timeout, getPtr timeoutMin, getPtr timeoutMax], void)

proc getPacketFlags*(self: ENetPacketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_packet_flags", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getRemoteAddress*(self: ENetPacketPeer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_remote_address", 201670096)
  methodbind.ptrcall(self, [], String)

proc getRemotePort*(self: ENetPacketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_remote_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getStatistic*(self: ENetPacketPeer; statistic: ENetPacketPeer_PeerStatistic): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_statistic", 1642578323)
  methodbind.ptrcall(self, [getPtr statistic], float64)

proc getState*(self: ENetPacketPeer): ENetPacketPeer_PeerState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_state", 711068532)
  methodbind.ptrcall(self, [], ENetPacketPeer_PeerState)

proc getChannels*(self: ENetPacketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "get_channels", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isActive*(self: ENetPacketPeer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetPacketPeer, "is_active", 36873697)
  methodbind.ptrcall(self, [], bool)
