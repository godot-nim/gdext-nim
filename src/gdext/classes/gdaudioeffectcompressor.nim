{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectCompressor, AudioEffect)

proc setThreshold*(self: AudioEffectCompressor; threshold: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_threshold", 373806689)
  methodbind.ptrcall(self, [getPtr threshold], void)

proc getThreshold*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_threshold", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRatio*(self: AudioEffectCompressor; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getRatio*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setGain*(self: AudioEffectCompressor; gain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_gain", 373806689)
  methodbind.ptrcall(self, [getPtr gain], void)

proc getGain*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttackUs*(self: AudioEffectCompressor; attackUs: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_attack_us", 373806689)
  methodbind.ptrcall(self, [getPtr attackUs], void)

proc getAttackUs*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_attack_us", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setReleaseMs*(self: AudioEffectCompressor; releaseMs: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_release_ms", 373806689)
  methodbind.ptrcall(self, [getPtr releaseMs], void)

proc getReleaseMs*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_release_ms", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMix*(self: AudioEffectCompressor; mix: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_mix", 373806689)
  methodbind.ptrcall(self, [getPtr mix], void)

proc getMix*(self: AudioEffectCompressor): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_mix", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSidechain*(self: AudioEffectCompressor; sidechain: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "set_sidechain", 3304788590)
  methodbind.ptrcall(self, [getPtr sidechain], void)

proc getSidechain*(self: AudioEffectCompressor): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectCompressor, "get_sidechain", 2002593661)
  methodbind.ptrcall(self, [], StringName)

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
