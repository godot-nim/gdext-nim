{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc hasMultiplayerPeer*(self: MultiplayerApi): bool =
  expandMethodBind(className MultiplayerApi, "has_multiplayer_peer", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMultiplayerPeer*(self: MultiplayerApi): gdref MultiplayerPeer =
  expandMethodBind(className MultiplayerApi, "get_multiplayer_peer", 3223692825)
  var ret: encoded gdref MultiplayerPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref MultiplayerPeer)

proc setMultiplayerPeer*(self: MultiplayerApi; peer: gdref MultiplayerPeer): void =
  expandMethodBind(className MultiplayerApi, "set_multiplayer_peer", 3694835298)
  var `?param` = [getPtr peer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUniqueId*(self: MultiplayerApi): int32 =
  expandMethodBind(className MultiplayerApi, "get_unique_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isServer*(self: MultiplayerApi): bool =
  expandMethodBind(className MultiplayerApi, "is_server", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getRemoteSenderId*(self: MultiplayerApi): int32 =
  expandMethodBind(className MultiplayerApi, "get_remote_sender_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc poll*(self: MultiplayerApi): Error =
  expandMethodBind(className MultiplayerApi, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc rpc*(self: MultiplayerApi; peer: int32; `object`: Object; `method`: StringName; arguments: Array = gdarray()): Error =
  expandMethodBind(className MultiplayerApi, "rpc", 2077486355)
  var `?param` = [getPtr peer, getPtr `object`, getPtr `method`, getPtr arguments]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc objectConfigurationAdd*(self: MultiplayerApi; `object`: Object; configuration: Variant): Error =
  expandMethodBind(className MultiplayerApi, "object_configuration_add", 1171879464)
  var `?param` = [getPtr `object`, getPtr configuration]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc objectConfigurationRemove*(self: MultiplayerApi; `object`: Object; configuration: Variant): Error =
  expandMethodBind(className MultiplayerApi, "object_configuration_remove", 1171879464)
  var `?param` = [getPtr `object`, getPtr configuration]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getPeers*(self: MultiplayerApi): PackedInt32Array =
  expandMethodBind(className MultiplayerApi, "get_peers", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDefaultInterface*(_: typedesc[MultiplayerApi]; interfaceName: StringName): void =
  expandMethodBind(className MultiplayerApi, "set_default_interface", 3304788590)
  var `?param` = [getPtr interfaceName]
  methodbind.ptrcall(addr `?param`[0])

proc getDefaultInterface*(_: typedesc[MultiplayerApi]): StringName =
  expandMethodBind(className MultiplayerApi, "get_default_interface", 2737447660)
  var ret: encoded StringName
  methodbind.ptrcall(nil, addr ret)
  (addr ret).decode_result(StringName)

proc createDefaultInterface*(_: typedesc[MultiplayerApi]): gdref MultiplayerApi =
  expandMethodBind(className MultiplayerApi, "create_default_interface", 3294156723)
  var ret: encoded gdref MultiplayerApi
  methodbind.ptrcall(nil, addr ret)
  (addr ret).decode_result(gdref MultiplayerApi)

template multiplayerPeer*(self: MultiplayerApi): untyped = self.getMultiplayerPeer()
template `multiplayerPeer=`*(self: MultiplayerApi; value) = self.setMultiplayerPeer(value)

const MultiplayerApi_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiplayerApi]): Table[string, string] = MultiplayerApi_vmap

proc peerConnected*(self: MultiplayerApi; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_connected")
  let args = [id]
  self.emitSignal(signalname, args)

proc peerDisconnected*(self: MultiplayerApi; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_disconnected")
  let args = [id]
  self.emitSignal(signalname, args)

proc connectedToServer*(self: MultiplayerApi): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connected_to_server")
  self.emitSignal(signalname)

proc connectionFailed*(self: MultiplayerApi): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_failed")
  self.emitSignal(signalname)

proc serverDisconnected*(self: MultiplayerApi): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("server_disconnected")
  self.emitSignal(signalname)