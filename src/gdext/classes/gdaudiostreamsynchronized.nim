{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setStreamCount*(self: AudioStreamSynchronized; streamCount: int32): void =
  expandMethodBind(className AudioStreamSynchronized, "set_stream_count", 1286410249)
  methodbind.ptrcall(self, [getPtr streamCount])

proc getStreamCount*(self: AudioStreamSynchronized): int32 =
  expandMethodBind(className AudioStreamSynchronized, "get_stream_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setSyncStream*(self: AudioStreamSynchronized; streamIndex: int32; audioStream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamSynchronized, "set_sync_stream", 111075094)
  methodbind.ptrcall(self, [getPtr streamIndex, getPtr audioStream])

proc getSyncStream*(self: AudioStreamSynchronized; streamIndex: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamSynchronized, "get_sync_stream", 2739380747)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, [getPtr streamIndex], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setSyncStreamVolume*(self: AudioStreamSynchronized; streamIndex: int32; volumeDb: Float): void =
  expandMethodBind(className AudioStreamSynchronized, "set_sync_stream_volume", 1602489585)
  methodbind.ptrcall(self, [getPtr streamIndex, getPtr volumeDb])

proc getSyncStreamVolume*(self: AudioStreamSynchronized; streamIndex: int32): Float =
  expandMethodBind(className AudioStreamSynchronized, "get_sync_stream_volume", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr streamIndex], addr ret)
  (addr ret).decode_result(Float)

template streamCount*(self: AudioStreamSynchronized): untyped = self.getStreamCount()
template `streamCount=`*(self: AudioStreamSynchronized; value) = self.setStreamCount(value)

const AudioStreamSynchronized_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamSynchronized]): Table[string, string] = AudioStreamSynchronized_vmap