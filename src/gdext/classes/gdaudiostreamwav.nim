{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamWAV, AudioStream)

proc loadFromBuffer*(_: typedesc[AudioStreamWAV]; streamData: PackedByteArray; options: Dictionary = newDictionary()): gdref AudioStreamWAV =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "load_from_buffer", 4266838938)
  methodbind.ptrcall([getPtr streamData, getPtr options], gdref AudioStreamWAV)

proc loadFromFile*(_: typedesc[AudioStreamWAV]; path: String; options: Dictionary = newDictionary()): gdref AudioStreamWAV =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "load_from_file", 4015802384)
  methodbind.ptrcall([getPtr path, getPtr options], gdref AudioStreamWAV)

proc setData*(self: AudioStreamWAV; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_data", 2971499966)
  methodbind.ptrcall(self, [getPtr data], void)

proc getData*(self: AudioStreamWAV): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_data", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setFormat*(self: AudioStreamWAV; format: AudioStreamWAV_Format): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_format", 60648488)
  methodbind.ptrcall(self, [getPtr format], void)

proc getFormat*(self: AudioStreamWAV): AudioStreamWAV_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_format", 3151724922)
  methodbind.ptrcall(self, [], AudioStreamWAV_Format)

proc setLoopMode*(self: AudioStreamWAV; loopMode: AudioStreamWAV_LoopMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_loop_mode", 2444882972)
  methodbind.ptrcall(self, [getPtr loopMode], void)

proc getLoopMode*(self: AudioStreamWAV): AudioStreamWAV_LoopMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_loop_mode", 393560655)
  methodbind.ptrcall(self, [], AudioStreamWAV_LoopMode)

proc setLoopBegin*(self: AudioStreamWAV; loopBegin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_loop_begin", 1286410249)
  methodbind.ptrcall(self, [getPtr loopBegin], void)

proc getLoopBegin*(self: AudioStreamWAV): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_loop_begin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setLoopEnd*(self: AudioStreamWAV; loopEnd: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_loop_end", 1286410249)
  methodbind.ptrcall(self, [getPtr loopEnd], void)

proc getLoopEnd*(self: AudioStreamWAV): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_loop_end", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMixRate*(self: AudioStreamWAV; mixRate: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_mix_rate", 1286410249)
  methodbind.ptrcall(self, [getPtr mixRate], void)

proc getMixRate*(self: AudioStreamWAV): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_mix_rate", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setStereo*(self: AudioStreamWAV; stereo: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_stereo", 2586408642)
  methodbind.ptrcall(self, [getPtr stereo], void)

proc isStereo*(self: AudioStreamWAV): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "is_stereo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTags*(self: AudioStreamWAV; tags: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "set_tags", 4155329257)
  methodbind.ptrcall(self, [getPtr tags], void)

proc getTags*(self: AudioStreamWAV): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "get_tags", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc saveToWav*(self: AudioStreamWAV; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamWAV, "save_to_wav", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

template data*(self: AudioStreamWAV): untyped = self.getData()
template `data=`*(self: AudioStreamWAV; value) = self.setData(value)

template format*(self: AudioStreamWAV): untyped = self.getFormat()
template `format=`*(self: AudioStreamWAV; value) = self.setFormat(value)

template loopMode*(self: AudioStreamWAV): untyped = self.getLoopMode()
template `loopMode=`*(self: AudioStreamWAV; value) = self.setLoopMode(value)

template loopBegin*(self: AudioStreamWAV): untyped = self.getLoopBegin()
template `loopBegin=`*(self: AudioStreamWAV; value) = self.setLoopBegin(value)

template loopEnd*(self: AudioStreamWAV): untyped = self.getLoopEnd()
template `loopEnd=`*(self: AudioStreamWAV; value) = self.setLoopEnd(value)

template mixRate*(self: AudioStreamWAV): untyped = self.getMixRate()
template `mixRate=`*(self: AudioStreamWAV; value) = self.setMixRate(value)

template stereo*(self: AudioStreamWAV): untyped = self.isStereo()
template `stereo=`*(self: AudioStreamWAV; value) = self.setStereo(value)

template tags*(self: AudioStreamWAV): untyped = self.getTags()
template `tags=`*(self: AudioStreamWAV; value) = self.setTags(value)
