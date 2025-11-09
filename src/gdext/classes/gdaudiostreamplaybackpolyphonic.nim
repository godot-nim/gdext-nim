{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

expandOnClassImported(AudioStreamPlaybackPolyphonic, AudioStreamPlayback)

const InvalidId* = -1

proc playStream*(self: AudioStreamPlaybackPolyphonic; stream: gdref AudioStream; fromOffset: Float = 0; volumeDb: Float = 0; pitchScale: Float = 1.0; playbackType: AudioServer_PlaybackType = playbackTypeDefault; bus: StringName = newStringName("Master")): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackPolyphonic, "play_stream", 1846744803)
  methodbind.ptrcall(self, [getPtr stream, getPtr fromOffset, getPtr volumeDb, getPtr pitchScale, getPtr playbackType, getPtr bus], int64)

proc setStreamVolume*(self: AudioStreamPlaybackPolyphonic; stream: int64; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackPolyphonic, "set_stream_volume", 1602489585)
  methodbind.ptrcall(self, [getPtr stream, getPtr volumeDb], void)

proc setStreamPitchScale*(self: AudioStreamPlaybackPolyphonic; stream: int64; pitchScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackPolyphonic, "set_stream_pitch_scale", 1602489585)
  methodbind.ptrcall(self, [getPtr stream, getPtr pitchScale], void)

proc isStreamPlaying*(self: AudioStreamPlaybackPolyphonic; stream: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackPolyphonic, "is_stream_playing", 1116898809)
  methodbind.ptrcall(self, [getPtr stream], bool)

proc stopStream*(self: AudioStreamPlaybackPolyphonic; stream: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackPolyphonic, "stop_stream", 1286410249)
  methodbind.ptrcall(self, [getPtr stream], void)
