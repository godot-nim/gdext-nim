{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(WebRTCPeerConnection, RefCounted)

proc setDefaultExtension*(_: typedesc[WebRTCPeerConnection]; extensionClass: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "set_default_extension", 3304788590)
  methodbind.ptrcall([getPtr extensionClass], void)

proc initialize*(self: WebRTCPeerConnection; configuration: Dictionary = newDictionary()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "initialize", 2625064318)
  methodbind.ptrcall(self, [getPtr configuration], Error)

proc createDataChannel*(self: WebRTCPeerConnection; label: String; options: Dictionary = newDictionary()): gdref WebRTCDataChannel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "create_data_channel", 1288557393)
  methodbind.ptrcall(self, [getPtr label, getPtr options], gdref WebRTCDataChannel)

proc createOffer*(self: WebRTCPeerConnection): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "create_offer", 166280745)
  methodbind.ptrcall(self, [], Error)

proc setLocalDescription*(self: WebRTCPeerConnection; `type`: String; sdp: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "set_local_description", 852856452)
  methodbind.ptrcall(self, [getPtr `type`, getPtr sdp], Error)

proc setRemoteDescription*(self: WebRTCPeerConnection; `type`: String; sdp: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "set_remote_description", 852856452)
  methodbind.ptrcall(self, [getPtr `type`, getPtr sdp], Error)

proc addIceCandidate*(self: WebRTCPeerConnection; media: String; index: int32; name: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "add_ice_candidate", 3958950400)
  methodbind.ptrcall(self, [getPtr media, getPtr index, getPtr name], Error)

proc poll*(self: WebRTCPeerConnection): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc close*(self: WebRTCPeerConnection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getConnectionState*(self: WebRTCPeerConnection): WebRTCPeerConnection_ConnectionState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "get_connection_state", 2275710506)
  methodbind.ptrcall(self, [], WebRTCPeerConnection_ConnectionState)

proc getGatheringState*(self: WebRTCPeerConnection): WebRTCPeerConnection_GatheringState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "get_gathering_state", 4262591401)
  methodbind.ptrcall(self, [], WebRTCPeerConnection_GatheringState)

proc getSignalingState*(self: WebRTCPeerConnection): WebRTCPeerConnection_SignalingState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCPeerConnection, "get_signaling_state", 3342956226)
  methodbind.ptrcall(self, [], WebRTCPeerConnection_SignalingState)
