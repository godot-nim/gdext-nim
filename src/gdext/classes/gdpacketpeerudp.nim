{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc `bind`*(self: PacketPeerUDP; port: int32; bindAddress: String = gdstring"*"; recvBufSize: int32 = 65536): Error =
  expandMethodBind(className PacketPeerUDP, "bind", 4051239242)
  var `?param` = [getPtr port, getPtr bindAddress, getPtr recvBufSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: PacketPeerUDP): void =
  expandMethodBind(className PacketPeerUDP, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc wait*(self: PacketPeerUDP): Error =
  expandMethodBind(className PacketPeerUDP, "wait", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc isBound*(self: PacketPeerUDP): bool =
  expandMethodBind(className PacketPeerUDP, "is_bound", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc connectToHost*(self: PacketPeerUDP; host: String; port: int32): Error =
  expandMethodBind(className PacketPeerUDP, "connect_to_host", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isSocketConnected*(self: PacketPeerUDP): bool =
  expandMethodBind(className PacketPeerUDP, "is_socket_connected", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPacketIp*(self: PacketPeerUDP): String =
  expandMethodBind(className PacketPeerUDP, "get_packet_ip", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getPacketPort*(self: PacketPeerUDP): int32 =
  expandMethodBind(className PacketPeerUDP, "get_packet_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: PacketPeerUDP): int32 =
  expandMethodBind(className PacketPeerUDP, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDestAddress*(self: PacketPeerUDP; host: String; port: int32): Error =
  expandMethodBind(className PacketPeerUDP, "set_dest_address", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setBroadcastEnabled*(self: PacketPeerUDP; enabled: bool): void =
  expandMethodBind(className PacketPeerUDP, "set_broadcast_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc joinMulticastGroup*(self: PacketPeerUDP; multicastAddress: String; interfaceName: String): Error =
  expandMethodBind(className PacketPeerUDP, "join_multicast_group", 852856452)
  var `?param` = [getPtr multicastAddress, getPtr interfaceName]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc leaveMulticastGroup*(self: PacketPeerUDP; multicastAddress: String; interfaceName: String): Error =
  expandMethodBind(className PacketPeerUDP, "leave_multicast_group", 852856452)
  var `?param` = [getPtr multicastAddress, getPtr interfaceName]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const PacketPeerUDP_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeerUDP]): Table[string, string] = PacketPeerUDP_vmap