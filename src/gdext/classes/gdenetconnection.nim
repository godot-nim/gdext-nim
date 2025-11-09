{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(ENetConnection, RefCounted)

proc createHostBound*(self: ENetConnection; bindAddress: String; bindPort: int32; maxPeers: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "create_host_bound", 1515002313)
  methodbind.ptrcall(self, [getPtr bindAddress, getPtr bindPort, getPtr maxPeers, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth], Error)

proc createHost*(self: ENetConnection; maxPeers: int32 = 32; maxChannels: int32 = 0; inBandwidth: int32 = 0; outBandwidth: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "create_host", 117198950)
  methodbind.ptrcall(self, [getPtr maxPeers, getPtr maxChannels, getPtr inBandwidth, getPtr outBandwidth], Error)

proc destroy*(self: ENetConnection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "destroy", 3218959716)
  methodbind.ptrcall(self, [], void)

proc connectToHost*(self: ENetConnection; address: String; port: int32; channels: int32 = 0; data: int32 = 0): gdref ENetPacketPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "connect_to_host", 2171300490)
  methodbind.ptrcall(self, [getPtr address, getPtr port, getPtr channels, getPtr data], gdref ENetPacketPeer)

proc service*(self: ENetConnection; timeout: int32 = 0): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "service", 2402345344)
  methodbind.ptrcall(self, [getPtr timeout], Array)

proc flush*(self: ENetConnection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "flush", 3218959716)
  methodbind.ptrcall(self, [], void)

proc bandwidthLimit*(self: ENetConnection; inBandwidth: int32 = 0; outBandwidth: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "bandwidth_limit", 2302169788)
  methodbind.ptrcall(self, [getPtr inBandwidth, getPtr outBandwidth], void)

proc channelLimit*(self: ENetConnection; limit: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "channel_limit", 1286410249)
  methodbind.ptrcall(self, [getPtr limit], void)

proc broadcast*(self: ENetConnection; channel: int32; packet: PackedByteArray; flags: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "broadcast", 2772371345)
  methodbind.ptrcall(self, [getPtr channel, getPtr packet, getPtr flags], void)

proc compress*(self: ENetConnection; mode: ENetConnection_CompressionMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "compress", 2660215187)
  methodbind.ptrcall(self, [getPtr mode], void)

proc dtlsServerSetup*(self: ENetConnection; serverOptions: gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "dtls_server_setup", 1262296096)
  methodbind.ptrcall(self, [getPtr serverOptions], Error)

proc dtlsClientSetup*(self: ENetConnection; hostname: String; clientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "dtls_client_setup", 1966198364)
  methodbind.ptrcall(self, [getPtr hostname, getPtr clientOptions], Error)

proc refuseNewConnections*(self: ENetConnection; refuse: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "refuse_new_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr refuse], void)

proc popStatistic*(self: ENetConnection; statistic: ENetConnection_HostStatistic): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "pop_statistic", 2166904170)
  methodbind.ptrcall(self, [getPtr statistic], float64)

proc getMaxChannels*(self: ENetConnection): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "get_max_channels", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLocalPort*(self: ENetConnection): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "get_local_port", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPeers*(self: ENetConnection): TypedArray[gdref ENetPacketPeer] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "get_peers", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref ENetPacketPeer])

proc socketSend*(self: ENetConnection; destinationAddress: String; destinationPort: int32; packet: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ENetConnection, "socket_send", 1100646812)
  methodbind.ptrcall(self, [getPtr destinationAddress, getPtr destinationPort, getPtr packet], void)
