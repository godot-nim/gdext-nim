{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpacketpeer; export gdpacketpeer

proc setStreamPeer*(self: PacketPeerStream; peer: gdref StreamPeer): void =
  expandMethodBind(className PacketPeerStream, "set_stream_peer", 3281897016)
  var `?param` = [getPtr peer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStreamPeer*(self: PacketPeerStream): gdref StreamPeer =
  expandMethodBind(className PacketPeerStream, "get_stream_peer", 2741655269)
  var ret: encoded gdref StreamPeer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref StreamPeer)

proc setInputBufferMaxSize*(self: PacketPeerStream; maxSizeBytes: int32): void =
  expandMethodBind(className PacketPeerStream, "set_input_buffer_max_size", 1286410249)
  var `?param` = [getPtr maxSizeBytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOutputBufferMaxSize*(self: PacketPeerStream; maxSizeBytes: int32): void =
  expandMethodBind(className PacketPeerStream, "set_output_buffer_max_size", 1286410249)
  var `?param` = [getPtr maxSizeBytes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInputBufferMaxSize*(self: PacketPeerStream): int32 =
  expandMethodBind(className PacketPeerStream, "get_input_buffer_max_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getOutputBufferMaxSize*(self: PacketPeerStream): int32 =
  expandMethodBind(className PacketPeerStream, "get_output_buffer_max_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template inputBufferMaxSize*(self: PacketPeerStream): untyped = self.getInputBufferMaxSize()
template `inputBufferMaxSize=`*(self: PacketPeerStream; value) = self.setInputBufferMaxSize(value)

template outputBufferMaxSize*(self: PacketPeerStream): untyped = self.getOutputBufferMaxSize()
template `outputBufferMaxSize=`*(self: PacketPeerStream; value) = self.setOutputBufferMaxSize(value)

template streamPeer*(self: PacketPeerStream): untyped = self.getStreamPeer()
template `streamPeer=`*(self: PacketPeerStream; value) = self.setStreamPeer(value)

const PacketPeerStream_vmap =
  PacketPeer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PacketPeerStream]): Table[string, string] = PacketPeerStream_vmap