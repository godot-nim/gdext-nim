{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectEQ, AudioEffect)

proc setBandGainDb*(self: AudioEffectEQ; bandIdx: int32; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectEQ, "set_band_gain_db", 1602489585)
  methodbind.ptrcall(self, [getPtr bandIdx, getPtr volumeDb], void)

proc getBandGainDb*(self: AudioEffectEQ; bandIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectEQ, "get_band_gain_db", 2339986948)
  methodbind.ptrcall(self, [getPtr bandIdx], Float)

proc getBandCount*(self: AudioEffectEQ): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectEQ, "get_band_count", 3905245786)
  methodbind.ptrcall(self, [], int32)
