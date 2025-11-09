{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectDelay, AudioEffect)

proc setDry*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_dry", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDry*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_dry", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setTap1Active*(self: AudioEffectDelay; amount: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap1_active", 2586408642)
  methodbind.ptrcall(self, [getPtr amount], void)

proc isTap1Active*(self: AudioEffectDelay): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "is_tap1_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTap1DelayMs*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap1_delay_ms", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap1DelayMs*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap1_delay_ms", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTap1LevelDb*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap1_level_db", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap1LevelDb*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap1_level_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTap1Pan*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap1_pan", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap1Pan*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap1_pan", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTap2Active*(self: AudioEffectDelay; amount: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap2_active", 2586408642)
  methodbind.ptrcall(self, [getPtr amount], void)

proc isTap2Active*(self: AudioEffectDelay): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "is_tap2_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTap2DelayMs*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap2_delay_ms", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap2DelayMs*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap2_delay_ms", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTap2LevelDb*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap2_level_db", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap2LevelDb*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap2_level_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTap2Pan*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_tap2_pan", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTap2Pan*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_tap2_pan", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFeedbackActive*(self: AudioEffectDelay; amount: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_feedback_active", 2586408642)
  methodbind.ptrcall(self, [getPtr amount], void)

proc isFeedbackActive*(self: AudioEffectDelay): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "is_feedback_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFeedbackDelayMs*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_feedback_delay_ms", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getFeedbackDelayMs*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_feedback_delay_ms", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFeedbackLevelDb*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_feedback_level_db", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getFeedbackLevelDb*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_feedback_level_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFeedbackLowpass*(self: AudioEffectDelay; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "set_feedback_lowpass", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getFeedbackLowpass*(self: AudioEffectDelay): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDelay, "get_feedback_lowpass", 1740695150)
  methodbind.ptrcall(self, [], Float)

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
