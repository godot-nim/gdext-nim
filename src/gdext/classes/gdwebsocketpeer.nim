{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc connectToUrl*(self: WebSocketPeer; url: String; tlsClientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  expandMethodBind(className WebSocketPeer, "connect_to_url", 1966198364)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr url, getPtr tlsClientOptions], addr ret)
  (addr ret).decode_result(Error)

proc acceptStream*(self: WebSocketPeer; stream: gdref StreamPeer): Error =
  expandMethodBind(className WebSocketPeer, "accept_stream", 255125695)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr stream], addr ret)
  (addr ret).decode_result(Error)

proc send*(self: WebSocketPeer; message: PackedByteArray; writeMode: WebSocketPeer_WriteMode = writeModeBinary): Error =
  expandMethodBind(className WebSocketPeer, "send", 2780360567)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr message, getPtr writeMode], addr ret)
  (addr ret).decode_result(Error)

proc sendText*(self: WebSocketPeer; message: String): Error =
  expandMethodBind(className WebSocketPeer, "send_text", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr message], addr ret)
  (addr ret).decode_result(Error)

proc wasStringPacket*(self: WebSocketPeer): bool =
  expandMethodBind(className WebSocketPeer, "was_string_packet", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc poll*(self: WebSocketPeer): void =
  expandMethodBind(className WebSocketPeer, "poll", 3218959716)
  methodbind.ptrcall(self, [])

proc close*(self: WebSocketPeer; code: int32 = 1000; reason: String = gdstring""): void =
  expandMethodBind(className WebSocketPeer, "close", 1047156615)
  methodbind.ptrcall(self, [getPtr code, getPtr reason])

proc getConnectedHost*(self: WebSocketPeer): String =
  expandMethodBind(className WebSocketPeer, "get_connected_host", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getConnectedPort*(self: WebSocketPeer): uint16 =
  expandMethodBind(className WebSocketPeer, "get_connected_port", 3905245786)
  var ret: encoded uint16
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint16)

proc getSelectedProtocol*(self: WebSocketPeer): String =
  expandMethodBind(className WebSocketPeer, "get_selected_protocol", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getRequestedUrl*(self: WebSocketPeer): String =
  expandMethodBind(className WebSocketPeer, "get_requested_url", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setNoDelay*(self: WebSocketPeer; enabled: bool): void =
  expandMethodBind(className WebSocketPeer, "set_no_delay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getCurrentOutboundBufferedAmount*(self: WebSocketPeer): int32 =
  expandMethodBind(className WebSocketPeer, "get_current_outbound_buffered_amount", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getReadyState*(self: WebSocketPeer): WebSocketPeer_State =
  expandMethodBind(className WebSocketPeer, "get_ready_state", 346482985)
  var ret: encoded WebSocketPeer_State
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(WebSocketPeer_State)

proc getCloseCode*(self: WebSocketPeer): int32 =
  expandMethodBind(className WebSocketPeer, "get_close_code", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getCloseReason*(self: WebSocketPeer): String =
  expandMethodBind(className WebSocketPeer, "get_close_reason", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getSupportedProtocols*(self: WebSocketPeer): PackedStringArray =
  expandMethodBind(className WebSocketPeer, "get_supported_protocols", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setSupportedProtocols*(self: WebSocketPeer; protocols: PackedStringArray): void =
  expandMethodBind(className WebSocketPeer, "set_supported_protocols", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols])

proc getHandshakeHeaders*(self: WebSocketPeer): PackedStringArray =
  expandMethodBind(className WebSocketPeer, "get_handshake_headers", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setHandshakeHeaders*(self: WebSocketPeer; protocols: PackedStringArray): void =
  expandMethodBind(className WebSocketPeer, "set_handshake_headers", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols])

proc getInboundBufferSize*(self: WebSocketPeer): int32 =
  expandMethodBind(className WebSocketPeer, "get_inbound_buffer_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setInboundBufferSize*(self: WebSocketPeer; bufferSize: int32): void =
  expandMethodBind(className WebSocketPeer, "set_inbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize])

proc getOutboundBufferSize*(self: WebSocketPeer): int32 =
  expandMethodBind(className WebSocketPeer, "get_outbound_buffer_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setOutboundBufferSize*(self: WebSocketPeer; bufferSize: int32): void =
  expandMethodBind(className WebSocketPeer, "set_outbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize])

proc setMaxQueuedPackets*(self: WebSocketPeer; bufferSize: int32): void =
  expandMethodBind(className WebSocketPeer, "set_max_queued_packets", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize])

proc getMaxQueuedPackets*(self: WebSocketPeer): int32 =
  expandMethodBind(className WebSocketPeer, "get_max_queued_packets", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

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

const WebSocketPeer_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebSocketPeer]): Table[string, string] = WebSocketPeer_vmap