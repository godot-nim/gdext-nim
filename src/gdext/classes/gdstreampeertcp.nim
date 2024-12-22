{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc `bind`*(self: StreamPeerTCP; port: int32; host: String = gdstring"*"): Error =
  expandMethodBind(className StreamPeerTCP, "bind", 3167955072)
  var `?param` = [getPtr port, getPtr host]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc connectToHost*(self: StreamPeerTCP; host: String; port: int32): Error =
  expandMethodBind(className StreamPeerTCP, "connect_to_host", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: StreamPeerTCP): Error =
  expandMethodBind(className StreamPeerTCP, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: StreamPeerTCP): StreamPeerTCP_Status =
  expandMethodBind(className StreamPeerTCP, "get_status", 859471121)
  var ret: encoded StreamPeerTCP_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StreamPeerTCP_Status)

proc getConnectedHost*(self: StreamPeerTCP): String =
  expandMethodBind(className StreamPeerTCP, "get_connected_host", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getConnectedPort*(self: StreamPeerTCP): int32 =
  expandMethodBind(className StreamPeerTCP, "get_connected_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: StreamPeerTCP): int32 =
  expandMethodBind(className StreamPeerTCP, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc disconnectFromHost*(self: StreamPeerTCP): void =
  expandMethodBind(className StreamPeerTCP, "disconnect_from_host", 3218959716)
  methodbind.ptrcall(self, nil)

proc setNoDelay*(self: StreamPeerTCP; enabled: bool): void =
  expandMethodBind(className StreamPeerTCP, "set_no_delay", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

const StreamPeerTCP_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerTCP]): Table[string, string] = StreamPeerTCP_vmap