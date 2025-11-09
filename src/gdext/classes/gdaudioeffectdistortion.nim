{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectDistortion, AudioEffect)

proc setMode*(self: AudioEffectDistortion; mode: AudioEffectDistortion_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "set_mode", 1314744793)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMode*(self: AudioEffectDistortion): AudioEffectDistortion_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "get_mode", 809118343)
  methodbind.ptrcall(self, [], AudioEffectDistortion_Mode)

proc setPreGain*(self: AudioEffectDistortion; preGain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "set_pre_gain", 373806689)
  methodbind.ptrcall(self, [getPtr preGain], void)

proc getPreGain*(self: AudioEffectDistortion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "get_pre_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setKeepHfHz*(self: AudioEffectDistortion; keepHfHz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "set_keep_hf_hz", 373806689)
  methodbind.ptrcall(self, [getPtr keepHfHz], void)

proc getKeepHfHz*(self: AudioEffectDistortion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "get_keep_hf_hz", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDrive*(self: AudioEffectDistortion; drive: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "set_drive", 373806689)
  methodbind.ptrcall(self, [getPtr drive], void)

proc getDrive*(self: AudioEffectDistortion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "get_drive", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPostGain*(self: AudioEffectDistortion; postGain: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "set_post_gain", 373806689)
  methodbind.ptrcall(self, [getPtr postGain], void)

proc getPostGain*(self: AudioEffectDistortion): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectDistortion, "get_post_gain", 1740695150)
  methodbind.ptrcall(self, [], Float)

template mode*(self: AudioEffectDistortion): untyped = self.getMode()
template `mode=`*(self: AudioEffectDistortion; value) = self.setMode(value)

template preGain*(self: AudioEffectDistortion): untyped = self.getPreGain()
template `preGain=`*(self: AudioEffectDistortion; value) = self.setPreGain(value)

template keepHfHz*(self: AudioEffectDistortion): untyped = self.getKeepHfHz()
template `keepHfHz=`*(self: AudioEffectDistortion; value) = self.setKeepHfHz(value)

template drive*(self: AudioEffectDistortion): untyped = self.getDrive()
template `drive=`*(self: AudioEffectDistortion; value) = self.setDrive(value)

template postGain*(self: AudioEffectDistortion): untyped = self.getPostGain()
template `postGain=`*(self: AudioEffectDistortion; value) = self.setPostGain(value)
