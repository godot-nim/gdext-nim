{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc request*(self: HttpRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HttpClient_Method = methodGet; requestData: String = gdstring""): Error =
  expandMethodBind(className HttpRequest, "request", 3215244323)
  var `?param` = [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestData]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc requestRaw*(self: HttpRequest; url: String; customHeaders: PackedStringArray = PackedStringArray(); `method`: HttpClient_Method = methodGet; requestDataRaw: PackedByteArray = PackedByteArray()): Error =
  expandMethodBind(className HttpRequest, "request_raw", 2714829993)
  var `?param` = [getPtr url, getPtr customHeaders, getPtr `method`, getPtr requestDataRaw]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc cancelRequest*(self: HttpRequest): void =
  expandMethodBind(className HttpRequest, "cancel_request", 3218959716)
  methodbind.ptrcall(self, nil)

proc setTlsOptions*(self: HttpRequest; clientOptions: gdref TlsOptions): void =
  expandMethodBind(className HttpRequest, "set_tls_options", 2210231844)
  var `?param` = [getPtr clientOptions]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHttpClientStatus*(self: HttpRequest): HttpClient_Status =
  expandMethodBind(className HttpRequest, "get_http_client_status", 1426656811)
  var ret: encoded HttpClient_Status
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HttpClient_Status)

proc setUseThreads*(self: HttpRequest; enable: bool): void =
  expandMethodBind(className HttpRequest, "set_use_threads", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingThreads*(self: HttpRequest): bool =
  expandMethodBind(className HttpRequest, "is_using_threads", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAcceptGzip*(self: HttpRequest; enable: bool): void =
  expandMethodBind(className HttpRequest, "set_accept_gzip", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAcceptingGzip*(self: HttpRequest): bool =
  expandMethodBind(className HttpRequest, "is_accepting_gzip", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setBodySizeLimit*(self: HttpRequest; bytes: int32): void =
  expandMethodBind(className HttpRequest, "set_body_size_limit", 1286410249)
  var `?param` = [getPtr bytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodySizeLimit*(self: HttpRequest): int32 =
  expandMethodBind(className HttpRequest, "get_body_size_limit", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxRedirects*(self: HttpRequest; amount: int32): void =
  expandMethodBind(className HttpRequest, "set_max_redirects", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxRedirects*(self: HttpRequest): int32 =
  expandMethodBind(className HttpRequest, "get_max_redirects", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDownloadFile*(self: HttpRequest; path: String): void =
  expandMethodBind(className HttpRequest, "set_download_file", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDownloadFile*(self: HttpRequest): String =
  expandMethodBind(className HttpRequest, "get_download_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDownloadedBytes*(self: HttpRequest): int32 =
  expandMethodBind(className HttpRequest, "get_downloaded_bytes", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getBodySize*(self: HttpRequest): int32 =
  expandMethodBind(className HttpRequest, "get_body_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTimeout*(self: HttpRequest; timeout: float64): void =
  expandMethodBind(className HttpRequest, "set_timeout", 373806689)
  var `?param` = [getPtr timeout]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeout*(self: HttpRequest): float64 =
  expandMethodBind(className HttpRequest, "get_timeout", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDownloadChunkSize*(self: HttpRequest; chunkSize: int32): void =
  expandMethodBind(className HttpRequest, "set_download_chunk_size", 1286410249)
  var `?param` = [getPtr chunkSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDownloadChunkSize*(self: HttpRequest): int32 =
  expandMethodBind(className HttpRequest, "get_download_chunk_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHttpProxy*(self: HttpRequest; host: String; port: int32): void =
  expandMethodBind(className HttpRequest, "set_http_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

proc setHttpsProxy*(self: HttpRequest; host: String; port: int32): void =
  expandMethodBind(className HttpRequest, "set_https_proxy", 2956805083)
  var `?param` = [getPtr host, getPtr port]
  methodbind.ptrcall(self, addr `?param`[0])

template downloadFile*(self: HttpRequest): untyped = self.getDownloadFile()
template `downloadFile=`*(self: HttpRequest; value) = self.setDownloadFile(value)

template downloadChunkSize*(self: HttpRequest): untyped = self.getDownloadChunkSize()
template `downloadChunkSize=`*(self: HttpRequest; value) = self.setDownloadChunkSize(value)

template useThreads*(self: HttpRequest): untyped = self.isUsingThreads()
template `useThreads=`*(self: HttpRequest; value) = self.setUseThreads(value)

template acceptGzip*(self: HttpRequest): untyped = self.isAcceptingGzip()
template `acceptGzip=`*(self: HttpRequest; value) = self.setAcceptGzip(value)

template bodySizeLimit*(self: HttpRequest): untyped = self.getBodySizeLimit()
template `bodySizeLimit=`*(self: HttpRequest; value) = self.setBodySizeLimit(value)

template maxRedirects*(self: HttpRequest): untyped = self.getMaxRedirects()
template `maxRedirects=`*(self: HttpRequest; value) = self.setMaxRedirects(value)

template timeout*(self: HttpRequest): untyped = self.getTimeout()
template `timeout=`*(self: HttpRequest; value) = self.setTimeout(value)

const HttpRequest_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HttpRequest]): Table[string, string] = HttpRequest_vmap

proc requestCompleted*(self: HttpRequest; retval: Variant; responseCode: Variant; headers: Variant; body: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("request_completed")
  let args = [retval, responseCode, headers, body]
  self.emitSignal(signalname, args)