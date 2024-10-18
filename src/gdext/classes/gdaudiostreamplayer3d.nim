{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setStream*(self: AudioStreamPlayer3D; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_stream", 2210767741)
  var `?param` = [getPtr stream]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStream*(self: AudioStreamPlayer3D): gdref AudioStream =
  expandMethodBind(className AudioStreamPlayer3D, "get_stream", 160907539)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer3D; volumeDb: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_volume_db", 373806689)
  var `?param` = [getPtr volumeDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVolumeDb*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_volume_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUnitSize*(self: AudioStreamPlayer3D; unitSize: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_unit_size", 373806689)
  var `?param` = [getPtr unitSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUnitSize*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_unit_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxDb*(self: AudioStreamPlayer3D; maxDb: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_max_db", 373806689)
  var `?param` = [getPtr maxDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxDb*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_max_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPitchScale*(self: AudioStreamPlayer3D; pitchScale: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_pitch_scale", 373806689)
  var `?param` = [getPtr pitchScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPitchScale*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_pitch_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc play*(self: AudioStreamPlayer3D; fromPosition: Float = 0.0): void =
  expandMethodBind(className AudioStreamPlayer3D, "play", 1958160172)
  var `?param` = [getPtr fromPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc seek*(self: AudioStreamPlayer3D; toPosition: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "seek", 373806689)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc stop*(self: AudioStreamPlayer3D): void =
  expandMethodBind(className AudioStreamPlayer3D, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc isPlaying*(self: AudioStreamPlayer3D): bool =
  expandMethodBind(className AudioStreamPlayer3D, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPlaybackPosition*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_playback_position", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBus*(self: AudioStreamPlayer3D; bus: StringName): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_bus", 3304788590)
  var `?param` = [getPtr bus]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBus*(self: AudioStreamPlayer3D): StringName =
  expandMethodBind(className AudioStreamPlayer3D, "get_bus", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AudioStreamPlayer3D; enable: bool): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_autoplay", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoplayEnabled*(self: AudioStreamPlayer3D): bool =
  expandMethodBind(className AudioStreamPlayer3D, "is_autoplay_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaxDistance*(self: AudioStreamPlayer3D; meters: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_max_distance", 373806689)
  var `?param` = [getPtr meters]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxDistance*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAreaMask*(self: AudioStreamPlayer3D; mask: uint32): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_area_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAreaMask*(self: AudioStreamPlayer3D): uint32 =
  expandMethodBind(className AudioStreamPlayer3D, "get_area_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setEmissionAngle*(self: AudioStreamPlayer3D; degrees: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_emission_angle", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionAngle*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_emission_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEmissionAngleEnabled*(self: AudioStreamPlayer3D; enabled: bool): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_emission_angle_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmissionAngleEnabled*(self: AudioStreamPlayer3D): bool =
  expandMethodBind(className AudioStreamPlayer3D, "is_emission_angle_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEmissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D; db: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_emission_angle_filter_attenuation_db", 373806689)
  var `?param` = [getPtr db]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEmissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_emission_angle_filter_attenuation_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAttenuationFilterCutoffHz*(self: AudioStreamPlayer3D; degrees: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_attenuation_filter_cutoff_hz", 373806689)
  var `?param` = [getPtr degrees]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttenuationFilterCutoffHz*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_attenuation_filter_cutoff_hz", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAttenuationFilterDb*(self: AudioStreamPlayer3D; db: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_attenuation_filter_db", 373806689)
  var `?param` = [getPtr db]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttenuationFilterDb*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_attenuation_filter_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAttenuationModel*(self: AudioStreamPlayer3D; model: AudioStreamPlayer3D_AttenuationModel): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_attenuation_model", 2988086229)
  var `?param` = [getPtr model]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttenuationModel*(self: AudioStreamPlayer3D): AudioStreamPlayer3D_AttenuationModel =
  expandMethodBind(className AudioStreamPlayer3D, "get_attenuation_model", 3035106060)
  var ret: encoded AudioStreamPlayer3D_AttenuationModel
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamPlayer3D_AttenuationModel)

proc setDopplerTracking*(self: AudioStreamPlayer3D; mode: AudioStreamPlayer3D_DopplerTracking): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_doppler_tracking", 3968161450)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDopplerTracking*(self: AudioStreamPlayer3D): AudioStreamPlayer3D_DopplerTracking =
  expandMethodBind(className AudioStreamPlayer3D, "get_doppler_tracking", 1702418664)
  var ret: encoded AudioStreamPlayer3D_DopplerTracking
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamPlayer3D_DopplerTracking)

proc setStreamPaused*(self: AudioStreamPlayer3D; pause: bool): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_stream_paused", 2586408642)
  var `?param` = [getPtr pause]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStreamPaused*(self: AudioStreamPlayer3D): bool =
  expandMethodBind(className AudioStreamPlayer3D, "get_stream_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaxPolyphony*(self: AudioStreamPlayer3D; maxPolyphony: int32): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_max_polyphony", 1286410249)
  var `?param` = [getPtr maxPolyphony]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxPolyphony*(self: AudioStreamPlayer3D): int32 =
  expandMethodBind(className AudioStreamPlayer3D, "get_max_polyphony", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPanningStrength*(self: AudioStreamPlayer3D; panningStrength: Float): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_panning_strength", 373806689)
  var `?param` = [getPtr panningStrength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPanningStrength*(self: AudioStreamPlayer3D): Float =
  expandMethodBind(className AudioStreamPlayer3D, "get_panning_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc hasStreamPlayback*(self: AudioStreamPlayer3D): bool =
  expandMethodBind(className AudioStreamPlayer3D, "has_stream_playback", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getStreamPlayback*(self: AudioStreamPlayer3D): gdref AudioStreamPlayback =
  expandMethodBind(className AudioStreamPlayer3D, "get_stream_playback", 210135309)
  var ret: encoded gdref AudioStreamPlayback
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer3D; playbackType: AudioServer_PlaybackType): void =
  expandMethodBind(className AudioStreamPlayer3D, "set_playback_type", 725473817)
  var `?param` = [getPtr playbackType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlaybackType*(self: AudioStreamPlayer3D): AudioServer_PlaybackType =
  expandMethodBind(className AudioStreamPlayer3D, "get_playback_type", 4011264623)
  var ret: encoded AudioServer_PlaybackType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer3D): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer3D; value) = self.setStream(value)

template attenuationModel*(self: AudioStreamPlayer3D): untyped = self.getAttenuationModel()
template `attenuationModel=`*(self: AudioStreamPlayer3D; value) = self.setAttenuationModel(value)

template volumeDb*(self: AudioStreamPlayer3D): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer3D; value) = self.setVolumeDb(value)

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

const AudioStreamPlayer3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlayer3D]): Table[string, string] = AudioStreamPlayer3D_vmap

proc finished*(self: AudioStreamPlayer3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)