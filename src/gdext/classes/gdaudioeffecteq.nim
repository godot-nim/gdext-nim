{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setBandGainDb*(self: AudioEffectEQ; bandIdx: int32; volumeDb: Float): void =
  expandMethodBind(className AudioEffectEQ, "set_band_gain_db", 1602489585)
  var `?param` = [getPtr bandIdx, getPtr volumeDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBandGainDb*(self: AudioEffectEQ; bandIdx: int32): Float =
  expandMethodBind(className AudioEffectEQ, "get_band_gain_db", 2339986948)
  var `?param` = [getPtr bandIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getBandCount*(self: AudioEffectEQ): int32 =
  expandMethodBind(className AudioEffectEQ, "get_band_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const AudioEffectEQ_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEQ]): Table[string, string] = AudioEffectEQ_vmap