{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamSynchronized, AudioStream)

const MaxStreams* = 32

proc setStreamCount*(self: AudioStreamSynchronized; streamCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "set_stream_count", 1286410249)
  methodbind.ptrcall(self, [getPtr streamCount], void)

proc getStreamCount*(self: AudioStreamSynchronized): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "get_stream_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSyncStream*(self: AudioStreamSynchronized; streamIndex: int32; audioStream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "set_sync_stream", 111075094)
  methodbind.ptrcall(self, [getPtr streamIndex, getPtr audioStream], void)

proc getSyncStream*(self: AudioStreamSynchronized; streamIndex: int32): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "get_sync_stream", 2739380747)
  methodbind.ptrcall(self, [getPtr streamIndex], gdref AudioStream)

proc setSyncStreamVolume*(self: AudioStreamSynchronized; streamIndex: int32; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "set_sync_stream_volume", 1602489585)
  methodbind.ptrcall(self, [getPtr streamIndex, getPtr volumeDb], void)

proc getSyncStreamVolume*(self: AudioStreamSynchronized; streamIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamSynchronized, "get_sync_stream_volume", 2339986948)
  methodbind.ptrcall(self, [getPtr streamIndex], Float)

template streamCount*(self: AudioStreamSynchronized): untyped = self.getStreamCount()
template `streamCount=`*(self: AudioStreamSynchronized; value) = self.setStreamCount(value)
