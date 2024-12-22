{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

proc startCompression*(self: StreamPeerGZIP; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  expandMethodBind(className StreamPeerGZIP, "start_compression", 781582770)
  var `?param` = [getPtr useDeflate, getPtr bufferSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc startDecompression*(self: StreamPeerGZIP; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  expandMethodBind(className StreamPeerGZIP, "start_decompression", 781582770)
  var `?param` = [getPtr useDeflate, getPtr bufferSize]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc finish*(self: StreamPeerGZIP): Error =
  expandMethodBind(className StreamPeerGZIP, "finish", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc clear*(self: StreamPeerGZIP): void =
  expandMethodBind(className StreamPeerGZIP, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

const StreamPeerGZIP_vmap =
  StreamPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StreamPeerGZIP]): Table[string, string] = StreamPeerGZIP_vmap