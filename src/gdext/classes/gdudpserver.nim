{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc listen*(self: UDPServer; port: uint16; bindAddress: String = gdstring"*"): Error =
  expandMethodBind(className UDPServer, "listen", 3167955072)
  var `?param` = [getPtr port, getPtr bindAddress]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: UDPServer): Error =
  expandMethodBind(className UDPServer, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc isConnectionAvailable*(self: UDPServer): bool =
  expandMethodBind(className UDPServer, "is_connection_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLocalPort*(self: UDPServer): int32 =
  expandMethodBind(className UDPServer, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isListening*(self: UDPServer): bool =
  expandMethodBind(className UDPServer, "is_listening", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc takeConnection*(self: UDPServer): gdref PacketPeerUDP =
  expandMethodBind(className UDPServer, "take_connection", 808734560)
  var ret: encoded gdref PacketPeerUDP
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref PacketPeerUDP)

proc stop*(self: UDPServer): void =
  expandMethodBind(className UDPServer, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc setMaxPendingConnections*(self: UDPServer; maxPendingConnections: int32): void =
  expandMethodBind(className UDPServer, "set_max_pending_connections", 1286410249)
  var `?param` = [getPtr maxPendingConnections]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxPendingConnections*(self: UDPServer): int32 =
  expandMethodBind(className UDPServer, "get_max_pending_connections", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template maxPendingConnections*(self: UDPServer): untyped = self.getMaxPendingConnections()
template `maxPendingConnections=`*(self: UDPServer; value) = self.setMaxPendingConnections(value)

const UDPServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UDPServer]): Table[string, string] = UDPServer_vmap