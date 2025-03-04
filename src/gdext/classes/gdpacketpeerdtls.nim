{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc poll*(self: PacketPeerDTLS): void =
  expandMethodBind(className PacketPeerDTLS, "poll", 3218959716)
  methodbind.ptrcall(self, [])

proc connectToPeer*(self: PacketPeerDTLS; packetPeer: gdref PacketPeerUDP; hostname: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  expandMethodBind(className PacketPeerDTLS, "connect_to_peer", 2880188099)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr packetPeer, getPtr hostname, getPtr clientOptions], addr ret)
  (addr ret).decode_result(Error)

proc getStatus*(self: PacketPeerDTLS): PacketPeerDTLS_Status =
  expandMethodBind(className PacketPeerDTLS, "get_status", 3248654679)
  var ret: encoded PacketPeerDTLS_Status
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PacketPeerDTLS_Status)

proc disconnectFromPeer*(self: PacketPeerDTLS): void =
  expandMethodBind(className PacketPeerDTLS, "disconnect_from_peer", 3218959716)
  methodbind.ptrcall(self, [])

const PacketPeerDTLS_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeerDTLS]): Table[string, string] = PacketPeerDTLS_vmap