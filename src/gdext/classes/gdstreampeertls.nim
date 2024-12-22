{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc poll*(self: StreamPeerTLS): void =
  expandMethodBind(className StreamPeerTLS, "poll", 3218959716)
  methodbind.ptrcall(self, nil)

proc acceptStream*(self: StreamPeerTLS; stream: gdref StreamPeer; serverOptions: gdref TLSOptions): Error =
  expandMethodBind(className StreamPeerTLS, "accept_stream", 4292689651)
  var `?param` = [getPtr stream, getPtr serverOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc connectToStream*(self: StreamPeerTLS; stream: gdref StreamPeer; commonName: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  expandMethodBind(className StreamPeerTLS, "connect_to_stream", 57169517)
  var `?param` = [getPtr stream, getPtr commonName, getPtr clientOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: StreamPeerTLS): StreamPeerTLS_Status =
  expandMethodBind(className StreamPeerTLS, "get_status", 1128380576)
  var ret: encoded StreamPeerTLS_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StreamPeerTLS_Status)

proc getStream*(self: StreamPeerTLS): gdref StreamPeer =
  expandMethodBind(className StreamPeerTLS, "get_stream", 2741655269)
  var ret: encoded gdref StreamPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeer)

proc disconnectFromStream*(self: StreamPeerTLS): void =
  expandMethodBind(className StreamPeerTLS, "disconnect_from_stream", 3218959716)
  methodbind.ptrcall(self, nil)

const StreamPeerTLS_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerTLS]): Table[string, string] = StreamPeerTLS_vmap