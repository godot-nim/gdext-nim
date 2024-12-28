{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc poll*(self: WebRTCDataChannel): Error =
  expandMethodBind(className WebRTCDataChannel, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: WebRTCDataChannel): void =
  expandMethodBind(className WebRTCDataChannel, "close", 3218959716)
  methodbind.ptrcall(self, [])

proc wasStringPacket*(self: WebRTCDataChannel): bool =
  expandMethodBind(className WebRTCDataChannel, "was_string_packet", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWriteMode*(self: WebRTCDataChannel; writeMode: WebRTCDataChannel_WriteMode): void =
  expandMethodBind(className WebRTCDataChannel, "set_write_mode", 1999768052)
  methodbind.ptrcall(self, [getPtr writeMode])

proc getWriteMode*(self: WebRTCDataChannel): WebRTCDataChannel_WriteMode =
  expandMethodBind(className WebRTCDataChannel, "get_write_mode", 2848495172)
  var ret: encoded WebRTCDataChannel_WriteMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebRTCDataChannel_WriteMode)

proc getReadyState*(self: WebRTCDataChannel): WebRTCDataChannel_ChannelState =
  expandMethodBind(className WebRTCDataChannel, "get_ready_state", 3501143017)
  var ret: encoded WebRTCDataChannel_ChannelState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebRTCDataChannel_ChannelState)

proc getLabel*(self: WebRTCDataChannel): String =
  expandMethodBind(className WebRTCDataChannel, "get_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isOrdered*(self: WebRTCDataChannel): bool =
  expandMethodBind(className WebRTCDataChannel, "is_ordered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getId*(self: WebRTCDataChannel): int32 =
  expandMethodBind(className WebRTCDataChannel, "get_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getMaxPacketLifeTime*(self: WebRTCDataChannel): int32 =
  expandMethodBind(className WebRTCDataChannel, "get_max_packet_life_time", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getMaxRetransmits*(self: WebRTCDataChannel): int32 =
  expandMethodBind(className WebRTCDataChannel, "get_max_retransmits", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getProtocol*(self: WebRTCDataChannel): String =
  expandMethodBind(className WebRTCDataChannel, "get_protocol", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isNegotiated*(self: WebRTCDataChannel): bool =
  expandMethodBind(className WebRTCDataChannel, "is_negotiated", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getBufferedAmount*(self: WebRTCDataChannel): int32 =
  expandMethodBind(className WebRTCDataChannel, "get_buffered_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

template writeMode*(self: WebRTCDataChannel): untyped = self.getWriteMode()
template `writeMode=`*(self: WebRTCDataChannel; value) = self.setWriteMode(value)

const WebRTCDataChannel_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebRTCDataChannel]): Table[string, string] = WebRTCDataChannel_vmap