{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectChorus, AudioEffect)

proc setVoiceCount*(self: AudioEffectChorus; voices: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_count", 1286410249)
  methodbind.ptrcall(self, [getPtr voices], void)

proc getVoiceCount*(self: AudioEffectChorus): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVoiceDelayMs*(self: AudioEffectChorus; voiceIdx: int32; delayMs: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_delay_ms", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr delayMs], void)

proc getVoiceDelayMs*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_delay_ms", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setVoiceRateHz*(self: AudioEffectChorus; voiceIdx: int32; rateHz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_rate_hz", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr rateHz], void)

proc getVoiceRateHz*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_rate_hz", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setVoiceDepthMs*(self: AudioEffectChorus; voiceIdx: int32; depthMs: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_depth_ms", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr depthMs], void)

proc getVoiceDepthMs*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_depth_ms", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setVoiceLevelDb*(self: AudioEffectChorus; voiceIdx: int32; levelDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_level_db", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr levelDb], void)

proc getVoiceLevelDb*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_level_db", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setVoiceCutoffHz*(self: AudioEffectChorus; voiceIdx: int32; cutoffHz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_cutoff_hz", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr cutoffHz], void)

proc getVoiceCutoffHz*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_cutoff_hz", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setVoicePan*(self: AudioEffectChorus; voiceIdx: int32; pan: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_voice_pan", 1602489585)
  methodbind.ptrcall(self, [getPtr voiceIdx, getPtr pan], void)

proc getVoicePan*(self: AudioEffectChorus; voiceIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_voice_pan", 2339986948)
  methodbind.ptrcall(self, [getPtr voiceIdx], Float)

proc setWet*(self: AudioEffectChorus; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_wet", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getWet*(self: AudioEffectChorus): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_wet", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDry*(self: AudioEffectChorus; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "set_dry", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDry*(self: AudioEffectChorus): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectChorus, "get_dry", 1740695150)
  methodbind.ptrcall(self, [], Float)

template voiceCount*(self: AudioEffectChorus): untyped = self.getVoiceCount()
template `voiceCount=`*(self: AudioEffectChorus; value) = self.setVoiceCount(value)

template dry*(self: AudioEffectChorus): untyped = self.getDry()
template `dry=`*(self: AudioEffectChorus; value) = self.setDry(value)

template wet*(self: AudioEffectChorus): untyped = self.getWet()
template `wet=`*(self: AudioEffectChorus; value) = self.setWet(value)
