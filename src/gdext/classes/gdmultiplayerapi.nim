{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(MultiplayerAPI, RefCounted)

proc hasMultiplayerPeer*(self: MultiplayerAPI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "has_multiplayer_peer", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getMultiplayerPeer*(self: MultiplayerAPI): gdref MultiplayerPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "get_multiplayer_peer", 3223692825)
  methodbind.ptrcall(self, [], gdref MultiplayerPeer)

proc setMultiplayerPeer*(self: MultiplayerAPI; peer: gdref MultiplayerPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "set_multiplayer_peer", 3694835298)
  methodbind.ptrcall(self, [getPtr peer], void)

proc getUniqueId*(self: MultiplayerAPI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "get_unique_id", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc isServer*(self: MultiplayerAPI): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "is_server", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getRemoteSenderId*(self: MultiplayerAPI): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "get_remote_sender_id", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc poll*(self: MultiplayerAPI): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc rpc*(self: MultiplayerAPI; peer: int32; `object`: Object; `method`: StringName; arguments: Array = newArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "rpc", 2077486355)
  methodbind.ptrcall(self, [getPtr peer, getPtr `object`, getPtr `method`, getPtr arguments], Error)

proc objectConfigurationAdd*(self: MultiplayerAPI; `object`: Object; configuration: Variant): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "object_configuration_add", 1171879464)
  methodbind.ptrcall(self, [getPtr `object`, getPtr configuration], Error)

proc objectConfigurationRemove*(self: MultiplayerAPI; `object`: Object; configuration: Variant): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "object_configuration_remove", 1171879464)
  methodbind.ptrcall(self, [getPtr `object`, getPtr configuration], Error)

proc getPeers*(self: MultiplayerAPI): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "get_peers", 969006518)
  methodbind.ptrcall(self, [], PackedInt32Array)

proc setDefaultInterface*(_: typedesc[MultiplayerAPI]; interfaceName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "set_default_interface", 3304788590)
  methodbind.ptrcall([getPtr interfaceName], void)

proc getDefaultInterface*(_: typedesc[MultiplayerAPI]): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "get_default_interface", 2737447660)
  methodbind.ptrcall([], StringName)

proc createDefaultInterface*(_: typedesc[MultiplayerAPI]): gdref MultiplayerAPI =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerAPI, "create_default_interface", 3294156723)
  methodbind.ptrcall([], gdref MultiplayerAPI)

template multiplayerPeer*(self: MultiplayerAPI): untyped = self.getMultiplayerPeer()
template `multiplayerPeer=`*(self: MultiplayerAPI; value) = self.setMultiplayerPeer(value)
