{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setPan*(self: AudioEffectPanner; cpanume: Float): void =
  expandMethodBind(className AudioEffectPanner, "set_pan", 373806689)
  var `?param` = [getPtr cpanume]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPan*(self: AudioEffectPanner): Float =
  expandMethodBind(className AudioEffectPanner, "get_pan", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template pan*(self: AudioEffectPanner): untyped = self.getPan()
template `pan=`*(self: AudioEffectPanner; value) = self.setPan(value)

const AudioEffectPanner_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectPanner]): Table[string, string] = AudioEffectPanner_vmap