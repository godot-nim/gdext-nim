{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwebrtcdatachannel; export gdwebrtcdatachannel

method getPacket*(self: WebRTCDataChannelExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc getPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)
template getPacket_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getPacket

method putPacket*(self: WebRTCDataChannelExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc putPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)
template putPacket_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = putPacket

method getAvailablePacketCount*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getAvailablePacketCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getAvailablePacketCount().encode(r_ret)
template getAvailablePacketCount_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getAvailablePacketCount

method getMaxPacketSize*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getMaxPacketSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxPacketSize().encode(r_ret)
template getMaxPacketSize_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getMaxPacketSize

method poll*(self: WebRTCDataChannelExtension): Error {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).poll().encode(r_ret)
template poll_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = poll

method close*(self: WebRTCDataChannelExtension): void {.base.} = (discard)
proc close(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).close()
template close_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = close

method setWriteMode*(self: WebRTCDataChannelExtension; pWriteMode: WebRTCDataChannel_WriteMode): void {.base.} = (discard)
proc setWriteMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).setWriteMode(p_args[0].decode(WebRTCDataChannel_WriteMode))
template setWriteMode_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = setWriteMode

method getWriteMode*(self: WebRTCDataChannelExtension): WebRTCDataChannel_WriteMode {.base.} = (discard)
proc getWriteMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getWriteMode().encode(r_ret)
template getWriteMode_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getWriteMode

method wasStringPacket*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc wasStringPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).wasStringPacket().encode(r_ret)
template wasStringPacket_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = wasStringPacket

method getReadyState*(self: WebRTCDataChannelExtension): WebRTCDataChannel_ChannelState {.base.} = (discard)
proc getReadyState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getReadyState().encode(r_ret)
template getReadyState_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getReadyState

method getLabel*(self: WebRTCDataChannelExtension): String {.base.} = (discard)
proc getLabel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getLabel().encode(r_ret)
template getLabel_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getLabel

method isOrdered*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc isOrdered(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).isOrdered().encode(r_ret)
template isOrdered_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = isOrdered

method getId*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getId().encode(r_ret)
template getId_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getId

method getMaxPacketLifeTime*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getMaxPacketLifeTime(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxPacketLifeTime().encode(r_ret)
template getMaxPacketLifeTime_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getMaxPacketLifeTime

method getMaxRetransmits*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getMaxRetransmits(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getMaxRetransmits().encode(r_ret)
template getMaxRetransmits_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getMaxRetransmits

method getProtocol*(self: WebRTCDataChannelExtension): String {.base.} = (discard)
proc getProtocol(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getProtocol().encode(r_ret)
template getProtocol_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getProtocol

method isNegotiated*(self: WebRTCDataChannelExtension): bool {.base.} = (discard)
proc isNegotiated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).isNegotiated().encode(r_ret)
template isNegotiated_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = isNegotiated

method getBufferedAmount*(self: WebRTCDataChannelExtension): int32 {.base.} = (discard)
proc getBufferedAmount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRTCDataChannelExtension](p_instance).getBufferedAmount().encode(r_ret)
template getBufferedAmount_bind*(_: typedesc[WebRTCDataChannelExtension]): ClassCallVirtual = getBufferedAmount

const WebRTCDataChannelExtension_vmap =
  WebRTCDataChannel.vmap.concat toTable {
    "getpacket" : "_get_packet",
    "putpacket" : "_put_packet",
    "getavailablepacketcount" : "_get_available_packet_count",
    "getmaxpacketsize" : "_get_max_packet_size",
    "poll" : "_poll",
    "close" : "_close",
    "setwritemode" : "_set_write_mode",
    "getwritemode" : "_get_write_mode",
    "wasstringpacket" : "_was_string_packet",
    "getreadystate" : "_get_ready_state",
    "getlabel" : "_get_label",
    "isordered" : "_is_ordered",
    "getid" : "_get_id",
    "getmaxpacketlifetime" : "_get_max_packet_life_time",
    "getmaxretransmits" : "_get_max_retransmits",
    "getprotocol" : "_get_protocol",
    "isnegotiated" : "_is_negotiated",
    "getbufferedamount" : "_get_buffered_amount",
    }
template vmap*(_: typedesc[WebRTCDataChannelExtension]): Table[string, string] = WebRTCDataChannelExtension_vmap