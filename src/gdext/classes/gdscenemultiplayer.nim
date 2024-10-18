{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerapi; export gdmultiplayerapi

proc setRootPath*(self: SceneMultiplayer; path: NodePath): void =
  expandMethodBind(className SceneMultiplayer, "set_root_path", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootPath*(self: SceneMultiplayer): NodePath =
  expandMethodBind(className SceneMultiplayer, "get_root_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc clear*(self: SceneMultiplayer): void =
  expandMethodBind(className SceneMultiplayer, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc disconnectPeer*(self: SceneMultiplayer; id: int32): void =
  expandMethodBind(className SceneMultiplayer, "disconnect_peer", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAuthenticatingPeers*(self: SceneMultiplayer): PackedInt32Array =
  expandMethodBind(className SceneMultiplayer, "get_authenticating_peers", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc sendAuth*(self: SceneMultiplayer; id: int32; data: PackedByteArray): Error =
  expandMethodBind(className SceneMultiplayer, "send_auth", 506032537)
  var `?param` = [getPtr id, getPtr data]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc completeAuth*(self: SceneMultiplayer; id: int32): Error =
  expandMethodBind(className SceneMultiplayer, "complete_auth", 844576869)
  var `?param` = [getPtr id]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setAuthCallback*(self: SceneMultiplayer; callback: Callable): void =
  expandMethodBind(className SceneMultiplayer, "set_auth_callback", 1611583062)
  var `?param` = [getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAuthCallback*(self: SceneMultiplayer): Callable =
  expandMethodBind(className SceneMultiplayer, "get_auth_callback", 1307783378)
  var ret: encoded Callable
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Callable)

proc setAuthTimeout*(self: SceneMultiplayer; timeout: float64): void =
  expandMethodBind(className SceneMultiplayer, "set_auth_timeout", 373806689)
  var `?param` = [getPtr timeout]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAuthTimeout*(self: SceneMultiplayer): float64 =
  expandMethodBind(className SceneMultiplayer, "get_auth_timeout", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setRefuseNewConnections*(self: SceneMultiplayer; refuse: bool): void =
  expandMethodBind(className SceneMultiplayer, "set_refuse_new_connections", 2586408642)
  var `?param` = [getPtr refuse]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRefusingNewConnections*(self: SceneMultiplayer): bool =
  expandMethodBind(className SceneMultiplayer, "is_refusing_new_connections", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAllowObjectDecoding*(self: SceneMultiplayer; enable: bool): void =
  expandMethodBind(className SceneMultiplayer, "set_allow_object_decoding", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isObjectDecodingAllowed*(self: SceneMultiplayer): bool =
  expandMethodBind(className SceneMultiplayer, "is_object_decoding_allowed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setServerRelayEnabled*(self: SceneMultiplayer; enabled: bool): void =
  expandMethodBind(className SceneMultiplayer, "set_server_relay_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isServerRelayEnabled*(self: SceneMultiplayer): bool =
  expandMethodBind(className SceneMultiplayer, "is_server_relay_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc sendBytes*(self: SceneMultiplayer; bytes: PackedByteArray; id: int32 = 0; mode: MultiplayerPeer_TransferMode = transferModeReliable; channel: int32 = 0): Error =
  expandMethodBind(className SceneMultiplayer, "send_bytes", 1307428718)
  var `?param` = [getPtr bytes, getPtr id, getPtr mode, getPtr channel]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getMaxSyncPacketSize*(self: SceneMultiplayer): int32 =
  expandMethodBind(className SceneMultiplayer, "get_max_sync_packet_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxSyncPacketSize*(self: SceneMultiplayer; size: int32): void =
  expandMethodBind(className SceneMultiplayer, "set_max_sync_packet_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxDeltaPacketSize*(self: SceneMultiplayer): int32 =
  expandMethodBind(className SceneMultiplayer, "get_max_delta_packet_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxDeltaPacketSize*(self: SceneMultiplayer; size: int32): void =
  expandMethodBind(className SceneMultiplayer, "set_max_delta_packet_size", 1286410249)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

template rootPath*(self: SceneMultiplayer): untyped = self.getRootPath()
template `rootPath=`*(self: SceneMultiplayer; value) = self.setRootPath(value)

template authCallback*(self: SceneMultiplayer): untyped = self.getAuthCallback()
template `authCallback=`*(self: SceneMultiplayer; value) = self.setAuthCallback(value)

template authTimeout*(self: SceneMultiplayer): untyped = self.getAuthTimeout()
template `authTimeout=`*(self: SceneMultiplayer; value) = self.setAuthTimeout(value)

template allowObjectDecoding*(self: SceneMultiplayer): untyped = self.isObjectDecodingAllowed()
template `allowObjectDecoding=`*(self: SceneMultiplayer; value) = self.setAllowObjectDecoding(value)

template refuseNewConnections*(self: SceneMultiplayer): untyped = self.isRefusingNewConnections()
template `refuseNewConnections=`*(self: SceneMultiplayer; value) = self.setRefuseNewConnections(value)

template serverRelay*(self: SceneMultiplayer): untyped = self.isServerRelayEnabled()
template `serverRelay=`*(self: SceneMultiplayer; value) = self.setServerRelayEnabled(value)

template maxSyncPacketSize*(self: SceneMultiplayer): untyped = self.getMaxSyncPacketSize()
template `maxSyncPacketSize=`*(self: SceneMultiplayer; value) = self.setMaxSyncPacketSize(value)

template maxDeltaPacketSize*(self: SceneMultiplayer): untyped = self.getMaxDeltaPacketSize()
template `maxDeltaPacketSize=`*(self: SceneMultiplayer; value) = self.setMaxDeltaPacketSize(value)

const SceneMultiplayer_vmap =
  MultiplayerApi.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SceneMultiplayer]): Table[string, string] = SceneMultiplayer_vmap

proc peerAuthenticating*(self: SceneMultiplayer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_authenticating")
  let args = [id]
  self.emitSignal(signalname, args)

proc peerAuthenticationFailed*(self: SceneMultiplayer; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_authentication_failed")
  let args = [id]
  self.emitSignal(signalname, args)

proc peerPacket*(self: SceneMultiplayer; id: Variant; packet: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_packet")
  let args = [id, packet]
  self.emitSignal(signalname, args)