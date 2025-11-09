{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectLimiter, AudioEffect)

proc setCeilingDb*(self: AudioEffectLimiter; ceiling: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "set_ceiling_db", 373806689)
  methodbind.ptrcall(self, [getPtr ceiling], void)

proc getCeilingDb*(self: AudioEffectLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "get_ceiling_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setThresholdDb*(self: AudioEffectLimiter; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "set_threshold_db", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getThresholdDb*(self: AudioEffectLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "get_threshold_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSoftClipDb*(self: AudioEffectLimiter; softClip: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "set_soft_clip_db", 373806689)
  methodbind.ptrcall(self, [getPtr softClip], void)

proc getSoftClipDb*(self: AudioEffectLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "get_soft_clip_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSoftClipRatio*(self: AudioEffectLimiter; softClip: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "set_soft_clip_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr softClip], void)

proc getSoftClipRatio*(self: AudioEffectLimiter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectLimiter, "get_soft_clip_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

template ceilingDb*(self: AudioEffectLimiter): untyped = self.getCeilingDb()
template `ceilingDb=`*(self: AudioEffectLimiter; value) = self.setCeilingDb(value)

template thresholdDb*(self: AudioEffectLimiter): untyped = self.getThresholdDb()
template `thresholdDb=`*(self: AudioEffectLimiter; value) = self.setThresholdDb(value)

template softClipDb*(self: AudioEffectLimiter): untyped = self.getSoftClipDb()
template `softClipDb=`*(self: AudioEffectLimiter; value) = self.setSoftClipDb(value)

template softClipRatio*(self: AudioEffectLimiter): untyped = self.getSoftClipRatio()
template `softClipRatio=`*(self: AudioEffectLimiter; value) = self.setSoftClipRatio(value)
