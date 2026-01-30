{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(SocketServer, RefCounted)

proc isConnectionAvailable*(self: SocketServer): bool =
  expandMethodBind(className SocketServer, "is_connection_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isListening*(self: SocketServer): bool =
  expandMethodBind(className SocketServer, "is_listening", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc stop*(self: SocketServer): void =
  expandMethodBind(className SocketServer, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc takeSocketConnection*(self: SocketServer): gdref StreamPeerSocket =
  expandMethodBind(className SocketServer, "take_socket_connection", 1883962599)
  var ret: encoded gdref StreamPeerSocket
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref StreamPeerSocket)
