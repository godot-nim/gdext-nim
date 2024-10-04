{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setVolumeDb*(self: AudioEffectAmplify; volume: Float): void =
  expandMethodBind(className AudioEffectAmplify, "set_volume_db", 373806689)
  var `?param` = [getPtr volume]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVolumeDb*(self: AudioEffectAmplify): Float =
  expandMethodBind(className AudioEffectAmplify, "get_volume_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template volumeDb*(self: AudioEffectAmplify): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioEffectAmplify; value) = self.setVolumeDb(value)

const AudioEffectAmplify_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectAmplify]): Table[string, string] = AudioEffectAmplify_vmap