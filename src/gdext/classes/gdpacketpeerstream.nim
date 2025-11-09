{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

expandOnClassImported(PacketPeerStream, PacketPeer)

proc setStreamPeer*(self: PacketPeerStream; peer: gdref StreamPeer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "set_stream_peer", 3281897016)
  methodbind.ptrcall(self, [getPtr peer], void)

proc getStreamPeer*(self: PacketPeerStream): gdref StreamPeer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "get_stream_peer", 2741655269)
  methodbind.ptrcall(self, [], gdref StreamPeer)

proc setInputBufferMaxSize*(self: PacketPeerStream; maxSizeBytes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "set_input_buffer_max_size", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSizeBytes], void)

proc setOutputBufferMaxSize*(self: PacketPeerStream; maxSizeBytes: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "set_output_buffer_max_size", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSizeBytes], void)

proc getInputBufferMaxSize*(self: PacketPeerStream): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "get_input_buffer_max_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getOutputBufferMaxSize*(self: PacketPeerStream): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PacketPeerStream, "get_output_buffer_max_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

template inputBufferMaxSize*(self: PacketPeerStream): untyped = self.getInputBufferMaxSize()
template `inputBufferMaxSize=`*(self: PacketPeerStream; value) = self.setInputBufferMaxSize(value)

template outputBufferMaxSize*(self: PacketPeerStream): untyped = self.getOutputBufferMaxSize()
template `outputBufferMaxSize=`*(self: PacketPeerStream; value) = self.setOutputBufferMaxSize(value)

template streamPeer*(self: PacketPeerStream): untyped = self.getStreamPeer()
template `streamPeer=`*(self: PacketPeerStream; value) = self.setStreamPeer(value)
