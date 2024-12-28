{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

proc switchToClipByName*(self: AudioStreamPlaybackInteractive; clipName: StringName): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip_by_name", 3304788590)
  methodbind.ptrcall(self, [getPtr clipName])

proc switchToClip*(self: AudioStreamPlaybackInteractive; clipIndex: int32): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip", 1286410249)
  methodbind.ptrcall(self, [getPtr clipIndex])

const AudioStreamPlaybackInteractive_vmap =
  AudioStreamPlayback.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlaybackInteractive]): Table[string, string] = AudioStreamPlaybackInteractive_vmap