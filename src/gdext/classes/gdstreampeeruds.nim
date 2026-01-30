{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeersocket; export gdstreampeersocket

expandOnClassImported(StreamPeerUDS, StreamPeerSocket)

proc `bind`*(self: StreamPeerUDS; path: String): Error =
  expandMethodBind(className StreamPeerUDS, "bind", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc connectToHost*(self: StreamPeerUDS; path: String): Error =
  expandMethodBind(className StreamPeerUDS, "connect_to_host", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc getConnectedPath*(self: StreamPeerUDS): String =
  expandMethodBind(className StreamPeerUDS, "get_connected_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)
