{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

expandOnClassImported(AudioStreamPlaybackInteractive, AudioStreamPlayback)

proc switchToClipByName*(self: AudioStreamPlaybackInteractive; clipName: StringName): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip_by_name", 3304788590)
  methodbind.ptrcall(self, [getPtr clipName])

proc switchToClip*(self: AudioStreamPlaybackInteractive; clipIndex: int32): void =
  expandMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip", 1286410249)
  methodbind.ptrcall(self, [getPtr clipIndex])

proc getCurrentClipIndex*(self: AudioStreamPlaybackInteractive): int32 =
  expandMethodBind(className AudioStreamPlaybackInteractive, "get_current_clip_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
