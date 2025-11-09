{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectFilter, AudioEffect)

proc setCutoff*(self: AudioEffectFilter; freq: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "set_cutoff", 373806689)
  methodbind.ptrcall(self, [getPtr freq], void)

proc getCutoff*(self: AudioEffectFilter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "get_cutoff", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setResonance*(self: AudioEffectFilter; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "set_resonance", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getResonance*(self: AudioEffectFilter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "get_resonance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGain*(self: AudioEffectFilter; amount: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "set_gain", 373806689)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getGain*(self: AudioEffectFilter): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "get_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDb*(self: AudioEffectFilter; amount: AudioEffectFilter_FilterDB): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "set_db", 771740901)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getDb*(self: AudioEffectFilter): AudioEffectFilter_FilterDB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectFilter, "get_db", 3981721890)
  methodbind.ptrcall(self, [], AudioEffectFilter_FilterDB)

template cutoffHz*(self: AudioEffectFilter): untyped = self.getCutoff()
template `cutoffHz=`*(self: AudioEffectFilter; value) = self.setCutoff(value)

template resonance*(self: AudioEffectFilter): untyped = self.getResonance()
template `resonance=`*(self: AudioEffectFilter; value) = self.setResonance(value)

template gain*(self: AudioEffectFilter): untyped = self.getGain()
template `gain=`*(self: AudioEffectFilter; value) = self.setGain(value)

template db*(self: AudioEffectFilter): untyped = self.getDb()
template `db=`*(self: AudioEffectFilter; value) = self.setDb(value)
