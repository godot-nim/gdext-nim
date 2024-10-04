{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc listen*(self: TcpServer; port: uint16; bindAddress: String = gdstring"*"): Error =
  expandMethodBind(className TcpServer, "listen", 3167955072)
  var `?param` = [getPtr port, getPtr bindAddress]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isConnectionAvailable*(self: TcpServer): bool =
  expandMethodBind(className TcpServer, "is_connection_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isListening*(self: TcpServer): bool =
  expandMethodBind(className TcpServer, "is_listening", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLocalPort*(self: TcpServer): int32 =
  expandMethodBind(className TcpServer, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc takeConnection*(self: TcpServer): gdref StreamPeerTcp =
  expandMethodBind(className TcpServer, "take_connection", 30545006)
  var ret: encoded gdref StreamPeerTcp
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeerTcp)

proc stop*(self: TcpServer): void =
  expandMethodBind(className TcpServer, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

const TcpServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TcpServer]): Table[string, string] = TcpServer_vmap