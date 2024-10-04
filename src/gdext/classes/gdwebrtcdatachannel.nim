{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc poll*(self: WebRtcDataChannel): Error =
  expandMethodBind(className WebRtcDataChannel, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc close*(self: WebRtcDataChannel): void =
  expandMethodBind(className WebRtcDataChannel, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc wasStringPacket*(self: WebRtcDataChannel): bool =
  expandMethodBind(className WebRtcDataChannel, "was_string_packet", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setWriteMode*(self: WebRtcDataChannel; writeMode: WebRtcDataChannel_WriteMode): void =
  expandMethodBind(className WebRtcDataChannel, "set_write_mode", 1999768052)
  var `?param` = [getPtr writeMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWriteMode*(self: WebRtcDataChannel): WebRtcDataChannel_WriteMode =
  expandMethodBind(className WebRtcDataChannel, "get_write_mode", 2848495172)
  var ret: encoded WebRtcDataChannel_WriteMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(WebRtcDataChannel_WriteMode)

proc getReadyState*(self: WebRtcDataChannel): WebRtcDataChannel_ChannelState =
  expandMethodBind(className WebRtcDataChannel, "get_ready_state", 3501143017)
  var ret: encoded WebRtcDataChannel_ChannelState
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(WebRtcDataChannel_ChannelState)

proc getLabel*(self: WebRtcDataChannel): String =
  expandMethodBind(className WebRtcDataChannel, "get_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isOrdered*(self: WebRtcDataChannel): bool =
  expandMethodBind(className WebRtcDataChannel, "is_ordered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getId*(self: WebRtcDataChannel): int32 =
  expandMethodBind(className WebRtcDataChannel, "get_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getMaxPacketLifeTime*(self: WebRtcDataChannel): int32 =
  expandMethodBind(className WebRtcDataChannel, "get_max_packet_life_time", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getMaxRetransmits*(self: WebRtcDataChannel): int32 =
  expandMethodBind(className WebRtcDataChannel, "get_max_retransmits", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getProtocol*(self: WebRtcDataChannel): String =
  expandMethodBind(className WebRtcDataChannel, "get_protocol", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isNegotiated*(self: WebRtcDataChannel): bool =
  expandMethodBind(className WebRtcDataChannel, "is_negotiated", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getBufferedAmount*(self: WebRtcDataChannel): int32 =
  expandMethodBind(className WebRtcDataChannel, "get_buffered_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template writeMode*(self: WebRtcDataChannel): untyped = self.getWriteMode()
template `writeMode=`*(self: WebRtcDataChannel; value) = self.setWriteMode(value)

const WebRtcDataChannel_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRtcDataChannel]): Table[string, string] = WebRtcDataChannel_vmap