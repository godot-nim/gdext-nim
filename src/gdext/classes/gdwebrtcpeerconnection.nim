{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setDefaultExtension*(_: WebRtcPeerConnection; extensionClass: StringName): void =
  expandMethodBind(className WebRtcPeerConnection, "set_default_extension", 3304788590)
  var `?param` = [getPtr extensionClass]
  methodbind.ptrcall(addr `?param`[0])

proc initialize*(self: WebRtcPeerConnection; configuration: Dictionary = dictionary()): Error =
  expandMethodBind(className WebRtcPeerConnection, "initialize", 2625064318)
  var `?param` = [getPtr configuration]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc createDataChannel*(self: WebRtcPeerConnection; label: String; options: Dictionary = dictionary()): gdref WebRtcDataChannel =
  expandMethodBind(className WebRtcPeerConnection, "create_data_channel", 1288557393)
  var `?param` = [getPtr label, getPtr options]
  var ret: encoded gdref WebRtcDataChannel
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref WebRtcDataChannel)

proc createOffer*(self: WebRtcPeerConnection): Error =
  expandMethodBind(className WebRtcPeerConnection, "create_offer", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc setLocalDescription*(self: WebRtcPeerConnection; `type`: String; sdp: String): Error =
  expandMethodBind(className WebRtcPeerConnection, "set_local_description", 852856452)
  var `?param` = [getPtr `type`, getPtr sdp]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setRemoteDescription*(self: WebRtcPeerConnection; `type`: String; sdp: String): Error =
  expandMethodBind(className WebRtcPeerConnection, "set_remote_description", 852856452)
  var `?param` = [getPtr `type`, getPtr sdp]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc addIceCandidate*(self: WebRtcPeerConnection; media: String; index: int32; name: String): Error =
  expandMethodBind(className WebRtcPeerConnection, "add_ice_candidate", 3958950400)
  var `?param` = [getPtr media, getPtr index, getPtr name]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc poll*(self: WebRtcPeerConnection): Error =
  expandMethodBind(className WebRtcPeerConnection, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc close*(self: WebRtcPeerConnection): void =
  expandMethodBind(className WebRtcPeerConnection, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc getConnectionState*(self: WebRtcPeerConnection): WebRtcPeerConnection_ConnectionState =
  expandMethodBind(className WebRtcPeerConnection, "get_connection_state", 2275710506)
  var ret: encoded WebRtcPeerConnection_ConnectionState
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(WebRtcPeerConnection_ConnectionState)

proc getGatheringState*(self: WebRtcPeerConnection): WebRtcPeerConnection_GatheringState =
  expandMethodBind(className WebRtcPeerConnection, "get_gathering_state", 4262591401)
  var ret: encoded WebRtcPeerConnection_GatheringState
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(WebRtcPeerConnection_GatheringState)

proc getSignalingState*(self: WebRtcPeerConnection): WebRtcPeerConnection_SignalingState =
  expandMethodBind(className WebRtcPeerConnection, "get_signaling_state", 3342956226)
  var ret: encoded WebRtcPeerConnection_SignalingState
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(WebRtcPeerConnection_SignalingState)

const WebRtcPeerConnection_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRtcPeerConnection]): Table[string, string] = WebRtcPeerConnection_vmap

proc sessionDescriptionCreated*(self: WebRtcPeerConnection; `type`: Variant; sdp: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_description_created")
  let args = [`type`, sdp]
  self.emitSignal(signalname, args)

proc iceCandidateCreated*(self: WebRtcPeerConnection; media: Variant; index: Variant; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("ice_candidate_created")
  let args = [media, index, name]
  self.emitSignal(signalname, args)

proc dataChannelReceived*(self: WebRtcPeerConnection; channel: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("data_channel_received")
  let args = [channel]
  self.emitSignal(signalname, args)