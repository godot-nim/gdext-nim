{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectPanner, AudioEffect)

proc setPan*(self: AudioEffectPanner; cpanume: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPanner, "set_pan", 373806689)
  methodbind.ptrcall(self, [getPtr cpanume], void)

proc getPan*(self: AudioEffectPanner): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPanner, "get_pan", 1740695150)
  methodbind.ptrcall(self, [], Float)

template pan*(self: AudioEffectPanner): untyped = self.getPan()
template `pan=`*(self: AudioEffectPanner; value) = self.setPan(value)
