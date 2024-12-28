{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setThreshold*(self: AudioEffectCompressor; threshold: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold])

proc getThreshold*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_threshold", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRatio*(self: AudioEffectCompressor; ratio: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getRatio*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGain*(self: AudioEffectCompressor; gain: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_gain", 373806689)
  methodbind.ptrcall(self, [getPtr gain])

proc getGain*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAttackUs*(self: AudioEffectCompressor; attackUs: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_attack_us", 373806689)
  methodbind.ptrcall(self, [getPtr attackUs])

proc getAttackUs*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_attack_us", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setReleaseMs*(self: AudioEffectCompressor; releaseMs: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_release_ms", 373806689)
  methodbind.ptrcall(self, [getPtr releaseMs])

proc getReleaseMs*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_release_ms", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMix*(self: AudioEffectCompressor; mix: Float): void =
  expandMethodBind(className AudioEffectCompressor, "set_mix", 373806689)
  methodbind.ptrcall(self, [getPtr mix])

proc getMix*(self: AudioEffectCompressor): Float =
  expandMethodBind(className AudioEffectCompressor, "get_mix", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSidechain*(self: AudioEffectCompressor; sidechain: StringName): void =
  expandMethodBind(className AudioEffectCompressor, "set_sidechain", 3304788590)
  methodbind.ptrcall(self, [getPtr sidechain])

proc getSidechain*(self: AudioEffectCompressor): StringName =
  expandMethodBind(className AudioEffectCompressor, "get_sidechain", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

template threshold*(self: AudioEffectCompressor): untyped = self.getThreshold()
template `threshold=`*(self: AudioEffectCompressor; value) = self.setThreshold(value)

template ratio*(self: AudioEffectCompressor): untyped = self.getRatio()
template `ratio=`*(self: AudioEffectCompressor; value) = self.setRatio(value)

template gain*(self: AudioEffectCompressor): untyped = self.getGain()
template `gain=`*(self: AudioEffectCompressor; value) = self.setGain(value)

template attackUs*(self: AudioEffectCompressor): untyped = self.getAttackUs()
template `attackUs=`*(self: AudioEffectCompressor; value) = self.setAttackUs(value)

template releaseMs*(self: AudioEffectCompressor): untyped = self.getReleaseMs()
template `releaseMs=`*(self: AudioEffectCompressor; value) = self.setReleaseMs(value)

template mix*(self: AudioEffectCompressor): untyped = self.getMix()
template `mix=`*(self: AudioEffectCompressor; value) = self.setMix(value)

template sidechain*(self: AudioEffectCompressor): untyped = self.getSidechain()
template `sidechain=`*(self: AudioEffectCompressor; value) = self.setSidechain(value)

const AudioEffectCompressor_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectCompressor]): Table[string, string] = AudioEffectCompressor_vmap