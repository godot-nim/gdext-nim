{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(WebSocketPeer, PacketPeer)

proc connectToUrl*(self: WebSocketPeer; url: String; tlsClientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "connect_to_url", 1966198364)
  methodbind.ptrcall(self, [getPtr url, getPtr tlsClientOptions], Error)

proc acceptStream*(self: WebSocketPeer; stream: gdref StreamPeer): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "accept_stream", 255125695)
  methodbind.ptrcall(self, [getPtr stream], Error)

proc send*(self: WebSocketPeer; message: PackedByteArray; writeMode: WebSocketPeer_WriteMode = writeModeBinary): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "send", 2780360567)
  methodbind.ptrcall(self, [getPtr message, getPtr writeMode], Error)

proc sendText*(self: WebSocketPeer; message: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "send_text", 166001499)
  methodbind.ptrcall(self, [getPtr message], Error)

proc wasStringPacket*(self: WebSocketPeer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "was_string_packet", 36873697)
  methodbind.ptrcall(self, [], bool)

proc poll*(self: WebSocketPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "poll", 3218959716)
  methodbind.ptrcall(self, [], void)

proc close*(self: WebSocketPeer; code: int32 = 1000; reason: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "close", 1047156615)
  methodbind.ptrcall(self, [getPtr code, getPtr reason], void)

proc getConnectedHost*(self: WebSocketPeer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_connected_host", 201670096)
  methodbind.ptrcall(self, [], String)

proc getConnectedPort*(self: WebSocketPeer): uint16 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_connected_port", 3905245786)
  methodbind.ptrcall(self, [], uint16)

proc getSelectedProtocol*(self: WebSocketPeer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_selected_protocol", 201670096)
  methodbind.ptrcall(self, [], String)

proc getRequestedUrl*(self: WebSocketPeer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_requested_url", 201670096)
  methodbind.ptrcall(self, [], String)

proc setNoDelay*(self: WebSocketPeer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_no_delay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCurrentOutboundBufferedAmount*(self: WebSocketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_current_outbound_buffered_amount", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getReadyState*(self: WebSocketPeer): WebSocketPeer_State =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_ready_state", 346482985)
  methodbind.ptrcall(self, [], WebSocketPeer_State)

proc getCloseCode*(self: WebSocketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_close_code", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCloseReason*(self: WebSocketPeer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_close_reason", 201670096)
  methodbind.ptrcall(self, [], String)

proc getSupportedProtocols*(self: WebSocketPeer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_supported_protocols", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setSupportedProtocols*(self: WebSocketPeer; protocols: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_supported_protocols", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols], void)

proc getHandshakeHeaders*(self: WebSocketPeer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_handshake_headers", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setHandshakeHeaders*(self: WebSocketPeer; protocols: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_handshake_headers", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols], void)

proc getInboundBufferSize*(self: WebSocketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_inbound_buffer_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInboundBufferSize*(self: WebSocketPeer; bufferSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_inbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize], void)

proc getOutboundBufferSize*(self: WebSocketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_outbound_buffer_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutboundBufferSize*(self: WebSocketPeer; bufferSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_outbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize], void)

proc setMaxQueuedPackets*(self: WebSocketPeer; bufferSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_max_queued_packets", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize], void)

proc getMaxQueuedPackets*(self: WebSocketPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_max_queued_packets", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHeartbeatInterval*(self: WebSocketPeer; interval: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "set_heartbeat_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval], void)

proc getHeartbeatInterval*(self: WebSocketPeer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketPeer, "get_heartbeat_interval", 1740695150)
  methodbind.ptrcall(self, [], float64)

template supportedProtocols*(self: WebSocketPeer): untyped = self.getSupportedProtocols()
template `supportedProtocols=`*(self: WebSocketPeer; value) = self.setSupportedProtocols(value)

template handshakeHeaders*(self: WebSocketPeer): untyped = self.getHandshakeHeaders()
template `handshakeHeaders=`*(self: WebSocketPeer; value) = self.setHandshakeHeaders(value)

template inboundBufferSize*(self: WebSocketPeer): untyped = self.getInboundBufferSize()
template `inboundBufferSize=`*(self: WebSocketPeer; value) = self.setInboundBufferSize(value)

template outboundBufferSize*(self: WebSocketPeer): untyped = self.getOutboundBufferSize()
template `outboundBufferSize=`*(self: WebSocketPeer; value) = self.setOutboundBufferSize(value)

template maxQueuedPackets*(self: WebSocketPeer): untyped = self.getMaxQueuedPackets()
template `maxQueuedPackets=`*(self: WebSocketPeer; value) = self.setMaxQueuedPackets(value)

template heartbeatInterval*(self: WebSocketPeer): untyped = self.getHeartbeatInterval()
template `heartbeatInterval=`*(self: WebSocketPeer; value) = self.setHeartbeatInterval(value)
