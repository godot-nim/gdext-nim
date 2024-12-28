{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc createHostBound*(self: ENetConnection; bindAddress: String; bindPort: int32; maxPeers: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  expandMethodBind(className ENetConnection, "create_host_bound", 1515002313)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr bindAddress, getPtr bindPort, getPtr maxPeers, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth], addr ret)
  (addr ret).decode_result(Error)

proc createHost*(self: ENetConnection; maxPeers: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  expandMethodBind(className ENetConnection, "create_host", 117198950)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr maxPeers, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth], addr ret)
  (addr ret).decode_result(Error)

proc destroy*(self: ENetConnection): void =
  expandMethodBind(className ENetConnection, "destroy", 3218959716)
  methodbind.ptrcall(self, [])

proc connectToHost*(self: ENetConnection; address: String; port: int32; channels: int32 = 0; data: int32 = 0): gdref ENetPacketPeer =
  expandMethodBind(className ENetConnection, "connect_to_host", 2171300490)
  var ret: encoded gdref ENetPacketPeer
  methodbind.ptrcall(self, [getPtr address, getPtr port, getPtr channels, getPtr data], addr ret)
  (addr ret).decode_result(gdref ENetPacketPeer)

proc service*(self: ENetConnection; timeout: int32 = 0): Array =
  expandMethodBind(className ENetConnection, "service", 2402345344)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr timeout], addr ret)
  (addr ret).decode_result(Array)

proc flush*(self: ENetConnection): void =
  expandMethodBind(className ENetConnection, "flush", 3218959716)
  methodbind.ptrcall(self, [])

proc bandwidthLimit*(self: ENetConnection; inBandwidth: int32 = 0; outBandwidth: int32 = 0): void =
  expandMethodBind(className ENetConnection, "bandwidth_limit", 2302169788)
  methodbind.ptrcall(self, [getPtr inBandwidth, getPtr outBandwidth])

proc channelLimit*(self: ENetConnection; limit: int32): void =
  expandMethodBind(className ENetConnection, "channel_limit", 1286410249)
  methodbind.ptrcall(self, [getPtr limit])

proc broadcast*(self: ENetConnection; channel: int32; packet: PackedByteArray; flags: int32): void =
  expandMethodBind(className ENetConnection, "broadcast", 2772371345)
  methodbind.ptrcall(self, [getPtr channel, getPtr packet, getPtr flags])

proc compress*(self: ENetConnection; mode: ENetConnection_CompressionMode): void =
  expandMethodBind(className ENetConnection, "compress", 2660215187)
  methodbind.ptrcall(self, [getPtr mode])

proc dtlsServerSetup*(self: ENetConnection; serverOptions: gdref TLSOptions): Error =
  expandMethodBind(className ENetConnection, "dtls_server_setup", 1262296096)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr serverOptions], addr ret)
  (addr ret).decode_result(Error)

proc dtlsClientSetup*(self: ENetConnection; hostname: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  expandMethodBind(className ENetConnection, "dtls_client_setup", 1966198364)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr hostname, getPtr clientOptions], addr ret)
  (addr ret).decode_result(Error)

proc refuseNewConnections*(self: ENetConnection; refuse: bool): void =
  expandMethodBind(className ENetConnection, "refuse_new_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr refuse])

proc popStatistic*(self: ENetConnection; statistic: ENetConnection_HostStatistic): float64 =
  expandMethodBind(className ENetConnection, "pop_statistic", 2166904170)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr statistic], addr ret)
  (addr ret).decode_result(float64)

proc getMaxChannels*(self: ENetConnection): int32 =
  expandMethodBind(className ENetConnection, "get_max_channels", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getLocalPort*(self: ENetConnection): int32 =
  expandMethodBind(className ENetConnection, "get_local_port", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPeers*(self: ENetConnection): TypedArray[ENetPacketPeer] =
  expandMethodBind(className ENetConnection, "get_peers", 2915620761)
  var ret: encoded TypedArray[ENetPacketPeer]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[ENetPacketPeer])

proc socketSend*(self: ENetConnection; destinationAddress: String; destinationPort: int32; packet: PackedByteArray): void =
  expandMethodBind(className ENetConnection, "socket_send", 1100646812)
  methodbind.ptrcall(self, [getPtr destinationAddress, getPtr destinationPort, getPtr packet])

const ENetConnection_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ENetConnection]): Table[string, string] = ENetConnection_vmap