{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectCapture, AudioEffect)

proc canGetBuffer*(self: AudioEffectCapture; frames: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "can_get_buffer", 1116898809)
  methodbind.ptrcall(self, [getPtr frames], bool)

proc getBuffer*(self: AudioEffectCapture; frames: int32): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_buffer", 2649534757)
  methodbind.ptrcall(self, [getPtr frames], PackedVector2Array)

proc clearBuffer*(self: AudioEffectCapture): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "clear_buffer", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setBufferLength*(self: AudioEffectCapture; bufferLengthSeconds: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "set_buffer_length", 373806689)
  methodbind.ptrcall(self, [getPtr bufferLengthSeconds], void)

proc getBufferLength*(self: AudioEffectCapture): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_buffer_length", 191475506)
  methodbind.ptrcall(self, [], Float)

proc getFramesAvailable*(self: AudioEffectCapture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_frames_available", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getDiscardedFrames*(self: AudioEffectCapture): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_discarded_frames", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc getBufferLengthFrames*(self: AudioEffectCapture): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_buffer_length_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPushedFrames*(self: AudioEffectCapture): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCapture, "get_pushed_frames", 3905245786)
  methodbind.ptrcall(self, [], int64)

template bufferLength*(self: AudioEffectCapture): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioEffectCapture; value) = self.setBufferLength(value)
