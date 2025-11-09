{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(PacketPeerUDP, PacketPeer)

proc `bind`*(self: PacketPeerUDP; port: int32; bindAddress: String = newGdString("*"); recvBufSize: int32 = 65536): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "bind", 4051239242)
  methodbind.ptrcall(self, [getPtr port, getPtr bindAddress, getPtr recvBufSize], Error)

proc close*(self: PacketPeerUDP): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc wait*(self: PacketPeerUDP): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "wait", 166280745)
  methodbind.ptrcall(self, [], Error)

proc isBound*(self: PacketPeerUDP): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "is_bound", 36873697)
  methodbind.ptrcall(self, [], bool)

proc connectToHost*(self: PacketPeerUDP; host: String; port: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "connect_to_host", 993915709)
  methodbind.ptrcall(self, [getPtr host, getPtr port], Error)

proc isSocketConnected*(self: PacketPeerUDP): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "is_socket_connected", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPacketIp*(self: PacketPeerUDP): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "get_packet_ip", 201670096)
  methodbind.ptrcall(self, [], String)

proc getPacketPort*(self: PacketPeerUDP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "get_packet_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLocalPort*(self: PacketPeerUDP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "get_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDestAddress*(self: PacketPeerUDP; host: String; port: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "set_dest_address", 993915709)
  methodbind.ptrcall(self, [getPtr host, getPtr port], Error)

proc setBroadcastEnabled*(self: PacketPeerUDP; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "set_broadcast_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc joinMulticastGroup*(self: PacketPeerUDP; multicastAddress: String; interfaceName: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "join_multicast_group", 852856452)
  methodbind.ptrcall(self, [getPtr multicastAddress, getPtr interfaceName], Error)

proc leaveMulticastGroup*(self: PacketPeerUDP; multicastAddress: String; interfaceName: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerUDP, "leave_multicast_group", 852856452)
  methodbind.ptrcall(self, [getPtr multicastAddress, getPtr interfaceName], Error)
