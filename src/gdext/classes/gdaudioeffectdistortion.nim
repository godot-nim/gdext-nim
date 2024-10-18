{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setMode*(self: AudioEffectDistortion; mode: AudioEffectDistortion_Mode): void =
  expandMethodBind(className AudioEffectDistortion, "set_mode", 1314744793)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMode*(self: AudioEffectDistortion): AudioEffectDistortion_Mode =
  expandMethodBind(className AudioEffectDistortion, "get_mode", 809118343)
  var ret: encoded AudioEffectDistortion_Mode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioEffectDistortion_Mode)

proc setPreGain*(self: AudioEffectDistortion; preGain: Float): void =
  expandMethodBind(className AudioEffectDistortion, "set_pre_gain", 373806689)
  var `?param` = [getPtr preGain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPreGain*(self: AudioEffectDistortion): Float =
  expandMethodBind(className AudioEffectDistortion, "get_pre_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setKeepHfHz*(self: AudioEffectDistortion; keepHfHz: Float): void =
  expandMethodBind(className AudioEffectDistortion, "set_keep_hf_hz", 373806689)
  var `?param` = [getPtr keepHfHz]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKeepHfHz*(self: AudioEffectDistortion): Float =
  expandMethodBind(className AudioEffectDistortion, "get_keep_hf_hz", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDrive*(self: AudioEffectDistortion; drive: Float): void =
  expandMethodBind(className AudioEffectDistortion, "set_drive", 373806689)
  var `?param` = [getPtr drive]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDrive*(self: AudioEffectDistortion): Float =
  expandMethodBind(className AudioEffectDistortion, "get_drive", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPostGain*(self: AudioEffectDistortion; postGain: Float): void =
  expandMethodBind(className AudioEffectDistortion, "set_post_gain", 373806689)
  var `?param` = [getPtr postGain]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPostGain*(self: AudioEffectDistortion): Float =
  expandMethodBind(className AudioEffectDistortion, "get_post_gain", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

const AudioEffectDistortion_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectDistortion]): Table[string, string] = AudioEffectDistortion_vmap