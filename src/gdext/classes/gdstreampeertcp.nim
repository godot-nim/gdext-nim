{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeersocket; export gdstreampeersocket

expandOnClassImported(StreamPeerTCP, StreamPeerSocket)

proc `bind`*(self: StreamPeerTCP; port: int32; host: String = newGdString("*")): Error =
  expandMethodBind(className StreamPeerTCP, "bind", 3167955072)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr port, getPtr host], addr ret)
  (addr ret).decode_result(Error)

proc connectToHost*(self: StreamPeerTCP; host: String; port: int32): Error =
  expandMethodBind(className StreamPeerTCP, "connect_to_host", 993915709)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr host, getPtr port], addr ret)
  (addr ret).decode_result(Error)

proc getConnectedHost*(self: StreamPeerTCP): String =
  expandMethodBind(className StreamPeerTCP, "get_connected_host", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getConnectedPort*(self: StreamPeerTCP): int32 =
  expandMethodBind(className StreamPeerTCP, "get_connected_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: StreamPeerTCP): int32 =
  expandMethodBind(className StreamPeerTCP, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setNoDelay*(self: StreamPeerTCP; enabled: bool): void =
  expandMethodBind(className StreamPeerTCP, "set_no_delay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])
