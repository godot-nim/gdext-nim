{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectRecord, AudioEffect)

proc setRecordingActive*(self: AudioEffectRecord; record: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectRecord, "set_recording_active", 2586408642)
  methodbind.ptrcall(self, [getPtr record], void)

proc isRecordingActive*(self: AudioEffectRecord): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectRecord, "is_recording_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFormat*(self: AudioEffectRecord; format: AudioStreamWAV_Format): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectRecord, "set_format", 60648488)
  methodbind.ptrcall(self, [getPtr format], void)

proc getFormat*(self: AudioEffectRecord): AudioStreamWAV_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectRecord, "get_format", 3151724922)
  methodbind.ptrcall(self, [], AudioStreamWAV_Format)

proc getRecording*(self: AudioEffectRecord): gdref AudioStreamWAV =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectRecord, "get_recording", 2964110865)
  methodbind.ptrcall(self, [], gdref AudioStreamWAV)

template format*(self: AudioEffectRecord): untyped = self.getFormat()
template `format=`*(self: AudioEffectRecord; value) = self.setFormat(value)
