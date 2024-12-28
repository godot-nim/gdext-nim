{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc peerDisconnect*(self: ENetPacketPeer; data: int32 = 0): void =
  expandMethodBind(className ENetPacketPeer, "peer_disconnect", 1995695955)
  methodbind.ptrcall(self, [getPtr data])

proc peerDisconnectLater*(self: ENetPacketPeer; data: int32 = 0): void =
  expandMethodBind(className ENetPacketPeer, "peer_disconnect_later", 1995695955)
  methodbind.ptrcall(self, [getPtr data])

proc peerDisconnectNow*(self: ENetPacketPeer; data: int32 = 0): void =
  expandMethodBind(className ENetPacketPeer, "peer_disconnect_now", 1995695955)
  methodbind.ptrcall(self, [getPtr data])

proc ping*(self: ENetPacketPeer): void =
  expandMethodBind(className ENetPacketPeer, "ping", 3218959716)
  methodbind.ptrcall(self, [])

proc pingInterval*(self: ENetPacketPeer; pingInterval: int32): void =
  expandMethodBind(className ENetPacketPeer, "ping_interval", 1286410249)
  methodbind.ptrcall(self, [getPtr pingInterval])

proc reset*(self: ENetPacketPeer): void =
  expandMethodBind(className ENetPacketPeer, "reset", 3218959716)
  methodbind.ptrcall(self, [])

proc send*(self: ENetPacketPeer; channel: int32; packet: PackedByteArray; flags: int32): Error =
  expandMethodBind(className ENetPacketPeer, "send", 120522849)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr channel, getPtr packet, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc throttleConfigure*(self: ENetPacketPeer; interval: int32; acceleration: int32; deceleration: int32): void =
  expandMethodBind(className ENetPacketPeer, "throttle_configure", 1649997291)
  methodbind.ptrcall(self, [getPtr interval, getPtr acceleration, getPtr deceleration])

proc setTimeout*(self: ENetPacketPeer; timeout: int32; timeoutMin: int32; timeoutMax: int32): void =
  expandMethodBind(className ENetPacketPeer, "set_timeout", 1649997291)
  methodbind.ptrcall(self, [getPtr timeout, getPtr timeoutMin, getPtr timeoutMax])

proc getRemoteAddress*(self: ENetPacketPeer): String =
  expandMethodBind(className ENetPacketPeer, "get_remote_address", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getRemotePort*(self: ENetPacketPeer): int32 =
  expandMethodBind(className ENetPacketPeer, "get_remote_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getStatistic*(self: ENetPacketPeer; statistic: ENetPacketPeer_PeerStatistic): float64 =
  expandMethodBind(className ENetPacketPeer, "get_statistic", 1642578323)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr statistic], addr ret)
  (addr ret).decode_result(float64)

proc getState*(self: ENetPacketPeer): ENetPacketPeer_PeerState =
  expandMethodBind(className ENetPacketPeer, "get_state", 711068532)
  var ret: encoded ENetPacketPeer_PeerState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(ENetPacketPeer_PeerState)

proc getChannels*(self: ENetPacketPeer): int32 =
  expandMethodBind(className ENetPacketPeer, "get_channels", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isActive*(self: ENetPacketPeer): bool =
  expandMethodBind(className ENetPacketPeer, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

const ENetPacketPeer_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ENetPacketPeer]): Table[string, string] = ENetPacketPeer_vmap