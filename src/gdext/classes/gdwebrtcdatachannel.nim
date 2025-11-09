{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(WebRTCDataChannel, PacketPeer)

proc poll*(self: WebRTCDataChannel): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc close*(self: WebRTCDataChannel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc wasStringPacket*(self: WebRTCDataChannel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "was_string_packet", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setWriteMode*(self: WebRTCDataChannel; writeMode: WebRTCDataChannel_WriteMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "set_write_mode", 1999768052)
  methodbind.ptrcall(self, [getPtr writeMode], void)

proc getWriteMode*(self: WebRTCDataChannel): WebRTCDataChannel_WriteMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_write_mode", 2848495172)
  methodbind.ptrcall(self, [], WebRTCDataChannel_WriteMode)

proc getReadyState*(self: WebRTCDataChannel): WebRTCDataChannel_ChannelState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_ready_state", 3501143017)
  methodbind.ptrcall(self, [], WebRTCDataChannel_ChannelState)

proc getLabel*(self: WebRTCDataChannel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_label", 201670096)
  methodbind.ptrcall(self, [], String)

proc isOrdered*(self: WebRTCDataChannel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "is_ordered", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getId*(self: WebRTCDataChannel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getMaxPacketLifeTime*(self: WebRTCDataChannel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_max_packet_life_time", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getMaxRetransmits*(self: WebRTCDataChannel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_max_retransmits", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getProtocol*(self: WebRTCDataChannel): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_protocol", 201670096)
  methodbind.ptrcall(self, [], String)

proc isNegotiated*(self: WebRTCDataChannel): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "is_negotiated", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getBufferedAmount*(self: WebRTCDataChannel): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebRTCDataChannel, "get_buffered_amount", 3905245786)
  methodbind.ptrcall(self, [], int32)

template writeMode*(self: WebRTCDataChannel): untyped = self.getWriteMode()
template `writeMode=`*(self: WebRTCDataChannel; value) = self.setWriteMode(value)
