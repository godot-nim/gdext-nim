{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc hasMultiplayerPeer*(self: MultiplayerAPI): bool =
  expandMethodBind(className MultiplayerAPI, "has_multiplayer_peer", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getMultiplayerPeer*(self: MultiplayerAPI): gdref MultiplayerPeer =
  expandMethodBind(className MultiplayerAPI, "get_multiplayer_peer", 3223692825)
  var ret: encoded gdref MultiplayerPeer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref MultiplayerPeer)

proc setMultiplayerPeer*(self: MultiplayerAPI; peer: gdref MultiplayerPeer): void =
  expandMethodBind(className MultiplayerAPI, "set_multiplayer_peer", 3694835298)
  methodbind.ptrcall(self, [getPtr peer])

proc getUniqueId*(self: MultiplayerAPI): int32 =
  expandMethodBind(className MultiplayerAPI, "get_unique_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isServer*(self: MultiplayerAPI): bool =
  expandMethodBind(className MultiplayerAPI, "is_server", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getRemoteSenderId*(self: MultiplayerAPI): int32 =
  expandMethodBind(className MultiplayerAPI, "get_remote_sender_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc poll*(self: MultiplayerAPI): Error =
  expandMethodBind(className MultiplayerAPI, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc rpc*(self: MultiplayerAPI; peer: int32; `object`: Object; `method`: StringName; arguments: Array = gdarray()): Error =
  expandMethodBind(className MultiplayerAPI, "rpc", 2077486355)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr peer, getPtr `object`, getPtr `method`, getPtr arguments], addr ret)
  (addr ret).decode_result(Error)

proc objectConfigurationAdd*(self: MultiplayerAPI; `object`: Object; configuration: Variant): Error =
  expandMethodBind(className MultiplayerAPI, "object_configuration_add", 1171879464)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `object`, getPtr configuration], addr ret)
  (addr ret).decode_result(Error)

proc objectConfigurationRemove*(self: MultiplayerAPI; `object`: Object; configuration: Variant): Error =
  expandMethodBind(className MultiplayerAPI, "object_configuration_remove", 1171879464)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `object`, getPtr configuration], addr ret)
  (addr ret).decode_result(Error)

proc getPeers*(self: MultiplayerAPI): PackedInt32Array =
  expandMethodBind(className MultiplayerAPI, "get_peers", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setDefaultInterface*(_: typedesc[MultiplayerAPI]; interfaceName: StringName): void =
  expandMethodBind(className MultiplayerAPI, "set_default_interface", 3304788590)
  methodbind.ptrcall([getPtr interfaceName])

proc getDefaultInterface*(_: typedesc[MultiplayerAPI]): StringName =
  expandMethodBind(className MultiplayerAPI, "get_default_interface", 2737447660)
  var ret: encoded StringName
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(StringName)

proc createDefaultInterface*(_: typedesc[MultiplayerAPI]): gdref MultiplayerAPI =
  expandMethodBind(className MultiplayerAPI, "create_default_interface", 3294156723)
  var ret: encoded gdref MultiplayerAPI
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(gdref MultiplayerAPI)

template multiplayerPeer*(self: MultiplayerAPI): untyped = self.getMultiplayerPeer()
template `multiplayerPeer=`*(self: MultiplayerAPI; value) = self.setMultiplayerPeer(value)

const MultiplayerAPI_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiplayerAPI]): Table[string, string] = MultiplayerAPI_vmap

proc peerConnected*(self: MultiplayerAPI; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_connected")
  let args = [id]
  self.emitSignal(signalname, args)

proc peerDisconnected*(self: MultiplayerAPI; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("peer_disconnected")
  let args = [id]
  self.emitSignal(signalname, args)

proc connectedToServer*(self: MultiplayerAPI): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connected_to_server")
  self.emitSignal(signalname)

proc connectionFailed*(self: MultiplayerAPI): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("connection_failed")
  self.emitSignal(signalname)

proc serverDisconnected*(self: MultiplayerAPI): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("server_disconnected")
  self.emitSignal(signalname)