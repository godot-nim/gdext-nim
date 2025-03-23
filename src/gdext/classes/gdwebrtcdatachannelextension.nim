{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwebrtcdatachannel; export gdwebrtcdatachannel

method getPacket*(self: WebRTCDataChannelExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc registerVirtual_getPacket*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)

method putPacket*(self: WebRTCDataChannelExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc registerVirtual_putPacket*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_put_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)

method getAvailablePacketCount*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getAvailablePacketCount*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_available_packet_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getAvailablePacketCount().encode(r_ret)

method getMaxPacketSize*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getMaxPacketSize*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_max_packet_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxPacketSize().encode(r_ret)

method poll*(self: WebRTCDataChannelExtension): Error {.base.} = (discard)
proc registerVirtual_poll*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_poll"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).poll().encode(r_ret)

method close*(self: WebRTCDataChannelExtension): void {.base.} = (discard)
proc registerVirtual_close*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_close"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).close()

method setWriteMode*(self: WebRTCDataChannelExtension; pWriteMode: WebRTCDataChannel_WriteMode): void {.base.} = (discard)
proc registerVirtual_setWriteMode*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_write_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).setWriteMode(p_args[0].decode(WebRTCDataChannel_WriteMode))

method getWriteMode*(self: WebRTCDataChannelExtension): WebRTCDataChannel_WriteMode {.base.} = (discard)
proc registerVirtual_getWriteMode*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_write_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getWriteMode().encode(r_ret)

method wasStringPacket*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc registerVirtual_wasStringPacket*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_was_string_packet"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).wasStringPacket().encode(r_ret)

method getReadyState*(self: WebRTCDataChannelExtension): WebRTCDataChannel_ChannelState {.base.} = (discard)
proc registerVirtual_getReadyState*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_ready_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getReadyState().encode(r_ret)

method getLabel*(self: WebRTCDataChannelExtension): String {.base.} = (discard)
proc registerVirtual_getLabel*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_label"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getLabel().encode(r_ret)

method isOrdered*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc registerVirtual_isOrdered*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_ordered"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).isOrdered().encode(r_ret)

method getId*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getId*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getId().encode(r_ret)

method getMaxPacketLifeTime*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getMaxPacketLifeTime*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_max_packet_life_time"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxPacketLifeTime().encode(r_ret)

method getMaxRetransmits*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getMaxRetransmits*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_max_retransmits"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxRetransmits().encode(r_ret)

method getProtocol*(self: WebRTCDataChannelExtension): String {.base.} = (discard)
proc registerVirtual_getProtocol*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_protocol"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getProtocol().encode(r_ret)

method isNegotiated*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc registerVirtual_isNegotiated*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_negotiated"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).isNegotiated().encode(r_ret)

method getBufferedAmount*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc registerVirtual_getBufferedAmount*[T: WebRTCDataChannelExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_buffered_amount"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[WebRTCDataChannelExtension](p_instance).getBufferedAmount().encode(r_ret)