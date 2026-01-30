{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

expandOnClassImported(StreamPeerSocket, StreamPeer)

proc poll*(self: StreamPeerSocket): Error =
  expandMethodBind(className StreamPeerSocket, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: StreamPeerSocket): StreamPeerSocket_Status =
  expandMethodBind(className StreamPeerSocket, "get_status", 1156122502)
  var ret: encoded StreamPeerSocket_Status
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StreamPeerSocket_Status)

proc disconnectFromHost*(self: StreamPeerSocket): void =
  expandMethodBind(className StreamPeerSocket, "disconnect_from_host", 3218959716)
  methodbind.ptrcall(self, [])
