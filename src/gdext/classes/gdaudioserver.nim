{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(AudioServer, Object)

proc setBusCount*(self: AudioServer; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_count", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getBusCount*(self: AudioServer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc removeBus*(self: AudioServer; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "remove_bus", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc addBus*(self: AudioServer; atPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "add_bus", 1025054187)
  methodbind.ptrcall(self, [getPtr atPosition], void)

proc moveBus*(self: AudioServer; index: int32; toIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "move_bus", 3937882851)
  methodbind.ptrcall(self, [getPtr index, getPtr toIndex], void)

proc setBusName*(self: AudioServer; busIdx: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_name", 501894301)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr name], void)

proc getBusName*(self: AudioServer; busIdx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_name", 844755477)
  methodbind.ptrcall(self, [getPtr busIdx], String)

proc getBusIndex*(self: AudioServer; busName: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_index", 2458036349)
  methodbind.ptrcall(self, [getPtr busName], int32)

proc getBusChannels*(self: AudioServer; busIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_channels", 923996154)
  methodbind.ptrcall(self, [getPtr busIdx], int32)

proc setBusVolumeDb*(self: AudioServer; busIdx: int32; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_volume_db", 1602489585)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr volumeDb], void)

proc getBusVolumeDb*(self: AudioServer; busIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_volume_db", 2339986948)
  methodbind.ptrcall(self, [getPtr busIdx], Float)

proc setBusVolumeLinear*(self: AudioServer; busIdx: int32; volumeLinear: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_volume_linear", 1602489585)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr volumeLinear], void)

proc getBusVolumeLinear*(self: AudioServer; busIdx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_volume_linear", 2339986948)
  methodbind.ptrcall(self, [getPtr busIdx], Float)

proc setBusSend*(self: AudioServer; busIdx: int32; send: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_send", 3780747571)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr send], void)

proc getBusSend*(self: AudioServer; busIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_send", 659327637)
  methodbind.ptrcall(self, [getPtr busIdx], StringName)

proc setBusSolo*(self: AudioServer; busIdx: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_solo", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable], void)

proc isBusSolo*(self: AudioServer; busIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "is_bus_solo", 1116898809)
  methodbind.ptrcall(self, [getPtr busIdx], bool)

proc setBusMute*(self: AudioServer; busIdx: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_mute", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable], void)

proc isBusMute*(self: AudioServer; busIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "is_bus_mute", 1116898809)
  methodbind.ptrcall(self, [getPtr busIdx], bool)

proc setBusBypassEffects*(self: AudioServer; busIdx: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_bypass_effects", 300928843)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr enable], void)

proc isBusBypassingEffects*(self: AudioServer; busIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "is_bus_bypassing_effects", 1116898809)
  methodbind.ptrcall(self, [getPtr busIdx], bool)

proc addBusEffect*(self: AudioServer; busIdx: int32; effect: gdref AudioEffect; atPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "add_bus_effect", 4068819785)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effect, getPtr atPosition], void)

proc removeBusEffect*(self: AudioServer; busIdx: int32; effectIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "remove_bus_effect", 3937882851)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx], void)

proc getBusEffectCount*(self: AudioServer; busIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_effect_count", 3744713108)
  methodbind.ptrcall(self, [getPtr busIdx], int32)

proc getBusEffect*(self: AudioServer; busIdx: int32; effectIdx: int32): gdref AudioEffect =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_effect", 726064442)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx], gdref AudioEffect)

proc getBusEffectInstance*(self: AudioServer; busIdx: int32; effectIdx: int32; channel: int32 = 0): gdref AudioEffectInstance =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_effect_instance", 1829771234)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr channel], gdref AudioEffectInstance)

proc swapBusEffects*(self: AudioServer; busIdx: int32; effectIdx: int32; byEffectIdx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "swap_bus_effects", 1649997291)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr byEffectIdx], void)

proc setBusEffectEnabled*(self: AudioServer; busIdx: int32; effectIdx: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_effect_enabled", 1383440665)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx, getPtr enabled], void)

proc isBusEffectEnabled*(self: AudioServer; busIdx: int32; effectIdx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "is_bus_effect_enabled", 2522259332)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr effectIdx], bool)

proc getBusPeakVolumeLeftDb*(self: AudioServer; busIdx: int32; channel: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_peak_volume_left_db", 3085491603)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr channel], Float)

proc getBusPeakVolumeRightDb*(self: AudioServer; busIdx: int32; channel: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_bus_peak_volume_right_db", 3085491603)
  methodbind.ptrcall(self, [getPtr busIdx, getPtr channel], Float)

proc setPlaybackSpeedScale*(self: AudioServer; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_playback_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getPlaybackSpeedScale*(self: AudioServer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_playback_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc lock*(self: AudioServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "lock", 3218959716)
  methodbind.ptrcall(self, [], void)

proc unlock*(self: AudioServer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "unlock", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSpeakerMode*(self: AudioServer): AudioServer_SpeakerMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_speaker_mode", 2549190337)
  methodbind.ptrcall(self, [], AudioServer_SpeakerMode)

proc getMixRate*(self: AudioServer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_mix_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getInputMixRate*(self: AudioServer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_input_mix_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getDriverName*(self: AudioServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_driver_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getOutputDeviceList*(self: AudioServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_output_device_list", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getOutputDevice*(self: AudioServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_output_device", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setOutputDevice*(self: AudioServer; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_output_device", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getTimeToNextMix*(self: AudioServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_time_to_next_mix", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getTimeSinceLastMix*(self: AudioServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_time_since_last_mix", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getOutputLatency*(self: AudioServer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_output_latency", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getInputDeviceList*(self: AudioServer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_input_device_list", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getInputDevice*(self: AudioServer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "get_input_device", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setInputDevice*(self: AudioServer; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_input_device", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc setBusLayout*(self: AudioServer; busLayout: gdref AudioBusLayout): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_bus_layout", 3319058824)
  methodbind.ptrcall(self, [getPtr busLayout], void)

proc generateBusLayout*(self: AudioServer): gdref AudioBusLayout =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "generate_bus_layout", 3769973890)
  methodbind.ptrcall(self, [], gdref AudioBusLayout)

proc setEnableTaggingUsedAudioStreams*(self: AudioServer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "set_enable_tagging_used_audio_streams", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isStreamRegisteredAsSample*(self: AudioServer; stream: gdref AudioStream): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "is_stream_registered_as_sample", 500225754)
  methodbind.ptrcall(self, [getPtr stream], bool)

proc registerStreamAsSample*(self: AudioServer; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioServer, "register_stream_as_sample", 2210767741)
  methodbind.ptrcall(self, [getPtr stream], void)

template busCount*(self: AudioServer): untyped = self.getBusCount()
template `busCount=`*(self: AudioServer; value) = self.setBusCount(value)

template outputDevice*(self: AudioServer): untyped = self.getOutputDevice()
template `outputDevice=`*(self: AudioServer; value) = self.setOutputDevice(value)

template inputDevice*(self: AudioServer): untyped = self.getInputDevice()
template `inputDevice=`*(self: AudioServer; value) = self.setInputDevice(value)

template playbackSpeedScale*(self: AudioServer): untyped = self.getPlaybackSpeedScale()
template `playbackSpeedScale=`*(self: AudioServer; value) = self.setPlaybackSpeedScale(value)
