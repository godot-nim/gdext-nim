{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(DTLSServer, RefCounted)

proc setup*(self: DTLSServer; serverOptions: gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DTLSServer, "setup", 1262296096)
  methodbind.ptrcall(self, [getPtr serverOptions], Error)

proc takeConnection*(self: DTLSServer; udpPeer: gdref PacketPeerUDP): gdref PacketPeerDTLS =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className DTLSServer, "take_connection", 3946580474)
  methodbind.ptrcall(self, [getPtr udpPeer], gdref PacketPeerDTLS)
