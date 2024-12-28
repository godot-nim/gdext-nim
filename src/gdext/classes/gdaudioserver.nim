{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc setBusCount*(self: AudioServer; amount: int32): void =
  expandMethodBind(className AudioServer, "set_bus_count", 1286410249)
  methodbind.ptrcall(self, [getPtr amount])

proc getBusCount*(self: AudioServer): int32 =
  expandMethodBind(className AudioServer, "get_bus_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc removeBus*(self: AudioServer; index: int32): void =
  expandMethodBind(className AudioServer, "remove_bus", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc addBus*(self: AudioServer; atPosition: int32 = -1): void =
  expandMethodBind(className AudioServer, "add_bus", 1025054187)
  methodbind.ptrcall(self, [getPtr atPosition])

proc moveBus*(self: AudioServer; index: int32; toIndex: int32): void =
  expandMethodBind(className AudioServer, "move_bus", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr toIndex])

proc setBusName*(self: AudioServer; busIdx: int32; name: String): void =
  expandMethodBind(className AudioServer, "set_bus_name", 501894301)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr name])

proc getBusName*(self: AudioServer; busIdx: int32): String =
  expandMethodBind(className AudioServer, "get_bus_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(String)

proc getBusIndex*(self: AudioServer; busName: StringName): int32 =
  expandMethodBind(className AudioServer, "get_bus_index", 2458036349)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr busName], addr ret)
  (addr ret).decode_result(int32)

proc getBusChannels*(self: AudioServer; busIdx: int32): int32 =
  expandMethodBind(className AudioServer, "get_bus_channels", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(int32)

proc setBusVolumeDb*(self: AudioServer; busIdx: int32; volumeDb: Float): void =
  expandMethodBind(className AudioServer, "set_bus_volume_db", 1602489585)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr volumeDb])

proc getBusVolumeDb*(self: AudioServer; busIdx: int32): Float =
  expandMethodBind(className AudioServer, "get_bus_volume_db", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(Float)

proc setBusSend*(self: AudioServer; busIdx: int32; send: StringName): void =
  expandMethodBind(className AudioServer, "set_bus_send", 3780747571)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr send])

proc getBusSend*(self: AudioServer; busIdx: int32): StringName =
  expandMethodBind(className AudioServer, "get_bus_send", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(StringName)

proc setBusSolo*(self: AudioServer; busIdx: int32; enable: bool): void =
  expandMethodBind(className AudioServer, "set_bus_solo", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable])

proc isBusSolo*(self: AudioServer; busIdx: int32): bool =
  expandMethodBind(className AudioServer, "is_bus_solo", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(bool)

proc setBusMute*(self: AudioServer; busIdx: int32; enable: bool): void =
  expandMethodBind(className AudioServer, "set_bus_mute", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable])

proc isBusMute*(self: AudioServer; busIdx: int32): bool =
  expandMethodBind(className AudioServer, "is_bus_mute", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(bool)

proc setBusBypassEffects*(self: AudioServer; busIdx: int32; enable: bool): void =
  expandMethodBind(className AudioServer, "set_bus_bypass_effects", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable])

proc isBusBypassingEffects*(self: AudioServer; busIdx: int32): bool =
  expandMethodBind(className AudioServer, "is_bus_bypassing_effects", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(bool)

proc addBusEffect*(self: AudioServer; busIdx: int32; effect: gdref AudioEffect; atPosition: int32 = -1): void =
  expandMethodBind(className AudioServer, "add_bus_effect", 4068819785)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effect, getPtr atPosition])

proc removeBusEffect*(self: AudioServer; busIdx: int32; effectIdx: int32): void =
  expandMethodBind(className AudioServer, "remove_bus_effect", 3937882851)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx])

proc getBusEffectCount*(self: AudioServer; busIdx: int32): int32 =
  expandMethodBind(className AudioServer, "get_bus_effect_count", 3744713108)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr busIdx], addr ret)
  (addr ret).decode_result(int32)

proc getBusEffect*(self: AudioServer; busIdx: int32; effectIdx: int32): gdref AudioEffect =
  expandMethodBind(className AudioServer, "get_bus_effect", 726064442)
  var ret: encoded gdref AudioEffect
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx], addr ret)
  (addr ret).decode_result(gdref AudioEffect)

proc getBusEffectInstance*(self: AudioServer; busIdx: int32; effectIdx: int32; channel: int32 = 0): gdref AudioEffectInstance =
  expandMethodBind(className AudioServer, "get_bus_effect_instance", 1829771234)
  var ret: encoded gdref AudioEffectInstance
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr channel], addr ret)
  (addr ret).decode_result(gdref AudioEffectInstance)

proc swapBusEffects*(self: AudioServer; busIdx: int32; effectIdx: int32; byEffectIdx: int32): void =
  expandMethodBind(className AudioServer, "swap_bus_effects", 1649997291)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr byEffectIdx])

proc setBusEffectEnabled*(self: AudioServer; busIdx: int32; effectIdx: int32; enabled: bool): void =
  expandMethodBind(className AudioServer, "set_bus_effect_enabled", 1383440665)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr enabled])

proc isBusEffectEnabled*(self: AudioServer; busIdx: int32; effectIdx: int32): bool =
  expandMethodBind(className AudioServer, "is_bus_effect_enabled", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx], addr ret)
  (addr ret).decode_result(bool)

proc getBusPeakVolumeLeftDb*(self: AudioServer; busIdx: int32; channel: int32): Float =
  expandMethodBind(className AudioServer, "get_bus_peak_volume_left_db", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr busIdx, getPtr channel], addr ret)
  (addr ret).decode_result(Float)

proc getBusPeakVolumeRightDb*(self: AudioServer; busIdx: int32; channel: int32): Float =
  expandMethodBind(className AudioServer, "get_bus_peak_volume_right_db", 3085491603)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr busIdx, getPtr channel], addr ret)
  (addr ret).decode_result(Float)

proc setPlaybackSpeedScale*(self: AudioServer; scale: Float): void =
  expandMethodBind(className AudioServer, "set_playback_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale])

proc getPlaybackSpeedScale*(self: AudioServer): Float =
  expandMethodBind(className AudioServer, "get_playback_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc lock*(self: AudioServer): void =
  expandMethodBind(className AudioServer, "lock", 3218959716)
  methodbind.ptrcall(self, [])

proc unlock*(self: AudioServer): void =
  expandMethodBind(className AudioServer, "unlock", 3218959716)
  methodbind.ptrcall(self, [])

proc getSpeakerMode*(self: AudioServer): AudioServer_SpeakerMode =
  expandMethodBind(className AudioServer, "get_speaker_mode", 2549190337)
  var ret: encoded AudioServer_SpeakerMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioServer_SpeakerMode)

proc getMixRate*(self: AudioServer): Float =
  expandMethodBind(className AudioServer, "get_mix_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getOutputDeviceList*(self: AudioServer): PackedStringArray =
  expandMethodBind(className AudioServer, "get_output_device_list", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getOutputDevice*(self: AudioServer): String =
  expandMethodBind(className AudioServer, "get_output_device", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setOutputDevice*(self: AudioServer; name: String): void =
  expandMethodBind(className AudioServer, "set_output_device", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getTimeToNextMix*(self: AudioServer): float64 =
  expandMethodBind(className AudioServer, "get_time_to_next_mix", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getTimeSinceLastMix*(self: AudioServer): float64 =
  expandMethodBind(className AudioServer, "get_time_since_last_mix", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getOutputLatency*(self: AudioServer): float64 =
  expandMethodBind(className AudioServer, "get_output_latency", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getInputDeviceList*(self: AudioServer): PackedStringArray =
  expandMethodBind(className AudioServer, "get_input_device_list", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getInputDevice*(self: AudioServer): String =
  expandMethodBind(className AudioServer, "get_input_device", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setInputDevice*(self: AudioServer; name: String): void =
  expandMethodBind(className AudioServer, "set_input_device", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc setBusLayout*(self: AudioServer; busLayout: gdref AudioBusLayout): void =
  expandMethodBind(className AudioServer, "set_bus_layout", 3319058824)
  methodbind.ptrcall(self, [getPtr busLayout])

proc generateBusLayout*(self: AudioServer): gdref AudioBusLayout =
  expandMethodBind(className AudioServer, "generate_bus_layout", 3769973890)
  var ret: encoded gdref AudioBusLayout
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioBusLayout)

proc setEnableTaggingUsedAudioStreams*(self: AudioServer; enable: bool): void =
  expandMethodBind(className AudioServer, "set_enable_tagging_used_audio_streams", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isStreamRegisteredAsSample*(self: AudioServer; stream: gdref AudioStream): bool =
  expandMethodBind(className AudioServer, "is_stream_registered_as_sample", 500225754)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr stream], addr ret)
  (addr ret).decode_result(bool)

proc registerStreamAsSample*(self: AudioServer; stream: gdref AudioStream): void =
  expandMethodBind(className AudioServer, "register_stream_as_sample", 2210767741)
  methodbind.ptrcall(self, [getPtr stream])

template busCount*(self: AudioServer): untyped = self.getBusCount()
template `busCount=`*(self: AudioServer; value) = self.setBusCount(value)

template outputDevice*(self: AudioServer): untyped = self.getOutputDevice()
template `outputDevice=`*(self: AudioServer; value) = self.setOutputDevice(value)

template inputDevice*(self: AudioServer): untyped = self.getInputDevice()
template `inputDevice=`*(self: AudioServer; value) = self.setInputDevice(value)

template playbackSpeedScale*(self: AudioServer): untyped = self.getPlaybackSpeedScale()
template `playbackSpeedScale=`*(self: AudioServer; value) = self.setPlaybackSpeedScale(value)

const AudioServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioServer]): Table[string, string] = AudioServer_vmap

proc busLayoutChanged*(self: AudioServer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bus_layout_changed")
  self.emitSignal(signalname)

proc busRenamed*(self: AudioServer; busIndex: Variant; oldName: Variant; newName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("bus_renamed")
  let args = [busIndex, oldName, newName]
  self.emitSignal(signalname, args)