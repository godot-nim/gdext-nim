{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectStereoEnhance, AudioEffect)

proc setPanPullout*(self: AudioEffectStereoEnhance; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "set_pan_pullout", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getPanPullout*(self: AudioEffectStereoEnhance): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "get_pan_pullout", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTimePullout*(self: AudioEffectStereoEnhance; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "set_time_pullout", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getTimePullout*(self: AudioEffectStereoEnhance): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "get_time_pullout", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSurround*(self: AudioEffectStereoEnhance; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "set_surround", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getSurround*(self: AudioEffectStereoEnhance): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectStereoEnhance, "get_surround", 1740695150)
  methodbind.ptrcall(self, [], Float)

template panPullout*(self: AudioEffectStereoEnhance): untyped = self.getPanPullout()
template `panPullout=`*(self: AudioEffectStereoEnhance; value) = self.setPanPullout(value)

template timePulloutMs*(self: AudioEffectStereoEnhance): untyped = self.getTimePullout()
template `timePulloutMs=`*(self: AudioEffectStereoEnhance; value) = self.setTimePullout(value)

template surround*(self: AudioEffectStereoEnhance): untyped = self.getSurround()
template `surround=`*(self: AudioEffectStereoEnhance; value) = self.setSurround(value)
