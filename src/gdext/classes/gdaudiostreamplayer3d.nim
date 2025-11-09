{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(AudioStreamPlayer3D, Node3D)

proc setStream*(self: AudioStreamPlayer3D; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_stream", 2210767741)
  methodbind.ptrcall(self, [getPtr stream], void)

proc getStream*(self: AudioStreamPlayer3D): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_stream", 160907539)
  methodbind.ptrcall(self, [], gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer3D; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr volumeDb], void)

proc getVolumeDb*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_volume_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVolumeLinear*(self: AudioStreamPlayer3D; volumeLinear: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_volume_linear", 373806689)
  methodbind.ptrcall(self, [getPtr volumeLinear], void)

proc getVolumeLinear*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_volume_linear", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUnitSize*(self: AudioStreamPlayer3D; unitSize: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_unit_size", 373806689)
  methodbind.ptrcall(self, [getPtr unitSize], void)

proc getUnitSize*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_unit_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxDb*(self: AudioStreamPlayer3D; maxDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_max_db", 373806689)
  methodbind.ptrcall(self, [getPtr maxDb], void)

proc getMaxDb*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_max_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPitchScale*(self: AudioStreamPlayer3D; pitchScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_pitch_scale", 373806689)
  methodbind.ptrcall(self, [getPtr pitchScale], void)

proc getPitchScale*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_pitch_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc play*(self: AudioStreamPlayer3D; fromPosition: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "play", 1958160172)
  methodbind.ptrcall(self, [getPtr fromPosition], void)

proc seek*(self: AudioStreamPlayer3D; toPosition: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "seek", 373806689)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc stop*(self: AudioStreamPlayer3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlaying*(self: AudioStreamPlayer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPlaybackPosition*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_playback_position", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setBus*(self: AudioStreamPlayer3D; bus: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus], void)

proc getBus*(self: AudioStreamPlayer3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_bus", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAutoplay*(self: AudioStreamPlayer3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoplayEnabled*(self: AudioStreamPlayer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "is_autoplay_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPlaying*(self: AudioStreamPlayer3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_playing", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setMaxDistance*(self: AudioStreamPlayer3D; meters: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr meters], void)

proc getMaxDistance*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAreaMask*(self: AudioStreamPlayer3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_area_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getAreaMask*(self: AudioStreamPlayer3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_area_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setEmissionAngle*(self: AudioStreamPlayer3D; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_emission_angle", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc getEmissionAngle*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_emission_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEmissionAngleEnabled*(self: AudioStreamPlayer3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_emission_angle_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEmissionAngleEnabled*(self: AudioStreamPlayer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "is_emission_angle_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEmissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D; db: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_emission_angle_filter_attenuation_db", 373806689)
  methodbind.ptrcall(self, [getPtr db], void)

proc getEmissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_emission_angle_filter_attenuation_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttenuationFilterCutoffHz*(self: AudioStreamPlayer3D; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_attenuation_filter_cutoff_hz", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc getAttenuationFilterCutoffHz*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_attenuation_filter_cutoff_hz", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttenuationFilterDb*(self: AudioStreamPlayer3D; db: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_attenuation_filter_db", 373806689)
  methodbind.ptrcall(self, [getPtr db], void)

proc getAttenuationFilterDb*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_attenuation_filter_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttenuationModel*(self: AudioStreamPlayer3D; model: AudioStreamPlayer3D_AttenuationModel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_attenuation_model", 2988086229)
  methodbind.ptrcall(self, [getPtr model], void)

proc getAttenuationModel*(self: AudioStreamPlayer3D): AudioStreamPlayer3D_AttenuationModel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_attenuation_model", 3035106060)
  methodbind.ptrcall(self, [], AudioStreamPlayer3D_AttenuationModel)

proc setDopplerTracking*(self: AudioStreamPlayer3D; mode: AudioStreamPlayer3D_DopplerTracking): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_doppler_tracking", 3968161450)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDopplerTracking*(self: AudioStreamPlayer3D): AudioStreamPlayer3D_DopplerTracking =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_doppler_tracking", 1702418664)
  methodbind.ptrcall(self, [], AudioStreamPlayer3D_DopplerTracking)

proc setStreamPaused*(self: AudioStreamPlayer3D; pause: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_stream_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr pause], void)

proc getStreamPaused*(self: AudioStreamPlayer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_stream_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaxPolyphony*(self: AudioStreamPlayer3D; maxPolyphony: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_max_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolyphony], void)

proc getMaxPolyphony*(self: AudioStreamPlayer3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_max_polyphony", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPanningStrength*(self: AudioStreamPlayer3D; panningStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_panning_strength", 373806689)
  methodbind.ptrcall(self, [getPtr panningStrength], void)

proc getPanningStrength*(self: AudioStreamPlayer3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_panning_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc hasStreamPlayback*(self: AudioStreamPlayer3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "has_stream_playback", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getStreamPlayback*(self: AudioStreamPlayer3D): gdref AudioStreamPlayback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_stream_playback", 210135309)
  methodbind.ptrcall(self, [], gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer3D; playbackType: AudioServer_PlaybackType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "set_playback_type", 725473817)
  methodbind.ptrcall(self, [getPtr playbackType], void)

proc getPlaybackType*(self: AudioStreamPlayer3D): AudioServer_PlaybackType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer3D, "get_playback_type", 4011264623)
  methodbind.ptrcall(self, [], AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer3D): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer3D; value) = self.setStream(value)

template attenuationModel*(self: AudioStreamPlayer3D): untyped = self.getAttenuationModel()
template `attenuationModel=`*(self: AudioStreamPlayer3D; value) = self.setAttenuationModel(value)

template volumeDb*(self: AudioStreamPlayer3D): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer3D; value) = self.setVolumeDb(value)

template volumeLinear*(self: AudioStreamPlayer3D): untyped = self.getVolumeLinear()
template `volumeLinear=`*(self: AudioStreamPlayer3D; value) = self.setVolumeLinear(value)

template unitSize*(self: AudioStreamPlayer3D): untyped = self.getUnitSize()
template `unitSize=`*(self: AudioStreamPlayer3D; value) = self.setUnitSize(value)

template maxDb*(self: AudioStreamPlayer3D): untyped = self.getMaxDb()
template `maxDb=`*(self: AudioStreamPlayer3D; value) = self.setMaxDb(value)

template pitchScale*(self: AudioStreamPlayer3D): untyped = self.getPitchScale()
template `pitchScale=`*(self: AudioStreamPlayer3D; value) = self.setPitchScale(value)

template playing*(self: AudioStreamPlayer3D): untyped = self.isPlaying()
template `playing=`*(self: AudioStreamPlayer3D; value) = self.setPlaying(value)

template autoplay*(self: AudioStreamPlayer3D): untyped = self.isAutoplayEnabled()
template `autoplay=`*(self: AudioStreamPlayer3D; value) = self.setAutoplay(value)

template streamPaused*(self: AudioStreamPlayer3D): untyped = self.getStreamPaused()
template `streamPaused=`*(self: AudioStreamPlayer3D; value) = self.setStreamPaused(value)

template maxDistance*(self: AudioStreamPlayer3D): untyped = self.getMaxDistance()
template `maxDistance=`*(self: AudioStreamPlayer3D; value) = self.setMaxDistance(value)

template maxPolyphony*(self: AudioStreamPlayer3D): untyped = self.getMaxPolyphony()
template `maxPolyphony=`*(self: AudioStreamPlayer3D; value) = self.setMaxPolyphony(value)

template panningStrength*(self: AudioStreamPlayer3D): untyped = self.getPanningStrength()
template `panningStrength=`*(self: AudioStreamPlayer3D; value) = self.setPanningStrength(value)

template bus*(self: AudioStreamPlayer3D): untyped = self.getBus()
template `bus=`*(self: AudioStreamPlayer3D; value) = self.setBus(value)

template areaMask*(self: AudioStreamPlayer3D): untyped = self.getAreaMask()
template `areaMask=`*(self: AudioStreamPlayer3D; value) = self.setAreaMask(value)

template playbackType*(self: AudioStreamPlayer3D): untyped = self.getPlaybackType()
template `playbackType=`*(self: AudioStreamPlayer3D; value) = self.setPlaybackType(value)

template emissionAngleEnabled*(self: AudioStreamPlayer3D): untyped = self.isEmissionAngleEnabled()
template `emissionAngleEnabled=`*(self: AudioStreamPlayer3D; value) = self.setEmissionAngleEnabled(value)

template emissionAngleDegrees*(self: AudioStreamPlayer3D): untyped = self.getEmissionAngle()
template `emissionAngleDegrees=`*(self: AudioStreamPlayer3D; value) = self.setEmissionAngle(value)

template emissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D): untyped = self.getEmissionAngleFilterAttenuationDb()
template `emissionAngleFilterAttenuationDb=`*(self: AudioStreamPlayer3D; value) = self.setEmissionAngleFilterAttenuationDb(value)

template attenuationFilterCutoffHz*(self: AudioStreamPlayer3D): untyped = self.getAttenuationFilterCutoffHz()
template `attenuationFilterCutoffHz=`*(self: AudioStreamPlayer3D; value) = self.setAttenuationFilterCutoffHz(value)

template attenuationFilterDb*(self: AudioStreamPlayer3D): untyped = self.getAttenuationFilterDb()
template `attenuationFilterDb=`*(self: AudioStreamPlayer3D; value) = self.setAttenuationFilterDb(value)

template dopplerTracking*(self: AudioStreamPlayer3D): untyped = self.getDopplerTracking()
template `dopplerTracking=`*(self: AudioStreamPlayer3D; value) = self.setDopplerTracking(value)
