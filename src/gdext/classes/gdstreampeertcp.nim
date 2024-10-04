{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc `bind`*(self: StreamPeerTcp; port: int32; host: String = gdstring"*"): Error =
  expandMethodBind(className StreamPeerTcp, "bind", 3167955072)
  var `?param` = [getPtr port, getPtr host]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc connectToHost*(self: StreamPeerTcp; host: String; port: int32): Error =
  expandMethodBind(className StreamPeerTcp, "connect_to_host", 993915709)
  var `?param` = [getPtr host, getPtr port]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: StreamPeerTcp): Error =
  expandMethodBind(className StreamPeerTcp, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: StreamPeerTcp): StreamPeerTcp_Status =
  expandMethodBind(className StreamPeerTcp, "get_status", 859471121)
  var ret: encoded StreamPeerTcp_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StreamPeerTcp_Status)

proc getConnectedHost*(self: StreamPeerTcp): String =
  expandMethodBind(className StreamPeerTcp, "get_connected_host", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getConnectedPort*(self: StreamPeerTcp): int32 =
  expandMethodBind(className StreamPeerTcp, "get_connected_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: StreamPeerTcp): int32 =
  expandMethodBind(className StreamPeerTcp, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc disconnectFromHost*(self: StreamPeerTcp): void =
  expandMethodBind(className StreamPeerTcp, "disconnect_from_host", 3218959716)
  methodbind.ptrcall(self, nil)

proc setNoDelay*(self: StreamPeerTcp; enabled: bool): void =
  expandMethodBind(className StreamPeerTcp, "set_no_delay", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

const StreamPeerTcp_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerTcp]): Table[string, string] = StreamPeerTcp_vmap