{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setVoiceCount*(self: AudioEffectChorus; voices: int32): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_count", 1286410249)
  methodbind.ptrcall(self, [getPtr voices])

proc getVoiceCount*(self: AudioEffectChorus): int32 =
  expandMethodBind(className AudioEffectChorus, "get_voice_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVoiceDelayMs*(self: AudioEffectChorus; voiceIdx: int32; delayMs: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_delay_ms", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr delayMs])

proc getVoiceDelayMs*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_delay_ms", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setVoiceRateHz*(self: AudioEffectChorus; voiceIdx: int32; rateHz: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_rate_hz", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr rateHz])

proc getVoiceRateHz*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_rate_hz", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setVoiceDepthMs*(self: AudioEffectChorus; voiceIdx: int32; depthMs: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_depth_ms", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr depthMs])

proc getVoiceDepthMs*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_depth_ms", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setVoiceLevelDb*(self: AudioEffectChorus; voiceIdx: int32; levelDb: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_level_db", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr levelDb])

proc getVoiceLevelDb*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_level_db", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setVoiceCutoffHz*(self: AudioEffectChorus; voiceIdx: int32; cutoffHz: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_cutoff_hz", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr cutoffHz])

proc getVoiceCutoffHz*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_cutoff_hz", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setVoicePan*(self: AudioEffectChorus; voiceIdx: int32; pan: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_voice_pan", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr pan])

proc getVoicePan*(self: AudioEffectChorus; voiceIdx: int32): Float =
  expandMethodBind(className AudioEffectChorus, "get_voice_pan", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr voiceIdx], addr ret)
  (addr ret).decode_result(Float)

proc setWet*(self: AudioEffectChorus; amount: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_wet", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getWet*(self: AudioEffectChorus): Float =
  expandMethodBind(className AudioEffectChorus, "get_wet", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDry*(self: AudioEffectChorus; amount: Float): void =
  expandMethodBind(className AudioEffectChorus, "set_dry", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getDry*(self: AudioEffectChorus): Float =
  expandMethodBind(className AudioEffectChorus, "get_dry", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template voiceCount*(self: AudioEffectChorus): untyped = self.getVoiceCount()
template `voiceCount=`*(self: AudioEffectChorus; value) = self.setVoiceCount(value)

template dry*(self: AudioEffectChorus): untyped = self.getDry()
template `dry=`*(self: AudioEffectChorus; value) = self.setDry(value)

template wet*(self: AudioEffectChorus): untyped = self.getWet()
template `wet=`*(self: AudioEffectChorus; value) = self.setWet(value)

const AudioEffectChorus_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectChorus]): Table[string, string] = AudioEffectChorus_vmap