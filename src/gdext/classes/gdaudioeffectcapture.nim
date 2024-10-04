{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc canGetBuffer*(self: AudioEffectCapture; frames: int32): bool =
  expandMethodBind(className AudioEffectCapture, "can_get_buffer", 1116898809)
  var `?param` = [getPtr frames]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getBuffer*(self: AudioEffectCapture; frames: int32): PackedVector2Array =
  expandMethodBind(className AudioEffectCapture, "get_buffer", 2649534757)
  var `?param` = [getPtr frames]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc clearBuffer*(self: AudioEffectCapture): void =
  expandMethodBind(className AudioEffectCapture, "clear_buffer", 3218959716)
  methodbind.ptrcall(self, nil)

proc setBufferLength*(self: AudioEffectCapture; bufferLengthSeconds: Float): void =
  expandMethodBind(className AudioEffectCapture, "set_buffer_length", 373806689)
  var `?param` = [getPtr bufferLengthSeconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBufferLength*(self: AudioEffectCapture): Float =
  expandMethodBind(className AudioEffectCapture, "get_buffer_length", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getFramesAvailable*(self: AudioEffectCapture): int32 =
  expandMethodBind(className AudioEffectCapture, "get_frames_available", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getDiscardedFrames*(self: AudioEffectCapture): int64 =
  expandMethodBind(className AudioEffectCapture, "get_discarded_frames", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc getBufferLengthFrames*(self: AudioEffectCapture): int32 =
  expandMethodBind(className AudioEffectCapture, "get_buffer_length_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPushedFrames*(self: AudioEffectCapture): int64 =
  expandMethodBind(className AudioEffectCapture, "get_pushed_frames", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

template bufferLength*(self: AudioEffectCapture): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioEffectCapture; value) = self.setBufferLength(value)

const AudioEffectCapture_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectCapture]): Table[string, string] = AudioEffectCapture_vmap