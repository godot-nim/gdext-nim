{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setBandGainDb*(self: AudioEffectEq; bandIdx: int32; volumeDb: Float): void =
  expandMethodBind(className AudioEffectEq, "set_band_gain_db", 1602489585)
  var `?param` = [getPtr bandIdx, getPtr volumeDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBandGainDb*(self: AudioEffectEq; bandIdx: int32): Float =
  expandMethodBind(className AudioEffectEq, "get_band_gain_db", 2339986948)
  var `?param` = [getPtr bandIdx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getBandCount*(self: AudioEffectEq): int32 =
  expandMethodBind(className AudioEffectEq, "get_band_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

const AudioEffectEq_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq]): Table[string, string] = AudioEffectEq_vmap