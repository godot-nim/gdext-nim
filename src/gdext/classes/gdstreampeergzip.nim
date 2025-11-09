{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdstreampeer; export gdstreampeer

expandOnClassImported(StreamPeerGZIP, StreamPeer)

proc startCompression*(self: StreamPeerGZIP; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerGZIP, "start_compression", 781582770)
  methodbind.ptrcall(self, [getPtr useDeflate, getPtr bufferSize], Error)

proc startDecompression*(self: StreamPeerGZIP; useDeflate: bool = false; bufferSize: int32 = 65535): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerGZIP, "start_decompression", 781582770)
  methodbind.ptrcall(self, [getPtr useDeflate, getPtr bufferSize], Error)

proc finish*(self: StreamPeerGZIP): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerGZIP, "finish", 166280745)
  methodbind.ptrcall(self, [], Error)

proc clear*(self: StreamPeerGZIP): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StreamPeerGZIP, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)
