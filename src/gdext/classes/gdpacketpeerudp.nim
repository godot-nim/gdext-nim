{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc `bind`*(self: PacketPeerUdp; port: int32; bindAddress: String = gdstring"*"; recvBufSize: int32 = 65536): Error =
  expandMethodBind(className PacketPeerUdp, "bind", 4051239242)
  var `?param` = [getPtr port, getPtr bindAddress, getPtr recvBufSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: PacketPeerUdp): void =
  expandMethodBind(className PacketPeerUdp, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc wait*(self: PacketPeerUdp): Error =
  expandMethodBind(className PacketPeerUdp, "wait", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc isBound*(self: PacketPeerUdp): bool =
  expandMethodBind(className PacketPeerUdp, "is_bound", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc connectToHost*(self: PacketPeerUdp; host: String; port: int32): Error =
  expandMethodBind(className PacketPeerUdp, "connect_to_host", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isSocketConnected*(self: PacketPeerUdp): bool =
  expandMethodBind(className PacketPeerUdp, "is_socket_connected", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPacketIp*(self: PacketPeerUdp): String =
  expandMethodBind(className PacketPeerUdp, "get_packet_ip", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getPacketPort*(self: PacketPeerUdp): int32 =
  expandMethodBind(className PacketPeerUdp, "get_packet_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: PacketPeerUdp): int32 =
  expandMethodBind(className PacketPeerUdp, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDestAddress*(self: PacketPeerUdp; host: String; port: int32): Error =
  expandMethodBind(className PacketPeerUdp, "set_dest_address", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setBroadcastEnabled*(self: PacketPeerUdp; enabled: bool): void =
  expandMethodBind(className PacketPeerUdp, "set_broadcast_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc joinMulticastGroup*(self: PacketPeerUdp; multicastAddress: String; interfaceName: String): Error =
  expandMethodBind(className PacketPeerUdp, "join_multicast_group", 852856452)
  var `?param` = [getPtr multicastAddress, getPtr interfaceName]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc leaveMulticastGroup*(self: PacketPeerUdp; multicastAddress: String; interfaceName: String): Error =
  expandMethodBind(className PacketPeerUdp, "leave_multicast_group", 852856452)
  var `?param` = [getPtr multicastAddress, getPtr interfaceName]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const PacketPeerUdp_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeerUdp]): Table[string, string] = PacketPeerUdp_vmap