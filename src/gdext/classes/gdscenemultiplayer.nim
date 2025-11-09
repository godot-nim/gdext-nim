{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerapi; export gdmultiplayerapi

expandOnClassImported(SceneMultiplayer, MultiplayerAPI)

proc setRootPath*(self: SceneMultiplayer; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_root_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRootPath*(self: SceneMultiplayer): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_root_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc clear*(self: SceneMultiplayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc disconnectPeer*(self: SceneMultiplayer; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "disconnect_peer", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getAuthenticatingPeers*(self: SceneMultiplayer): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_authenticating_peers", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc sendAuth*(self: SceneMultiplayer; id: int32; data: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "send_auth", 506032537)
  methodbind.ptrcall(self, [getPtr id, getPtr data], Error)

proc completeAuth*(self: SceneMultiplayer; id: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "complete_auth", 844576869)
  methodbind.ptrcall(self, [getPtr id], Error)

proc setAuthCallback*(self: SceneMultiplayer; callback: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_auth_callback", 1611583062)
  methodbind.ptrcall(self, [getPtr callback], void)

proc getAuthCallback*(self: SceneMultiplayer): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_auth_callback", 1307783378)
  methodbind.ptrcall(self, [], Callable)

proc setAuthTimeout*(self: SceneMultiplayer; timeout: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_auth_timeout", 373806689)
  methodbind.ptrcall(self, [getPtr timeout], void)

proc getAuthTimeout*(self: SceneMultiplayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_auth_timeout", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setRefuseNewConnections*(self: SceneMultiplayer; refuse: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_refuse_new_connections", 2586408642)
  methodbind.ptrcall(self, [getPtr refuse], void)

proc isRefusingNewConnections*(self: SceneMultiplayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "is_refusing_new_connections", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAllowObjectDecoding*(self: SceneMultiplayer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_allow_object_decoding", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isObjectDecodingAllowed*(self: SceneMultiplayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "is_object_decoding_allowed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setServerRelayEnabled*(self: SceneMultiplayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_server_relay_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isServerRelayEnabled*(self: SceneMultiplayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "is_server_relay_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc sendBytes*(self: SceneMultiplayer; bytes: PackedByteArray; id: int32 = 0; mode: MultiplayerPeer_TransferMode = transferModeReliable; channel: int32 = 0): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "send_bytes", 1307428718)
  methodbind.ptrcall(self, [getPtr bytes, getPtr id, getPtr mode, getPtr channel], Error)

proc getMaxSyncPacketSize*(self: SceneMultiplayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_max_sync_packet_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxSyncPacketSize*(self: SceneMultiplayer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_max_sync_packet_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getMaxDeltaPacketSize*(self: SceneMultiplayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "get_max_delta_packet_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxDeltaPacketSize*(self: SceneMultiplayer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneMultiplayer, "set_max_delta_packet_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

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
