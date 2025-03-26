{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwebrtcpeerconnection; export gdwebrtcpeerconnection

method getConnectionState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_ConnectionState {.base.} = (discard)
proc registerVirtual_getConnectionState*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_connection_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).getConnectionState().encode(r_ret)

method getGatheringState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_GatheringState {.base.} = (discard)
proc registerVirtual_getGatheringState*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_gathering_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).getGatheringState().encode(r_ret)

method getSignalingState*(self: WebRTCPeerConnectionExtension): WebRTCPeerConnection_SignalingState {.base.} = (discard)
proc registerVirtual_getSignalingState*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_signaling_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).getSignalingState().encode(r_ret)

method initialize*(self: WebRTCPeerConnectionExtension; pConfig: Dictionary): Error {.base.} = (discard)
proc registerVirtual_initialize*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_initialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).initialize(p_args[0].decode(Dictionary)).encode(r_ret)

method createDataChannel*(self: WebRTCPeerConnectionExtension; pLabel: String; pConfig: Dictionary): gdref WebRTCDataChannel {.base.} = (discard)
proc registerVirtual_createDataChannel*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_data_channel"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).createDataChannel(p_args[0].decode(String), p_args[1].decode(Dictionary)).encode(r_ret)

method createOffer*(self: WebRTCPeerConnectionExtension): Error {.base.} = (discard)
proc registerVirtual_createOffer*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_offer"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).createOffer().encode(r_ret)

method setRemoteDescription*(self: WebRTCPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc registerVirtual_setRemoteDescription*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_remote_description"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).setRemoteDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method setLocalDescription*(self: WebRTCPeerConnectionExtension; pType: String; pSdp: String): Error {.base.} = (discard)
proc registerVirtual_setLocalDescription*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_local_description"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).setLocalDescription(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

method addIceCandidate*(self: WebRTCPeerConnectionExtension; pSdpMidName: String; pSdpMlineIndex: int32; pSdpName: String): Error {.base.} = (discard)
proc registerVirtual_addIceCandidate*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_add_ice_candidate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).addIceCandidate(p_args[0].decode(String), p_args[1].decode(int32), p_args[2].decode(String)).encode(r_ret)

method poll*(self: WebRTCPeerConnectionExtension): Error {.base.} = (discard)
proc registerVirtual_poll*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_poll"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).poll().encode(r_ret)

method close*(self: WebRTCPeerConnectionExtension): void {.base.} = (discard)
proc registerVirtual_close*[T: WebRTCPeerConnectionExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_close"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCPeerConnectionExtension](p_instance).close()
