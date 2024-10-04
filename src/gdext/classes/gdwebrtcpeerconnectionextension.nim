{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdwebrtcpeerconnection; export gdwebrtcpeerconnection

method getConnectionState*(self: WebRtcPeerConnectionExtension): WebRtcPeerConnection_ConnectionState {.base.} = (discard)
proc getConnectionState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).getConnectionState().encode(r_ret)
template getConnectionState_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = getConnectionState

method getGatheringState*(self: WebRtcPeerConnectionExtension): WebRtcPeerConnection_GatheringState {.base.} = (discard)
proc getGatheringState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).getGatheringState().encode(r_ret)
template getGatheringState_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = getGatheringState

method getSignalingState*(self: WebRtcPeerConnectionExtension): WebRtcPeerConnection_SignalingState {.base.} = (discard)
proc getSignalingState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).getSignalingState().encode(r_ret)
template getSignalingState_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = getSignalingState

method initialize*(self: WebRtcPeerConnectionExtension; pConfig: Dictionary): Error {.base.} = (discard)
proc initialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).initialize(p_args[0].decode(Dictionary)).encode(r_ret)
template initialize_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = initialize

method createDataChannel*(self: WebRtcPeerConnectionExtension; pLabel: String; pConfig: Dictionary): gdref WebRtcDataChannel {.base.} = (discard)
proc createDataChannel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).createDataChannel(p_args[0].decode(String), p_args[1].decode(Dictionary)).encode(r_ret)
template createDataChannel_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = createDataChannel

method createOffer*(self: WebRtcPeerConnectionExtension): Error {.base.} = (discard)
proc createOffer(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).createOffer().encode(r_ret)
template createOffer_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = createOffer

method setRemoteDescription*(self: WebRtcPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc setRemoteDescription(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).setRemoteDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template setRemoteDescription_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = setRemoteDescription

method setLocalDescription*(self: WebRtcPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc setLocalDescription(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).setLocalDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template setLocalDescription_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = setLocalDescription

method addIceCandidate*(self: WebRtcPeerConnectionExtension; pSdpMidName: String; pSdpMlineIndex: int32; pSdpName: String): Error {.base.} = (discard)
proc addIceCandidate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).addIceCandidate(p_args[0].decode(String), p_args[1].decode(int32), p_args[2].decode(String)).encode(r_ret)
template addIceCandidate_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = addIceCandidate

method poll*(self: WebRtcPeerConnectionExtension): Error {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).poll().encode(r_ret)
template poll_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = poll

method close*(self: WebRtcPeerConnectionExtension): void {.base.} = (discard)
proc close(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcPeerConnectionExtension](p_instance).close()
template close_bind*(_: typedesc[WebRtcPeerConnectionExtension]): ClassCallVirtual = close

const WebRtcPeerConnectionExtension_vmap =
  WebRtcPeerConnection.vmap.concat toTable {
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
template vmap*(_: typedesc[WebRtcPeerConnectionExtension]): Table[string, string] = WebRtcPeerConnectionExtension_vmap