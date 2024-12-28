{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setRecordingActive*(self: AudioEffectRecord; record: bool): void =
  expandMethodBind(className AudioEffectRecord, "set_recording_active", 2586408642)
  methodbind.ptrcall(self, [getPtr record])

proc isRecordingActive*(self: AudioEffectRecord): bool =
  expandMethodBind(className AudioEffectRecord, "is_recording_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFormat*(self: AudioEffectRecord; format: AudioStreamWAV_Format): void =
  expandMethodBind(className AudioEffectRecord, "set_format", 60648488)
  methodbind.ptrcall(self, [getPtr format])

proc getFormat*(self: AudioEffectRecord): AudioStreamWAV_Format =
  expandMethodBind(className AudioEffectRecord, "get_format", 3151724922)
  var ret: encoded AudioStreamWAV_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioStreamWAV_Format)

proc getRecording*(self: AudioEffectRecord): gdref AudioStreamWAV =
  expandMethodBind(className AudioEffectRecord, "get_recording", 2964110865)
  var ret: encoded gdref AudioStreamWAV
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioStreamWAV)

template format*(self: AudioEffectRecord): untyped = self.getFormat()
template `format=`*(self: AudioEffectRecord; value) = self.setFormat(value)

const AudioEffectRecord_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectRecord]): Table[string, string] = AudioEffectRecord_vmap