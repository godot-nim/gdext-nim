{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(TCPServer, RefCounted)

proc listen*(self: TCPServer; port: uint16; bindAddress: String = newGdString("*")): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "listen", 3167955072)
  methodbind.ptrcall(self, [getPtr port, getPtr bindAddress], Error)

proc isConnectionAvailable*(self: TCPServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "is_connection_available", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isListening*(self: TCPServer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "is_listening", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getLocalPort*(self: TCPServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "get_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc takeConnection*(self: TCPServer): gdref StreamPeerTCP =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "take_connection", 30545006)
  methodbind.ptrcall(self, [], gdref StreamPeerTCP)

proc stop*(self: TCPServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TCPServer, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)
