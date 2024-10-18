{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setDry*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_dry", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDry*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_dry", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap1Active*(self: AudioEffectDelay; amount: bool): void =
  expandMethodBind(className AudioEffectDelay, "set_tap1_active", 2586408642)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTap1Active*(self: AudioEffectDelay): bool =
  expandMethodBind(className AudioEffectDelay, "is_tap1_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTap1DelayMs*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap1_delay_ms", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap1DelayMs*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap1_delay_ms", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap1LevelDb*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap1_level_db", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap1LevelDb*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap1_level_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap1Pan*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap1_pan", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap1Pan*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap1_pan", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap2Active*(self: AudioEffectDelay; amount: bool): void =
  expandMethodBind(className AudioEffectDelay, "set_tap2_active", 2586408642)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTap2Active*(self: AudioEffectDelay): bool =
  expandMethodBind(className AudioEffectDelay, "is_tap2_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTap2DelayMs*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap2_delay_ms", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap2DelayMs*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap2_delay_ms", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap2LevelDb*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap2_level_db", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap2LevelDb*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap2_level_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTap2Pan*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_tap2_pan", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTap2Pan*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_tap2_pan", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFeedbackActive*(self: AudioEffectDelay; amount: bool): void =
  expandMethodBind(className AudioEffectDelay, "set_feedback_active", 2586408642)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFeedbackActive*(self: AudioEffectDelay): bool =
  expandMethodBind(className AudioEffectDelay, "is_feedback_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFeedbackDelayMs*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_feedback_delay_ms", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFeedbackDelayMs*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_feedback_delay_ms", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFeedbackLevelDb*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_feedback_level_db", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFeedbackLevelDb*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_feedback_level_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFeedbackLowpass*(self: AudioEffectDelay; amount: Float): void =
  expandMethodBind(className AudioEffectDelay, "set_feedback_lowpass", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFeedbackLowpass*(self: AudioEffectDelay): Float =
  expandMethodBind(className AudioEffectDelay, "get_feedback_lowpass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template dry*(self: AudioEffectDelay): untyped = self.getDry()
template `dry=`*(self: AudioEffectDelay; value) = self.setDry(value)

template tap1Active*(self: AudioEffectDelay): untyped = self.isTap1Active()
template `tap1Active=`*(self: AudioEffectDelay; value) = self.setTap1Active(value)

template tap1DelayMs*(self: AudioEffectDelay): untyped = self.getTap1DelayMs()
template `tap1DelayMs=`*(self: AudioEffectDelay; value) = self.setTap1DelayMs(value)

template tap1LevelDb*(self: AudioEffectDelay): untyped = self.getTap1LevelDb()
template `tap1LevelDb=`*(self: AudioEffectDelay; value) = self.setTap1LevelDb(value)

template tap1Pan*(self: AudioEffectDelay): untyped = self.getTap1Pan()
template `tap1Pan=`*(self: AudioEffectDelay; value) = self.setTap1Pan(value)

template tap2Active*(self: AudioEffectDelay): untyped = self.isTap2Active()
template `tap2Active=`*(self: AudioEffectDelay; value) = self.setTap2Active(value)

template tap2DelayMs*(self: AudioEffectDelay): untyped = self.getTap2DelayMs()
template `tap2DelayMs=`*(self: AudioEffectDelay; value) = self.setTap2DelayMs(value)

template tap2LevelDb*(self: AudioEffectDelay): untyped = self.getTap2LevelDb()
template `tap2LevelDb=`*(self: AudioEffectDelay; value) = self.setTap2LevelDb(value)

template tap2Pan*(self: AudioEffectDelay): untyped = self.getTap2Pan()
template `tap2Pan=`*(self: AudioEffectDelay; value) = self.setTap2Pan(value)

template feedbackActive*(self: AudioEffectDelay): untyped = self.isFeedbackActive()
template `feedbackActive=`*(self: AudioEffectDelay; value) = self.setFeedbackActive(value)

template feedbackDelayMs*(self: AudioEffectDelay): untyped = self.getFeedbackDelayMs()
template `feedbackDelayMs=`*(self: AudioEffectDelay; value) = self.setFeedbackDelayMs(value)

template feedbackLevelDb*(self: AudioEffectDelay): untyped = self.getFeedbackLevelDb()
template `feedbackLevelDb=`*(self: AudioEffectDelay; value) = self.setFeedbackLevelDb(value)

template feedbackLowpass*(self: AudioEffectDelay): untyped = self.getFeedbackLowpass()
template `feedbackLowpass=`*(self: AudioEffectDelay; value) = self.setFeedbackLowpass(value)

const AudioEffectDelay_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectDelay]): Table[string, string] = AudioEffectDelay_vmap