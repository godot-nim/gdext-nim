{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc listen*(self: UdpServer; port: uint16; bindAddress: String = gdstring"*"): Error =
  expandMethodBind(className UdpServer, "listen", 3167955072)
  var `?param` = [getPtr port, getPtr bindAddress]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: UdpServer): Error =
  expandMethodBind(className UdpServer, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc isConnectionAvailable*(self: UdpServer): bool =
  expandMethodBind(className UdpServer, "is_connection_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLocalPort*(self: UdpServer): int32 =
  expandMethodBind(className UdpServer, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isListening*(self: UdpServer): bool =
  expandMethodBind(className UdpServer, "is_listening", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc takeConnection*(self: UdpServer): gdref PacketPeerUdp =
  expandMethodBind(className UdpServer, "take_connection", 808734560)
  var ret: encoded gdref PacketPeerUdp
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PacketPeerUdp)

proc stop*(self: UdpServer): void =
  expandMethodBind(className UdpServer, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc setMaxPendingConnections*(self: UdpServer; maxPendingConnections: int32): void =
  expandMethodBind(className UdpServer, "set_max_pending_connections", 1286410249)
  var `?param` = [getPtr maxPendingConnections]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxPendingConnections*(self: UdpServer): int32 =
  expandMethodBind(className UdpServer, "get_max_pending_connections", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template maxPendingConnections*(self: UdpServer): untyped = self.getMaxPendingConnections()
template `maxPendingConnections=`*(self: UdpServer; value) = self.setMaxPendingConnections(value)

const UdpServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UdpServer]): Table[string, string] = UdpServer_vmap