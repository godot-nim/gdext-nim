{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

expandOnClassImported(StreamPeerTLS, StreamPeer)

proc poll*(self: StreamPeerTLS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "poll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc acceptStream*(self: StreamPeerTLS; stream: gdref StreamPeer; serverOptions: gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "accept_stream", 4292689651)
  methodbind.ptrcall(self, [getPtr stream, getPtr serverOptions], Error)

proc connectToStream*(self: StreamPeerTLS; stream: gdref StreamPeer; commonName: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "connect_to_stream", 57169517)
  methodbind.ptrcall(self, [getPtr stream, getPtr commonName, getPtr clientOptions], Error)

proc getStatus*(self: StreamPeerTLS): StreamPeerTLS_Status =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "get_status", 1128380576)
  methodbind.ptrcall(self, [], StreamPeerTLS_Status)

proc getStream*(self: StreamPeerTLS): gdref StreamPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "get_stream", 2741655269)
  methodbind.ptrcall(self, [], gdref StreamPeer)

proc disconnectFromStream*(self: StreamPeerTLS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerTLS, "disconnect_from_stream", 3218959716)
  methodbind.ptrcall(self, [], void)
