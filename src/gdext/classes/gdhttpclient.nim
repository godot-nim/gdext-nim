{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc connectToHost*(self: HTTPClient; host: String; port: int32 = -1; tlsOptions: gdref TLSOptions = default gdref TLSOptions): Error =
  expandMethodBind(className HTTPClient, "connect_to_host", 504540374)
  var `?param` = [getPtr host, getPtr port, getPtr tlsOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setConnection*(self: HTTPClient; connection: gdref StreamPeer): void =
  expandMethodBind(className HTTPClient, "set_connection", 3281897016)
  var `?param` = [getPtr connection]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnection*(self: HTTPClient): gdref StreamPeer =
  expandMethodBind(className HTTPClient, "get_connection", 2741655269)
  var ret: encoded gdref StreamPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeer)

proc requestRaw*(self: HTTPClient; `method`: HTTPClient_Method; url: String; headers: PackedStringArray; body: PackedByteArray): Error =
  expandMethodBind(className HTTPClient, "request_raw", 540161961)
  var `?param` = [getPtr `method`, getPtr url, getPtr headers, getPtr body]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc request*(self: HTTPClient; `method`: HTTPClient_Method; url: String; headers: PackedStringArray; body: String = gdstring""): Error =
  expandMethodBind(className HTTPClient, "request", 3778990155)
  var `?param` = [getPtr `method`, getPtr url, getPtr headers, getPtr body]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: HTTPClient): void =
  expandMethodBind(className HTTPClient, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc hasResponse*(self: HTTPClient): bool =
  expandMethodBind(className HTTPClient, "has_response", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isResponseChunked*(self: HTTPClient): bool =
  expandMethodBind(className HTTPClient, "is_response_chunked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getResponseCode*(self: HTTPClient): int32 =
  expandMethodBind(className HTTPClient, "get_response_code", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getResponseHeaders*(self: HTTPClient): PackedStringArray =
  expandMethodBind(className HTTPClient, "get_response_headers", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getResponseHeadersAsDictionary*(self: HTTPClient): Dictionary =
  expandMethodBind(className HTTPClient, "get_response_headers_as_dictionary", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getResponseBodyLength*(self: HTTPClient): int64 =
  expandMethodBind(className HTTPClient, "get_response_body_length", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc readResponseBodyChunk*(self: HTTPClient): PackedByteArray =
  expandMethodBind(className HTTPClient, "read_response_body_chunk", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setReadChunkSize*(self: HTTPClient; bytes: int32): void =
  expandMethodBind(className HTTPClient, "set_read_chunk_size", 1286410249)
  var `?param` = [getPtr bytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReadChunkSize*(self: HTTPClient): int32 =
  expandMethodBind(className HTTPClient, "get_read_chunk_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBlockingMode*(self: HTTPClient; enabled: bool): void =
  expandMethodBind(className HTTPClient, "set_blocking_mode", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBlockingModeEnabled*(self: HTTPClient): bool =
  expandMethodBind(className HTTPClient, "is_blocking_mode_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getStatus*(self: HTTPClient): HTTPClient_Status =
  expandMethodBind(className HTTPClient, "get_status", 1426656811)
  var ret: encoded HTTPClient_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HTTPClient_Status)

proc poll*(self: HTTPClient): Error =
  expandMethodBind(className HTTPClient, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc setHttpProxy*(self: HTTPClient; host: String; port: int32): void =
  expandMethodBind(className HTTPClient, "set_http_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHttpsProxy*(self: HTTPClient; host: String; port: int32): void =
  expandMethodBind(className HTTPClient, "set_https_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc queryStringFromDict*(self: HTTPClient; fields: Dictionary): String =
  expandMethodBind(className HTTPClient, "query_string_from_dict", 2538086567)
  var `?param` = [getPtr fields]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

template blockingModeEnabled*(self: HTTPClient): untyped = self.isBlockingModeEnabled()
template `blockingModeEnabled=`*(self: HTTPClient; value) = self.setBlockingMode(value)

template connection*(self: HTTPClient): untyped = self.getConnection()
template `connection=`*(self: HTTPClient; value) = self.setConnection(value)

template readChunkSize*(self: HTTPClient): untyped = self.getReadChunkSize()
template `readChunkSize=`*(self: HTTPClient; value) = self.setReadChunkSize(value)

const HTTPClient_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HTTPClient]): Table[string, string] = HTTPClient_vmap