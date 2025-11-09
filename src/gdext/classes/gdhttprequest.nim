{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(HTTPRequest, Node)

proc request*(self: HTTPRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HTTPClient_Method = methodGet; requestData: String = newGdString()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "request", 3215244323)
  methodbind.ptrcall(self, [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestData], Error)

proc requestRaw*(self: HTTPRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HTTPClient_Method = methodGet; requestDataRaw: PackedByteArray = PackedByteArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "request_raw", 2714829993)
  methodbind.ptrcall(self, [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestDataRaw], Error)

proc cancelRequest*(self: HTTPRequest): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "cancel_request", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTlsOptions*(self: HTTPRequest; clientOptions: gdref TLSOptions): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_tls_options", 2210231844)
  methodbind.ptrcall(self, [getPtr clientOptions], void)

proc getHttpClientStatus*(self: HTTPRequest): HTTPClient_Status =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_http_client_status", 1426656811)
  methodbind.ptrcall(self, [], HTTPClient_Status)

proc setUseThreads*(self: HTTPRequest; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_use_threads", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingThreads*(self: HTTPRequest): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "is_using_threads", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAcceptGzip*(self: HTTPRequest; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_accept_gzip", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAcceptingGzip*(self: HTTPRequest): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "is_accepting_gzip", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBodySizeLimit*(self: HTTPRequest; bytes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_body_size_limit", 1286410249)
  methodbind.ptrcall(self, [getPtr bytes], void)

proc getBodySizeLimit*(self: HTTPRequest): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_body_size_limit", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxRedirects*(self: HTTPRequest; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_max_redirects", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getMaxRedirects*(self: HTTPRequest): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_max_redirects", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDownloadFile*(self: HTTPRequest; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_download_file", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc getDownloadFile*(self: HTTPRequest): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_download_file", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDownloadedBytes*(self: HTTPRequest): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_downloaded_bytes", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBodySize*(self: HTTPRequest): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_body_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTimeout*(self: HTTPRequest; timeout: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_timeout", 373806689)
  methodbind.ptrcall(self, [getPtr timeout], void)

proc getTimeout*(self: HTTPRequest): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_timeout", 191475506)
  methodbind.ptrcall(self, [], float64)

proc setDownloadChunkSize*(self: HTTPRequest; chunkSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_download_chunk_size", 1286410249)
  methodbind.ptrcall(self, [getPtr chunkSize], void)

proc getDownloadChunkSize*(self: HTTPRequest): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "get_download_chunk_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setHttpProxy*(self: HTTPRequest; host: String; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_http_proxy", 2956805083)
  methodbind.ptrcall(self, [getPtr host, getPtr port], void)

proc setHttpsProxy*(self: HTTPRequest; host: String; port: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className HTTPRequest, "set_https_proxy", 2956805083)
  methodbind.ptrcall(self, [getPtr host, getPtr port], void)

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
