{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsocketserver; export gdsocketserver

expandOnClassImported(UDSServer, SocketServer)

proc listen*(self: UDSServer; path: String): Error =
  expandMethodBind(className UDSServer, "listen", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc takeConnection*(self: UDSServer): gdref StreamPeerUDS =
  expandMethodBind(className UDSServer, "take_connection", 1623851112)
  var ret: encoded gdref StreamPeerUDS
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref StreamPeerUDS)
