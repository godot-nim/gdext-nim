{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectAmplify, AudioEffect)

proc setVolumeDb*(self: AudioEffectAmplify; volume: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectAmplify, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr volume], void)

proc getVolumeDb*(self: AudioEffectAmplify): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectAmplify, "get_volume_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVolumeLinear*(self: AudioEffectAmplify; volume: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectAmplify, "set_volume_linear", 373806689)
  methodbind.ptrcall(self, [getPtr volume], void)

proc getVolumeLinear*(self: AudioEffectAmplify): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectAmplify, "get_volume_linear", 1740695150)
  methodbind.ptrcall(self, [], Float)

template volumeDb*(self: AudioEffectAmplify): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioEffectAmplify; value) = self.setVolumeDb(value)

template volumeLinear*(self: AudioEffectAmplify): untyped = self.getVolumeLinear()
template `volumeLinear=`*(self: AudioEffectAmplify; value) = self.setVolumeLinear(value)
