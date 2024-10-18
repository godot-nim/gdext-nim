{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

proc playStream*(self: AudioStreamPlaybackPolyphonic; stream: gdref AudioStream; fromOffset: Float = 0; volumeDb: Float = 0; pitchScale: Float = 1.0; playbackType: AudioServer_PlaybackType = playbackTypeDefault; bus: StringName = &"Master"): int64 =
  expandMethodBind(className AudioStreamPlaybackPolyphonic, "play_stream", 1846744803)
  var `?param` = [getPtr stream, getPtr fromOffset, getPtr volumeDb, getPtr pitchScale, getPtr playbackType, getPtr bus]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc setStreamVolume*(self: AudioStreamPlaybackPolyphonic; stream: int64; volumeDb: Float): void =
  expandMethodBind(className AudioStreamPlaybackPolyphonic, "set_stream_volume", 1602489585)
  var `?param` = [getPtr stream, getPtr volumeDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc setStreamPitchScale*(self: AudioStreamPlaybackPolyphonic; stream: int64; pitchScale: Float): void =
  expandMethodBind(className AudioStreamPlaybackPolyphonic, "set_stream_pitch_scale", 1602489585)
  var `?param` = [getPtr stream, getPtr pitchScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc isStreamPlaying*(self: AudioStreamPlaybackPolyphonic; stream: int64): bool =
  expandMethodBind(className AudioStreamPlaybackPolyphonic, "is_stream_playing", 1116898809)
  var `?param` = [getPtr stream]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc stopStream*(self: AudioStreamPlaybackPolyphonic; stream: int64): void =
  expandMethodBind(className AudioStreamPlaybackPolyphonic, "stop_stream", 1286410249)
  var `?param` = [getPtr stream]
  methodbind.ptrcall(self, addr `?param`[0])

const AudioStreamPlaybackPolyphonic_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackPolyphonic]): Table[string, string] = AudioStreamPlaybackPolyphonic_vmap