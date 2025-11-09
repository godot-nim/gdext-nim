{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(PacketPeerDTLS, PacketPeer)

proc poll*(self: PacketPeerDTLS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerDTLS, "poll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc connectToPeer*(self: PacketPeerDTLS; packetPeer: gdref PacketPeerUDP; hostname: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerDTLS, "connect_to_peer", 2880188099)
  methodbind.ptrcall(self, [getPtr packetPeer, getPtr hostname, getPtr clientOptions], Error)

proc getStatus*(self: PacketPeerDTLS): PacketPeerDTLS_Status =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerDTLS, "get_status", 3248654679)
  methodbind.ptrcall(self, [], PacketPeerDTLS_Status)

proc disconnectFromPeer*(self: PacketPeerDTLS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerDTLS, "disconnect_from_peer", 3218959716)
  methodbind.ptrcall(self, [], void)
