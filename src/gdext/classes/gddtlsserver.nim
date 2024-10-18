{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setup*(self: DtlsServer; serverOptions: gdref TlsOptions): Error =
  expandMethodBind(className DtlsServer, "setup", 1262296096)
  var `?param` = [getPtr serverOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc takeConnection*(self: DtlsServer; udpPeer: gdref PacketPeerUdp): gdref PacketPeerDtls =
  expandMethodBind(className DtlsServer, "take_connection", 3946580474)
  var `?param` = [getPtr udpPeer]
  var ret: encoded gdref PacketPeerDtls
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref PacketPeerDtls)

const DtlsServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DtlsServer]): Table[string, string] = DtlsServer_vmap