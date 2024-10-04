{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc connectToHost*(self: HttpClient; host: String; port: int32 = -1; tlsOptions: gdref TlsOptions = default gdref TlsOptions): Error =
  expandMethodBind(className HttpClient, "connect_to_host", 504540374)
  var `?param` = [getPtr host, getPtr port, getPtr tlsOptions]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc setConnection*(self: HttpClient; connection: gdref StreamPeer): void =
  expandMethodBind(className HttpClient, "set_connection", 3281897016)
  var `?param` = [getPtr connection]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConnection*(self: HttpClient): gdref StreamPeer =
  expandMethodBind(className HttpClient, "get_connection", 2741655269)
  var ret: encoded gdref StreamPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeer)

proc requestRaw*(self: HttpClient; `method`: HttpClient_Method; url: String; headers: PackedStringArray; body: PackedByteArray): Error =
  expandMethodBind(className HttpClient, "request_raw", 540161961)
  var `?param` = [getPtr `method`, getPtr url, getPtr headers, getPtr body]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc request*(self: HttpClient; `method`: HttpClient_Method; url: String; headers: PackedStringArray; body: String = gdstring""): Error =
  expandMethodBind(className HttpClient, "request", 3778990155)
  var `?param` = [getPtr `method`, getPtr url, getPtr headers, getPtr body]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc close*(self: HttpClient): void =
  expandMethodBind(className HttpClient, "close", 3218959716)
  methodbind.ptrcall(self, nil)

proc hasResponse*(self: HttpClient): bool =
  expandMethodBind(className HttpClient, "has_response", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isResponseChunked*(self: HttpClient): bool =
  expandMethodBind(className HttpClient, "is_response_chunked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getResponseCode*(self: HttpClient): int32 =
  expandMethodBind(className HttpClient, "get_response_code", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getResponseHeaders*(self: HttpClient): PackedStringArray =
  expandMethodBind(className HttpClient, "get_response_headers", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getResponseHeadersAsDictionary*(self: HttpClient): Dictionary =
  expandMethodBind(className HttpClient, "get_response_headers_as_dictionary", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getResponseBodyLength*(self: HttpClient): int64 =
  expandMethodBind(className HttpClient, "get_response_body_length", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc readResponseBodyChunk*(self: HttpClient): PackedByteArray =
  expandMethodBind(className HttpClient, "read_response_body_chunk", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setReadChunkSize*(self: HttpClient; bytes: int32): void =
  expandMethodBind(className HttpClient, "set_read_chunk_size", 1286410249)
  var `?param` = [getPtr bytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReadChunkSize*(self: HttpClient): int32 =
  expandMethodBind(className HttpClient, "get_read_chunk_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBlockingMode*(self: HttpClient; enabled: bool): void =
  expandMethodBind(className HttpClient, "set_blocking_mode", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBlockingModeEnabled*(self: HttpClient): bool =
  expandMethodBind(className HttpClient, "is_blocking_mode_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getStatus*(self: HttpClient): HttpClient_Status =
  expandMethodBind(className HttpClient, "get_status", 1426656811)
  var ret: encoded HttpClient_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HttpClient_Status)

proc poll*(self: HttpClient): Error =
  expandMethodBind(className HttpClient, "poll", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc setHttpProxy*(self: HttpClient; host: String; port: int32): void =
  expandMethodBind(className HttpClient, "set_http_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHttpsProxy*(self: HttpClient; host: String; port: int32): void =
  expandMethodBind(className HttpClient, "set_https_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc queryStringFromDict*(self: HttpClient; fields: Dictionary): String =
  expandMethodBind(className HttpClient, "query_string_from_dict", 2538086567)
  var `?param` = [getPtr fields]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

template blockingModeEnabled*(self: HttpClient): untyped = self.isBlockingModeEnabled()
template `blockingModeEnabled=`*(self: HttpClient; value) = self.setBlockingMode(value)

template connection*(self: HttpClient): untyped = self.getConnection()
template `connection=`*(self: HttpClient; value) = self.setConnection(value)

template readChunkSize*(self: HttpClient): untyped = self.getReadChunkSize()
template `readChunkSize=`*(self: HttpClient; value) = self.setReadChunkSize(value)

const HttpClient_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HttpClient]): Table[string, string] = HttpClient_vmap