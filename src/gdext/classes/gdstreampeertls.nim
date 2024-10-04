{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc poll*(self: StreamPeerTls): void =
  expandMethodBind(className StreamPeerTls, "poll", 3218959716)
  methodbind.ptrcall(self, nil)

proc acceptStream*(self: StreamPeerTls; stream: gdref StreamPeer; serverOptions: gdref TlsOptions): Error =
  expandMethodBind(className StreamPeerTls, "accept_stream", 4292689651)
  var `?param` = [getPtr stream, getPtr serverOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc connectToStream*(self: StreamPeerTls; stream: gdref StreamPeer; commonName: String; clientOptions: gdref TlsOptions = default gdref TlsOptions): Error =
  expandMethodBind(className StreamPeerTls, "connect_to_stream", 57169517)
  var `?param` = [getPtr stream, getPtr commonName, getPtr clientOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: StreamPeerTls): StreamPeerTls_Status =
  expandMethodBind(className StreamPeerTls, "get_status", 1128380576)
  var ret: encoded StreamPeerTls_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StreamPeerTls_Status)

proc getStream*(self: StreamPeerTls): gdref StreamPeer =
  expandMethodBind(className StreamPeerTls, "get_stream", 2741655269)
  var ret: encoded gdref StreamPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeer)

proc disconnectFromStream*(self: StreamPeerTls): void =
  expandMethodBind(className StreamPeerTls, "disconnect_from_stream", 3218959716)
  methodbind.ptrcall(self, nil)

const StreamPeerTls_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerTls]): Table[string, string] = StreamPeerTls_vmap