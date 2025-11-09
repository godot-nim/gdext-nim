{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectHardLimiter, AudioEffect)

proc setCeilingDb*(self: AudioEffectHardLimiter; ceiling: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "set_ceiling_db", 373806689)
  methodbind.ptrcall(self, [getPtr ceiling], void)

proc getCeilingDb*(self: AudioEffectHardLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "get_ceiling_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPreGainDb*(self: AudioEffectHardLimiter; pPreGain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "set_pre_gain_db", 373806689)
  methodbind.ptrcall(self, [getPtr pPreGain], void)

proc getPreGainDb*(self: AudioEffectHardLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "get_pre_gain_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRelease*(self: AudioEffectHardLimiter; pRelease: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "set_release", 373806689)
  methodbind.ptrcall(self, [getPtr pRelease], void)

proc getRelease*(self: AudioEffectHardLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectHardLimiter, "get_release", 1740695150)
  methodbind.ptrcall(self, [], Float)

template preGainDb*(self: AudioEffectHardLimiter): untyped = self.getPreGainDb()
template `preGainDb=`*(self: AudioEffectHardLimiter; value) = self.setPreGainDb(value)

template ceilingDb*(self: AudioEffectHardLimiter): untyped = self.getCeilingDb()
template `ceilingDb=`*(self: AudioEffectHardLimiter; value) = self.setCeilingDb(value)

template release*(self: AudioEffectHardLimiter): untyped = self.getRelease()
template `release=`*(self: AudioEffectHardLimiter; value) = self.setRelease(value)
