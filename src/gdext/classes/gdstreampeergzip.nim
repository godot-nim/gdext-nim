{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc startCompression*(self: StreamPeerGzip; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  expandMethodBind(className StreamPeerGzip, "start_compression", 781582770)
  var `?param` = [getPtr useDeflate, getPtr bufferSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc startDecompression*(self: StreamPeerGzip; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  expandMethodBind(className StreamPeerGzip, "start_decompression", 781582770)
  var `?param` = [getPtr useDeflate, getPtr bufferSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc finish*(self: StreamPeerGzip): Error =
  expandMethodBind(className StreamPeerGzip, "finish", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc clear*(self: StreamPeerGzip): void =
  expandMethodBind(className StreamPeerGzip, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

const StreamPeerGzip_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerGzip]): Table[string, string] = StreamPeerGzip_vmap