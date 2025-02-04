{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setPanPullout*(self: AudioEffectStereoEnhance; amount: Float): void =
  expandMethodBind(className AudioEffectStereoEnhance, "set_pan_pullout", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getPanPullout*(self: AudioEffectStereoEnhance): Float =
  expandMethodBind(className AudioEffectStereoEnhance, "get_pan_pullout", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setTimePullout*(self: AudioEffectStereoEnhance; amount: Float): void =
  expandMethodBind(className AudioEffectStereoEnhance, "set_time_pullout", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getTimePullout*(self: AudioEffectStereoEnhance): Float =
  expandMethodBind(className AudioEffectStereoEnhance, "get_time_pullout", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSurround*(self: AudioEffectStereoEnhance; amount: Float): void =
  expandMethodBind(className AudioEffectStereoEnhance, "set_surround", 373806689)
  methodbind.ptrcall(self, [getPtr amount])

proc getSurround*(self: AudioEffectStereoEnhance): Float =
  expandMethodBind(className AudioEffectStereoEnhance, "get_surround", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template panPullout*(self: AudioEffectStereoEnhance): untyped = self.getPanPullout()
template `panPullout=`*(self: AudioEffectStereoEnhance; value) = self.setPanPullout(value)

template timePulloutMs*(self: AudioEffectStereoEnhance): untyped = self.getTimePullout()
template `timePulloutMs=`*(self: AudioEffectStereoEnhance; value) = self.setTimePullout(value)

template surround*(self: AudioEffectStereoEnhance): untyped = self.getSurround()
template `surround=`*(self: AudioEffectStereoEnhance; value) = self.setSurround(value)

const AudioEffectStereoEnhance_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectStereoEnhance]): Table[string, string] = AudioEffectStereoEnhance_vmap