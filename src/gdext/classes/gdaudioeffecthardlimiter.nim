{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setCeilingDb*(self: AudioEffectHardLimiter; ceiling: Float): void =
  expandMethodBind(className AudioEffectHardLimiter, "set_ceiling_db", 373806689)
  var `?param` = [getPtr ceiling]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCeilingDb*(self: AudioEffectHardLimiter): Float =
  expandMethodBind(className AudioEffectHardLimiter, "get_ceiling_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPreGainDb*(self: AudioEffectHardLimiter; pPreGain: Float): void =
  expandMethodBind(className AudioEffectHardLimiter, "set_pre_gain_db", 373806689)
  var `?param` = [getPtr pPreGain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreGainDb*(self: AudioEffectHardLimiter): Float =
  expandMethodBind(className AudioEffectHardLimiter, "get_pre_gain_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRelease*(self: AudioEffectHardLimiter; pRelease: Float): void =
  expandMethodBind(className AudioEffectHardLimiter, "set_release", 373806689)
  var `?param` = [getPtr pRelease]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRelease*(self: AudioEffectHardLimiter): Float =
  expandMethodBind(className AudioEffectHardLimiter, "get_release", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template preGainDb*(self: AudioEffectHardLimiter): untyped = self.getPreGainDb()
template `preGainDb=`*(self: AudioEffectHardLimiter; value) = self.setPreGainDb(value)

template ceilingDb*(self: AudioEffectHardLimiter): untyped = self.getCeilingDb()
template `ceilingDb=`*(self: AudioEffectHardLimiter; value) = self.setCeilingDb(value)

template release*(self: AudioEffectHardLimiter): untyped = self.getRelease()
template `release=`*(self: AudioEffectHardLimiter; value) = self.setRelease(value)

const AudioEffectHardLimiter_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectHardLimiter]): Table[string, string] = AudioEffectHardLimiter_vmap