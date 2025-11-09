{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

expandOnClassImported(StreamPeerTCP, StreamPeer)

proc `bind`*(self: StreamPeerTCP; port: int32; host: String = newGdString("*")): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "bind", 3167955072)
  methodbind.ptrcall(self, [getPtr port, getPtr host], Error)

proc connectToHost*(self: StreamPeerTCP; host: String; port: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "connect_to_host", 993915709)
  methodbind.ptrcall(self, [getPtr host, getPtr port], Error)

proc poll*(self: StreamPeerTCP): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc getStatus*(self: StreamPeerTCP): StreamPeerTCP_Status =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "get_status", 859471121)
  methodbind.ptrcall(self, [], StreamPeerTCP_Status)

proc getConnectedHost*(self: StreamPeerTCP): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "get_connected_host", 201670096)
  methodbind.ptrcall(self, [], String)

proc getConnectedPort*(self: StreamPeerTCP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "get_connected_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLocalPort*(self: StreamPeerTCP): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "get_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc disconnectFromHost*(self: StreamPeerTCP): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "disconnect_from_host", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setNoDelay*(self: StreamPeerTCP; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTCP, "set_no_delay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)
