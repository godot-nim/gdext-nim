{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc poll*(self: PacketPeerDtls): void =
  expandMethodBind(className PacketPeerDtls, "poll", 3218959716)
  methodbind.ptrcall(self, nil)

proc connectToPeer*(self: PacketPeerDtls; packetPeer: gdref PacketPeerUdp; hostname: String; clientOptions: gdref TlsOptions = default gdref TlsOptions): Error =
  expandMethodBind(className PacketPeerDtls, "connect_to_peer", 2880188099)
  var `?param` = [getPtr packetPeer, getPtr hostname, getPtr clientOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: PacketPeerDtls): PacketPeerDtls_Status =
  expandMethodBind(className PacketPeerDtls, "get_status", 3248654679)
  var ret: encoded PacketPeerDtls_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PacketPeerDtls_Status)

proc disconnectFromPeer*(self: PacketPeerDtls): void =
  expandMethodBind(className PacketPeerDtls, "disconnect_from_peer", 3218959716)
  methodbind.ptrcall(self, nil)

const PacketPeerDtls_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeerDtls]): Table[string, string] = PacketPeerDtls_vmap