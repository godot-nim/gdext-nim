{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setDefaultExtension*(_: typedesc[WebRTCPeerConnection]; extensionClass: StringName): void =
  expandMethodBind(className WebRTCPeerConnection, "set_default_extension", 3304788590)
  methodbind.ptrcall([getPtr extensionClass])

proc initialize*(self: WebRTCPeerConnection; configuration: Dictionary = dictionary()): Error =
  expandMethodBind(className WebRTCPeerConnection, "initialize", 2625064318)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr configuration], addr ret)
  (addr ret).decode_result(Error)

proc createDataChannel*(self: WebRTCPeerConnection; label: String; options: Dictionary = dictionary()): gdref WebRTCDataChannel =
  expandMethodBind(className WebRTCPeerConnection, "create_data_channel", 1288557393)
  var ret: encoded gdref WebRTCDataChannel
  methodbind.ptrcall(self, [getPtr label, getPtr options], addr ret)
  (addr ret).decode_result(gdref WebRTCDataChannel)

proc createOffer*(self: WebRTCPeerConnection): Error =
  expandMethodBind(className WebRTCPeerConnection, "create_offer", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc setLocalDescription*(self: WebRTCPeerConnection; `type`: String; sdp: String): Error =
  expandMethodBind(className WebRTCPeerConnection, "set_local_description", 852856452)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `type`, getPtr sdp], addr ret)
  (addr ret).decode_result(Error)

proc setRemoteDescription*(self: WebRTCPeerConnection; `type`: String; sdp: String): Error =
  expandMethodBind(className WebRTCPeerConnection, "set_remote_description", 852856452)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `type`, getPtr sdp], addr ret)
  (addr ret).decode_result(Error)

proc addIceCandidate*(self: WebRTCPeerConnection; media: String; index: int32; name: String): Error =
  expandMethodBind(className WebRTCPeerConnection, "add_ice_candidate", 3958950400)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr media, getPtr index, getPtr name], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: WebRTCPeerConnection): Error =
  expandMethodBind(className WebRTCPeerConnection, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: WebRTCPeerConnection): void =
  expandMethodBind(className WebRTCPeerConnection, "close", 3218959716)
  methodbind.ptrcall(self, [])

proc getConnectionState*(self: WebRTCPeerConnection): WebRTCPeerConnection_ConnectionState =
  expandMethodBind(className WebRTCPeerConnection, "get_connection_state", 2275710506)
  var ret: encoded WebRTCPeerConnection_ConnectionState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebRTCPeerConnection_ConnectionState)

proc getGatheringState*(self: WebRTCPeerConnection): WebRTCPeerConnection_GatheringState =
  expandMethodBind(className WebRTCPeerConnection, "get_gathering_state", 4262591401)
  var ret: encoded WebRTCPeerConnection_GatheringState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebRTCPeerConnection_GatheringState)

proc getSignalingState*(self: WebRTCPeerConnection): WebRTCPeerConnection_SignalingState =
  expandMethodBind(className WebRTCPeerConnection, "get_signaling_state", 3342956226)
  var ret: encoded WebRTCPeerConnection_SignalingState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebRTCPeerConnection_SignalingState)

const WebRTCPeerConnection_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRTCPeerConnection]): Table[string, string] = WebRTCPeerConnection_vmap

proc sessionDescriptionCreated*(self: WebRTCPeerConnection; `type`: Variant; sdp: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_description_created")
  let args = [`type`, sdp]
  self.emitSignal(signalname, args)

proc iceCandidateCreated*(self: WebRTCPeerConnection; media: Variant; index: Variant; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("ice_candidate_created")
  let args = [media, index, name]
  self.emitSignal(signalname, args)

proc dataChannelReceived*(self: WebRTCPeerConnection; channel: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("data_channel_received")
  let args = [channel]
  self.emitSignal(signalname, args)