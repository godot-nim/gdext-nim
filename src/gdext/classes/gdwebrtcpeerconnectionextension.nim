{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwebrtcpeerconnection; export gdwebrtcpeerconnection

method getConnectionState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_ConnectionState {.base.} = (discard)
proc getConnectionState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).getConnectionState().encode(r_ret)
template getConnectionState_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = getConnectionState

method getGatheringState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_GatheringState {.base.} = (discard)
proc getGatheringState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).getGatheringState().encode(r_ret)
template getGatheringState_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = getGatheringState

method getSignalingState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_SignalingState {.base.} = (discard)
proc getSignalingState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).getSignalingState().encode(r_ret)
template getSignalingState_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = getSignalingState

method initialize*(self: WebRTCPeerConnectionExtension; pConfig: Dictionary): Error {.base.} = (discard)
proc initialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).initialize(p_args[0].decode(Dictionary)).encode(r_ret)
template initialize_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = initialize

method createDataChannel*(self: WebRTCPeerConnectionExtension; pLabel: String; pConfig: Dictionary): gdref WebRTCDataChannel {.base.} = (discard)
proc createDataChannel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).createDataChannel(p_args[0].decode(String), p_args[1].decode(Dictionary)).encode(r_ret)
template createDataChannel_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = createDataChannel

method createOffer*(self: WebRTCPeerConnectionExtension): Error {.base.} = (discard)
proc createOffer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).createOffer().encode(r_ret)
template createOffer_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = createOffer

method setRemoteDescription*(self: WebRTCPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc setRemoteDescription(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).setRemoteDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template setRemoteDescription_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = setRemoteDescription

method setLocalDescription*(self: WebRTCPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc setLocalDescription(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).setLocalDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template setLocalDescription_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = setLocalDescription

method addIceCandidate*(self: WebRTCPeerConnectionExtension; pSdpMidName: String; pSdpMlineIndex: int32; pSdpName: String): Error {.base.} = (discard)
proc addIceCandidate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).addIceCandidate(p_args[0].decode(String), p_args[1].decode(int32), p_args[2].decode(String)).encode(r_ret)
template addIceCandidate_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = addIceCandidate

method poll*(self: WebRTCPeerConnectionExtension): Error {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).poll().encode(r_ret)
template poll_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = poll

method close*(self: WebRTCPeerConnectionExtension): void {.base.} = (discard)
proc close(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCPeerConnectionExtension](p_instance).close()
template close_bind*(_: typedesc[WebRTCPeerConnectionExtension]): ClassCallVirtual = close

const WebRTCPeerConnectionExtension_vmap =
  WebRTCPeerConnection.vmap.concat toTable {
    "getconnectionstate" : "_get_connection_state",
    "getgatheringstate" : "_get_gathering_state",
    "getsignalingstate" : "_get_signaling_state",
    "initialize" : "_initialize",
    "createdatachannel" : "_create_data_channel",
    "createoffer" : "_create_offer",
    "setremotedescription" : "_set_remote_description",
    "setlocaldescription" : "_set_local_description",
    "addicecandidate" : "_add_ice_candidate",
    "poll" : "_poll",
    "close" : "_close",
    }
template vmap*(_: typedesc[WebRTCPeerConnectionExtension]): Table[string, string] = WebRTCPeerConnectionExtension_vmap