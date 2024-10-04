{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

proc createServer*(self: ENetMultiplayerPeer; port: int32; maxClients: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  expandMethodBind(className ENetMultiplayerPeer, "create_server", 2917761309)
  var `?param` = [getPtr port, getPtr maxClients, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createClient*(self: ENetMultiplayerPeer; address: String; port: int32; channelCount: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0; localPort: int32 = 0): Error =
  expandMethodBind(className ENetMultiplayerPeer, "create_client", 2327163476)
  var `?param` = [getPtr address, getPtr port, getPtr channelCount, getPtr inBandwidth, getPtr outBandwidth, getPtr localPort]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createMesh*(self: ENetMultiplayerPeer; uniqueId: int32): Error =
  expandMethodBind(className ENetMultiplayerPeer, "create_mesh", 844576869)
  var `?param` = [getPtr uniqueId]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addMeshPeer*(self: ENetMultiplayerPeer; peerId: int32; host: gdref ENetConnection): Error =
  expandMethodBind(className ENetMultiplayerPeer, "add_mesh_peer", 1293458335)
  var `?param` = [getPtr peerId, getPtr host]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setBindIp*(self: ENetMultiplayerPeer; ip: String): void =
  expandMethodBind(className ENetMultiplayerPeer, "set_bind_ip", 83702148)
  var `?param` = [getPtr ip]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHost*(self: ENetMultiplayerPeer): gdref ENetConnection =
  expandMethodBind(className ENetMultiplayerPeer, "get_host", 4103238886)
  var ret: encoded gdref ENetConnection
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ENetConnection)

proc getPeer*(self: ENetMultiplayerPeer; id: int32): gdref ENetPacketPeer =
  expandMethodBind(className ENetMultiplayerPeer, "get_peer", 3793311544)
  var `?param` = [getPtr id]
  var ret: encoded gdref ENetPacketPeer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref ENetPacketPeer)

template host*(self: ENetMultiplayerPeer): untyped = self.getHost()

const ENetMultiplayerPeer_vmap =
  MultiplayerPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ENetMultiplayerPeer]): Table[string, string] = ENetMultiplayerPeer_vmap