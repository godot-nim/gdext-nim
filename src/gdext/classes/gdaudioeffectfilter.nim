{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setCutoff*(self: AudioEffectFilter; freq: Float): void =
  expandMethodBind(className AudioEffectFilter, "set_cutoff", 373806689)
  var `?param` = [getPtr freq]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCutoff*(self: AudioEffectFilter): Float =
  expandMethodBind(className AudioEffectFilter, "get_cutoff", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setResonance*(self: AudioEffectFilter; amount: Float): void =
  expandMethodBind(className AudioEffectFilter, "set_resonance", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getResonance*(self: AudioEffectFilter): Float =
  expandMethodBind(className AudioEffectFilter, "get_resonance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setGain*(self: AudioEffectFilter; amount: Float): void =
  expandMethodBind(className AudioEffectFilter, "set_gain", 373806689)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGain*(self: AudioEffectFilter): Float =
  expandMethodBind(className AudioEffectFilter, "get_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDb*(self: AudioEffectFilter; amount: AudioEffectFilter_FilterDb): void =
  expandMethodBind(className AudioEffectFilter, "set_db", 771740901)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDb*(self: AudioEffectFilter): AudioEffectFilter_FilterDb =
  expandMethodBind(className AudioEffectFilter, "get_db", 3981721890)
  var ret: encoded AudioEffectFilter_FilterDb
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioEffectFilter_FilterDb)

template cutoffHz*(self: AudioEffectFilter): untyped = self.getCutoff()
template `cutoffHz=`*(self: AudioEffectFilter; value) = self.setCutoff(value)

template resonance*(self: AudioEffectFilter): untyped = self.getResonance()
template `resonance=`*(self: AudioEffectFilter; value) = self.setResonance(value)

template gain*(self: AudioEffectFilter): untyped = self.getGain()
template `gain=`*(self: AudioEffectFilter; value) = self.setGain(value)

template db*(self: AudioEffectFilter): untyped = self.getDb()
template `db=`*(self: AudioEffectFilter; value) = self.setDb(value)

const AudioEffectFilter_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectFilter]): Table[string, string] = AudioEffectFilter_vmap