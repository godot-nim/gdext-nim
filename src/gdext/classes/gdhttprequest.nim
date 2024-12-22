{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc request*(self: HTTPRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HTTPClient_Method = methodGet; requestData: String = gdstring""): Error =
  expandMethodBind(className HTTPRequest, "request", 3215244323)
  var `?param` = [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestData]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc requestRaw*(self: HTTPRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HTTPClient_Method = methodGet; requestDataRaw: PackedByteArray = PackedByteArray()): Error =
  expandMethodBind(className HTTPRequest, "request_raw", 2714829993)
  var `?param` = [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestDataRaw]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc cancelRequest*(self: HTTPRequest): void =
  expandMethodBind(className HTTPRequest, "cancel_request", 3218959716)
  methodbind.ptrcall(self, nil)

proc setTlsOptions*(self: HTTPRequest; clientOptions: gdref TLSOptions): void =
  expandMethodBind(className HTTPRequest, "set_tls_options", 2210231844)
  var `?param` = [getPtr clientOptions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHttpClientStatus*(self: HTTPRequest): HTTPClient_Status =
  expandMethodBind(className HTTPRequest, "get_http_client_status", 1426656811)
  var ret: encoded HTTPClient_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HTTPClient_Status)

proc setUseThreads*(self: HTTPRequest; enable: bool): void =
  expandMethodBind(className HTTPRequest, "set_use_threads", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingThreads*(self: HTTPRequest): bool =
  expandMethodBind(className HTTPRequest, "is_using_threads", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAcceptGzip*(self: HTTPRequest; enable: bool): void =
  expandMethodBind(className HTTPRequest, "set_accept_gzip", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAcceptingGzip*(self: HTTPRequest): bool =
  expandMethodBind(className HTTPRequest, "is_accepting_gzip", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBodySizeLimit*(self: HTTPRequest; bytes: int32): void =
  expandMethodBind(className HTTPRequest, "set_body_size_limit", 1286410249)
  var `?param` = [getPtr bytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodySizeLimit*(self: HTTPRequest): int32 =
  expandMethodBind(className HTTPRequest, "get_body_size_limit", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxRedirects*(self: HTTPRequest; amount: int32): void =
  expandMethodBind(className HTTPRequest, "set_max_redirects", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxRedirects*(self: HTTPRequest): int32 =
  expandMethodBind(className HTTPRequest, "get_max_redirects", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDownloadFile*(self: HTTPRequest; path: String): void =
  expandMethodBind(className HTTPRequest, "set_download_file", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDownloadFile*(self: HTTPRequest): String =
  expandMethodBind(className HTTPRequest, "get_download_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDownloadedBytes*(self: HTTPRequest): int32 =
  expandMethodBind(className HTTPRequest, "get_downloaded_bytes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBodySize*(self: HTTPRequest): int32 =
  expandMethodBind(className HTTPRequest, "get_body_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTimeout*(self: HTTPRequest; timeout: float64): void =
  expandMethodBind(className HTTPRequest, "set_timeout", 373806689)
  var `?param` = [getPtr timeout]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeout*(self: HTTPRequest): float64 =
  expandMethodBind(className HTTPRequest, "get_timeout", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDownloadChunkSize*(self: HTTPRequest; chunkSize: int32): void =
  expandMethodBind(className HTTPRequest, "set_download_chunk_size", 1286410249)
  var `?param` = [getPtr chunkSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDownloadChunkSize*(self: HTTPRequest): int32 =
  expandMethodBind(className HTTPRequest, "get_download_chunk_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHttpProxy*(self: HTTPRequest; host: String; port: int32): void =
  expandMethodBind(className HTTPRequest, "set_http_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHttpsProxy*(self: HTTPRequest; host: String; port: int32): void =
  expandMethodBind(className HTTPRequest, "set_https_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

template downloadFile*(self: HTTPRequest): untyped = self.getDownloadFile()
template `downloadFile=`*(self: HTTPRequest; value) = self.setDownloadFile(value)

template downloadChunkSize*(self: HTTPRequest): untyped = self.getDownloadChunkSize()
template `downloadChunkSize=`*(self: HTTPRequest; value) = self.setDownloadChunkSize(value)

template useThreads*(self: HTTPRequest): untyped = self.isUsingThreads()
template `useThreads=`*(self: HTTPRequest; value) = self.setUseThreads(value)

template acceptGzip*(self: HTTPRequest): untyped = self.isAcceptingGzip()
template `acceptGzip=`*(self: HTTPRequest; value) = self.setAcceptGzip(value)

template bodySizeLimit*(self: HTTPRequest): untyped = self.getBodySizeLimit()
template `bodySizeLimit=`*(self: HTTPRequest; value) = self.setBodySizeLimit(value)

template maxRedirects*(self: HTTPRequest): untyped = self.getMaxRedirects()
template `maxRedirects=`*(self: HTTPRequest; value) = self.setMaxRedirects(value)

template timeout*(self: HTTPRequest): untyped = self.getTimeout()
template `timeout=`*(self: HTTPRequest; value) = self.setTimeout(value)

const HTTPRequest_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HTTPRequest]): Table[string, string] = HTTPRequest_vmap

proc requestCompleted*(self: HTTPRequest; retval: Variant; responseCode: Variant; headers: Variant; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_completed")
  let args = [retval, responseCode, headers, body]
  self.emitSignal(signalname, args)