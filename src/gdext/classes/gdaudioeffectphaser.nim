{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectPhaser, AudioEffect)

proc setRangeMinHz*(self: AudioEffectPhaser; hz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "set_range_min_hz", 373806689)
  methodbind.ptrcall(self, [getPtr hz], void)

proc getRangeMinHz*(self: AudioEffectPhaser): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "get_range_min_hz", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRangeMaxHz*(self: AudioEffectPhaser; hz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "set_range_max_hz", 373806689)
  methodbind.ptrcall(self, [getPtr hz], void)

proc getRangeMaxHz*(self: AudioEffectPhaser): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "get_range_max_hz", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRateHz*(self: AudioEffectPhaser; hz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "set_rate_hz", 373806689)
  methodbind.ptrcall(self, [getPtr hz], void)

proc getRateHz*(self: AudioEffectPhaser): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "get_rate_hz", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFeedback*(self: AudioEffectPhaser; fbk: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "set_feedback", 373806689)
  methodbind.ptrcall(self, [getPtr fbk], void)

proc getFeedback*(self: AudioEffectPhaser): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "get_feedback", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDepth*(self: AudioEffectPhaser; depth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getDepth*(self: AudioEffectPhaser): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPhaser, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

template rangeMinHz*(self: AudioEffectPhaser): untyped = self.getRangeMinHz()
template `rangeMinHz=`*(self: AudioEffectPhaser; value) = self.setRangeMinHz(value)

template rangeMaxHz*(self: AudioEffectPhaser): untyped = self.getRangeMaxHz()
template `rangeMaxHz=`*(self: AudioEffectPhaser; value) = self.setRangeMaxHz(value)

template rateHz*(self: AudioEffectPhaser): untyped = self.getRateHz()
template `rateHz=`*(self: AudioEffectPhaser; value) = self.setRateHz(value)

template feedback*(self: AudioEffectPhaser): untyped = self.getFeedback()
template `feedback=`*(self: AudioEffectPhaser; value) = self.setFeedback(value)

template depth*(self: AudioEffectPhaser): untyped = self.getDepth()
template `depth=`*(self: AudioEffectPhaser; value) = self.setDepth(value)
