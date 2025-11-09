{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostreamplaybackresampled; export gdaudiostreamplaybackresampled

expandOnClassImported(AudioStreamGeneratorPlayback, AudioStreamPlaybackResampled)

proc pushFrame*(self: AudioStreamGeneratorPlayback; frame: Vector2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "push_frame", 3975407249)
  methodbind.ptrcall(self, [getPtr frame], bool)

proc canPushBuffer*(self: AudioStreamGeneratorPlayback; amount: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "can_push_buffer", 1116898809)
  methodbind.ptrcall(self, [getPtr amount], bool)

proc pushBuffer*(self: AudioStreamGeneratorPlayback; frames: PackedVector2Array): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "push_buffer", 1361156557)
  methodbind.ptrcall(self, [getPtr frames], bool)

proc getFramesAvailable*(self: AudioStreamGeneratorPlayback): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "get_frames_available", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSkips*(self: AudioStreamGeneratorPlayback): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "get_skips", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc clearBuffer*(self: AudioStreamGeneratorPlayback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGeneratorPlayback, "clear_buffer", 3218959716)
  methodbind.ptrcall(self, [], void)
