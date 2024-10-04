{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

proc switchToClipByName*(self: AudioStreamPlaybackInteractive; clipName: StringName): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip_by_name", 3304788590)
  var `?param` = [getPtr clipName]
  methodbind.ptrcall(self, addr `?param`[0])

proc switchToClip*(self: AudioStreamPlaybackInteractive; clipIndex: int32): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip", 1286410249)
  var `?param` = [getPtr clipIndex]
  methodbind.ptrcall(self, addr `?param`[0])

const AudioStreamPlaybackInteractive_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackInteractive]): Table[string, string] = AudioStreamPlaybackInteractive_vmap