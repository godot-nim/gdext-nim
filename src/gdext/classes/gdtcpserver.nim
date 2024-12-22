{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc listen*(self: TCPServer; port: uint16; bindAddress: String = gdstring"*"): Error =
  expandMethodBind(className TCPServer, "listen", 3167955072)
  var `?param` = [getPtr port, getPtr bindAddress]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isConnectionAvailable*(self: TCPServer): bool =
  expandMethodBind(className TCPServer, "is_connection_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isListening*(self: TCPServer): bool =
  expandMethodBind(className TCPServer, "is_listening", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLocalPort*(self: TCPServer): int32 =
  expandMethodBind(className TCPServer, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc takeConnection*(self: TCPServer): gdref StreamPeerTCP =
  expandMethodBind(className TCPServer, "take_connection", 30545006)
  var ret: encoded gdref StreamPeerTCP
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeerTCP)

proc stop*(self: TCPServer): void =
  expandMethodBind(className TCPServer, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

const TCPServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TCPServer]): Table[string, string] = TCPServer_vmap