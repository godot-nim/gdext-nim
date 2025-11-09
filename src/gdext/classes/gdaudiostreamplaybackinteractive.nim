{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplayback; export gdaudiostreamplayback

expandOnClassImported(AudioStreamPlaybackInteractive, AudioStreamPlayback)

proc switchToClipByName*(self: AudioStreamPlaybackInteractive; clipName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip_by_name", 3304788590)
  methodbind.ptrcall(self, [getPtr clipName], void)

proc switchToClip*(self: AudioStreamPlaybackInteractive; clipIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackInteractive, "switch_to_clip", 1286410249)
  methodbind.ptrcall(self, [getPtr clipIndex], void)

proc getCurrentClipIndex*(self: AudioStreamPlaybackInteractive): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlaybackInteractive, "get_current_clip_index", 3905245786)
  methodbind.ptrcall(self, [], int32)
