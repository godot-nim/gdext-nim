{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmultiplayerpeer; export gdmultiplayerpeer

expandOnClassImported(WebSocketMultiplayerPeer, MultiplayerPeer)

proc createClient*(self: WebSocketMultiplayerPeer; url: String; tlsClientOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "create_client", 1966198364)
  methodbind.ptrcall(self, [getPtr url, getPtr tlsClientOptions], Error)

proc createServer*(self: WebSocketMultiplayerPeer; port: int32; bindAddress: String = newGdString("*"); tlsServerOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "create_server", 2400822951)
  methodbind.ptrcall(self, [getPtr port, getPtr bindAddress, getPtr tlsServerOptions], Error)

proc getPeer*(self: WebSocketMultiplayerPeer; peerId: int32): gdref WebSocketPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_peer", 1381378851)
  methodbind.ptrcall(self, [getPtr peerId], gdref WebSocketPeer)

proc getPeerAddress*(self: WebSocketMultiplayerPeer; id: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_peer_address", 844755477)
  methodbind.ptrcall(self, [getPtr id], String)

proc getPeerPort*(self: WebSocketMultiplayerPeer; id: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_peer_port", 923996154)
  methodbind.ptrcall(self, [getPtr id], int32)

proc getSupportedProtocols*(self: WebSocketMultiplayerPeer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_supported_protocols", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setSupportedProtocols*(self: WebSocketMultiplayerPeer; protocols: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_supported_protocols", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols], void)

proc getHandshakeHeaders*(self: WebSocketMultiplayerPeer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_handshake_headers", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setHandshakeHeaders*(self: WebSocketMultiplayerPeer; protocols: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_handshake_headers", 4015028928)
  methodbind.ptrcall(self, [getPtr protocols], void)

proc getInboundBufferSize*(self: WebSocketMultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_inbound_buffer_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setInboundBufferSize*(self: WebSocketMultiplayerPeer; bufferSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_inbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize], void)

proc getOutboundBufferSize*(self: WebSocketMultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_outbound_buffer_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOutboundBufferSize*(self: WebSocketMultiplayerPeer; bufferSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_outbound_buffer_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bufferSize], void)

proc getHandshakeTimeout*(self: WebSocketMultiplayerPeer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_handshake_timeout", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHandshakeTimeout*(self: WebSocketMultiplayerPeer; timeout: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_handshake_timeout", 373806689)
  methodbind.ptrcall(self, [getPtr timeout], void)

proc setMaxQueuedPackets*(self: WebSocketMultiplayerPeer; maxQueuedPackets: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "set_max_queued_packets", 1286410249)
  methodbind.ptrcall(self, [getPtr maxQueuedPackets], void)

proc getMaxQueuedPackets*(self: WebSocketMultiplayerPeer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebSocketMultiplayerPeer, "get_max_queued_packets", 3905245786)
  methodbind.ptrcall(self, [], int32)

template supportedProtocols*(self: WebSocketMultiplayerPeer): untyped = self.getSupportedProtocols()
template `supportedProtocols=`*(self: WebSocketMultiplayerPeer; value) = self.setSupportedProtocols(value)

template handshakeHeaders*(self: WebSocketMultiplayerPeer): untyped = self.getHandshakeHeaders()
template `handshakeHeaders=`*(self: WebSocketMultiplayerPeer; value) = self.setHandshakeHeaders(value)

template inboundBufferSize*(self: WebSocketMultiplayerPeer): untyped = self.getInboundBufferSize()
template `inboundBufferSize=`*(self: WebSocketMultiplayerPeer; value) = self.setInboundBufferSize(value)

template outboundBufferSize*(self: WebSocketMultiplayerPeer): untyped = self.getOutboundBufferSize()
template `outboundBufferSize=`*(self: WebSocketMultiplayerPeer; value) = self.setOutboundBufferSize(value)

template handshakeTimeout*(self: WebSocketMultiplayerPeer): untyped = self.getHandshakeTimeout()
template `handshakeTimeout=`*(self: WebSocketMultiplayerPeer; value) = self.setHandshakeTimeout(value)

template maxQueuedPackets*(self: WebSocketMultiplayerPeer): untyped = self.getMaxQueuedPackets()
template `maxQueuedPackets=`*(self: WebSocketMultiplayerPeer; value) = self.setMaxQueuedPackets(value)
