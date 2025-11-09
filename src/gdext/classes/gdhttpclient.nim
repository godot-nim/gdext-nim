{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(HTTPClient, RefCounted)

proc connectToHost*(self: HTTPClient; host: String; port: int32 = -1; tlsOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "connect_to_host", 504540374)
  methodbind.ptrcall(self, [getPtr host, getPtr port, getPtr tlsOptions], Error)

proc setConnection*(self: HTTPClient; connection: gdref StreamPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "set_connection", 3281897016)
  methodbind.ptrcall(self, [getPtr connection], void)

proc getConnection*(self: HTTPClient): gdref StreamPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_connection", 2741655269)
  methodbind.ptrcall(self, [], gdref StreamPeer)

proc requestRaw*(self: HTTPClient; `method`: HTTPClient_Method; url: String; headers: PackedStringArray; body: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "request_raw", 540161961)
  methodbind.ptrcall(self, [getPtr `method`, getPtr url, getPtr headers, getPtr body], Error)

proc request*(self: HTTPClient; `method`: HTTPClient_Method; url: String; headers: PackedStringArray; body: String = newGdString()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "request", 3778990155)
  methodbind.ptrcall(self, [getPtr `method`, getPtr url, getPtr headers, getPtr body], Error)

proc close*(self: HTTPClient): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "close", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hasResponse*(self: HTTPClient): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "has_response", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isResponseChunked*(self: HTTPClient): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "is_response_chunked", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getResponseCode*(self: HTTPClient): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_response_code", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getResponseHeaders*(self: HTTPClient): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_response_headers", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getResponseHeadersAsDictionary*(self: HTTPClient): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_response_headers_as_dictionary", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc getResponseBodyLength*(self: HTTPClient): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_response_body_length", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc readResponseBodyChunk*(self: HTTPClient): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "read_response_body_chunk", 2115431945)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setReadChunkSize*(self: HTTPClient; bytes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "set_read_chunk_size", 1286410249)
  methodbind.ptrcall(self, [getPtr bytes], void)

proc getReadChunkSize*(self: HTTPClient): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_read_chunk_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBlockingMode*(self: HTTPClient; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "set_blocking_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isBlockingModeEnabled*(self: HTTPClient): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "is_blocking_mode_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getStatus*(self: HTTPClient): HTTPClient_Status =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "get_status", 1426656811)
  methodbind.ptrcall(self, [], HTTPClient_Status)

proc poll*(self: HTTPClient): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "poll", 166280745)
  methodbind.ptrcall(self, [], Error)

proc setHttpProxy*(self: HTTPClient; host: String; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "set_http_proxy", 2956805083)
  methodbind.ptrcall(self, [getPtr host, getPtr port], void)

proc setHttpsProxy*(self: HTTPClient; host: String; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "set_https_proxy", 2956805083)
  methodbind.ptrcall(self, [getPtr host, getPtr port], void)

proc queryStringFromDict*(self: HTTPClient; fields: Dictionary): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPClient, "query_string_from_dict", 2538086567)
  methodbind.ptrcall(self, [getPtr fields], String)

template blockingModeEnabled*(self: HTTPClient): untyped = self.isBlockingModeEnabled()
template `blockingModeEnabled=`*(self: HTTPClient; value) = self.setBlockingMode(value)

template connection*(self: HTTPClient): untyped = self.getConnection()
template `connection=`*(self: HTTPClient; value) = self.setConnection(value)

template readChunkSize*(self: HTTPClient): untyped = self.getReadChunkSize()
template `readChunkSize=`*(self: HTTPClient; value) = self.setReadChunkSize(value)
