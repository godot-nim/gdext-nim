{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwebrtcdatachannel; export gdwebrtcdatachannel

method getPacket*(self: WebRtcDataChannelExtension; rBuffer: ptr ptr uint8; rBufferSize: ptr int32): Error {.base.} = (discard)
proc getPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getPacket(p_args[0].decode(ptr ptr uint8), p_args[1].decode(ptr int32)).encode(r_ret)
template getPacket_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getPacket

method putPacket*(self: WebRtcDataChannelExtension; pBuffer: ptr uint8; pBufferSize: int32): Error {.base.} = (discard)
proc putPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).putPacket(p_args[0].decode(ptr uint8), p_args[1].decode(int32)).encode(r_ret)
template putPacket_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = putPacket

method getAvailablePacketCount*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getAvailablePacketCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getAvailablePacketCount().encode(r_ret)
template getAvailablePacketCount_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getAvailablePacketCount

method getMaxPacketSize*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getMaxPacketSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getMaxPacketSize().encode(r_ret)
template getMaxPacketSize_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getMaxPacketSize

method poll*(self: WebRtcDataChannelExtension): Error {.base.} = (discard)
proc poll(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).poll().encode(r_ret)
template poll_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = poll

method close*(self: WebRtcDataChannelExtension): void {.base.} = (discard)
proc close(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).close()
template close_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = close

method setWriteMode*(self: WebRtcDataChannelExtension; pWriteMode: WebRtcDataChannel_WriteMode): void {.base.} = (discard)
proc setWriteMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).setWriteMode(p_args[0].decode(WebRtcDataChannel_WriteMode))
template setWriteMode_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = setWriteMode

method getWriteMode*(self: WebRtcDataChannelExtension): WebRtcDataChannel_WriteMode {.base.} = (discard)
proc getWriteMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getWriteMode().encode(r_ret)
template getWriteMode_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getWriteMode

method wasStringPacket*(self: WebRtcDataChannelExtension): bool {.base.} = (discard)
proc wasStringPacket(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).wasStringPacket().encode(r_ret)
template wasStringPacket_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = wasStringPacket

method getReadyState*(self: WebRtcDataChannelExtension): WebRtcDataChannel_ChannelState {.base.} = (discard)
proc getReadyState(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getReadyState().encode(r_ret)
template getReadyState_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getReadyState

method getLabel*(self: WebRtcDataChannelExtension): String {.base.} = (discard)
proc getLabel(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getLabel().encode(r_ret)
template getLabel_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getLabel

method isOrdered*(self: WebRtcDataChannelExtension): bool {.base.} = (discard)
proc isOrdered(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).isOrdered().encode(r_ret)
template isOrdered_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = isOrdered

method getId*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getId().encode(r_ret)
template getId_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getId

method getMaxPacketLifeTime*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getMaxPacketLifeTime(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getMaxPacketLifeTime().encode(r_ret)
template getMaxPacketLifeTime_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getMaxPacketLifeTime

method getMaxRetransmits*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getMaxRetransmits(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getMaxRetransmits().encode(r_ret)
template getMaxRetransmits_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getMaxRetransmits

method getProtocol*(self: WebRtcDataChannelExtension): String {.base.} = (discard)
proc getProtocol(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getProtocol().encode(r_ret)
template getProtocol_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getProtocol

method isNegotiated*(self: WebRtcDataChannelExtension): bool {.base.} = (discard)
proc isNegotiated(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).isNegotiated().encode(r_ret)
template isNegotiated_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = isNegotiated

method getBufferedAmount*(self: WebRtcDataChannelExtension): int32 {.base.} = (discard)
proc getBufferedAmount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[WebRtcDataChannelExtension](p_instance).getBufferedAmount().encode(r_ret)
template getBufferedAmount_bind*(_: typedesc[WebRtcDataChannelExtension]): ClassCallVirtual = getBufferedAmount

const WebRtcDataChannelExtension_vmap =
  WebRtcDataChannel.vmap.concat toTable {
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
template vmap*(_: typedesc[WebRtcDataChannelExtension]): Table[string, string] = WebRtcDataChannelExtension_vmap