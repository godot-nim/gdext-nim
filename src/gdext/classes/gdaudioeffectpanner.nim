{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setPan*(self: AudioEffectPanner; cpanume: Float): void =
  expandMethodBind(className AudioEffectPanner, "set_pan", 373806689)
  methodbind.ptrcall(self, [getPtr cpanume])

proc getPan*(self: AudioEffectPanner): Float =
  expandMethodBind(className AudioEffectPanner, "get_pan", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template pan*(self: AudioEffectPanner): untyped = self.getPan()
template `pan=`*(self: AudioEffectPanner; value) = self.setPan(value)

const AudioEffectPanner_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectPanner]): Table[string, string] = AudioEffectPanner_vmap