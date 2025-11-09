{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

expandOnClassImported(ENetMultiplayerPeer, MultiplayerPeer)

proc createServer*(self: ENetMultiplayerPeer; port: int32; maxClients: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "create_server", 2917761309)
  methodbind.ptrcall(self, [getPtr port, getPtr maxClients, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth], Error)

proc createClient*(self: ENetMultiplayerPeer; address: String; port: int32; channelCount: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0; localPort: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "create_client", 2327163476)
  methodbind.ptrcall(self, [getPtr address, getPtr port, getPtr channelCount, getPtr inBandwidth, getPtr outBandwidth, getPtr localPort], Error)

proc createMesh*(self: ENetMultiplayerPeer; uniqueId: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "create_mesh", 844576869)
  methodbind.ptrcall(self, [getPtr uniqueId], Error)

proc addMeshPeer*(self: ENetMultiplayerPeer; peerId: int32; host: gdref ENetConnection): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "add_mesh_peer", 1293458335)
  methodbind.ptrcall(self, [getPtr peerId, getPtr host], Error)

proc setBindIp*(self: ENetMultiplayerPeer; ip: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "set_bind_ip", 83702148)
  methodbind.ptrcall(self, [getPtr ip], void)

proc getHost*(self: ENetMultiplayerPeer): gdref ENetConnection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "get_host", 4103238886)
  methodbind.ptrcall(self, [], gdref ENetConnection)

proc getPeer*(self: ENetMultiplayerPeer; id: int32): gdref ENetPacketPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetMultiplayerPeer, "get_peer", 3793311544)
  methodbind.ptrcall(self, [getPtr id], gdref ENetPacketPeer)

template host*(self: ENetMultiplayerPeer): untyped = self.getHost()
