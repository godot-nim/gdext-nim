{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setup*(self: DTLSServer; serverOptions: gdref TLSOptions): Error =
  expandMethodBind(className DTLSServer, "setup", 1262296096)
  var `?param` = [getPtr serverOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc takeConnection*(self: DTLSServer; udpPeer: gdref PacketPeerUDP): gdref PacketPeerDTLS =
  expandMethodBind(className DTLSServer, "take_connection", 3946580474)
  var `?param` = [getPtr udpPeer]
  var ret: encoded gdref PacketPeerDTLS
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref PacketPeerDTLS)

const DTLSServer_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DTLSServer]): Table[string, string] = DTLSServer_vmap