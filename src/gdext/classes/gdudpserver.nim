{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(UDPServer, RefCounted)

proc listen*(self: UDPServer; port: uint16; bindAddress: String = newGdString("*")): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "listen", 3167955072)
  methodbind.ptrcall(self, [getPtr port, getPtr bindAddress], Error)

proc poll*(self: UDPServer): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc isConnectionAvailable*(self: UDPServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "is_connection_available", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getLocalPort*(self: UDPServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "get_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isListening*(self: UDPServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "is_listening", 36873697)
  methodbind.ptrcall(self, [], bool)

proc takeConnection*(self: UDPServer): gdref PacketPeerUDP =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "take_connection", 808734560)
  methodbind.ptrcall(self, [], gdref PacketPeerUDP)

proc stop*(self: UDPServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setMaxPendingConnections*(self: UDPServer; maxPendingConnections: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "set_max_pending_connections", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPendingConnections], void)

proc getMaxPendingConnections*(self: UDPServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UDPServer, "get_max_pending_connections", 3905245786)
  methodbind.ptrcall(self, [], int32)

template maxPendingConnections*(self: UDPServer): untyped = self.getMaxPendingConnections()
template `maxPendingConnections=`*(self: UDPServer; value) = self.setMaxPendingConnections(value)
