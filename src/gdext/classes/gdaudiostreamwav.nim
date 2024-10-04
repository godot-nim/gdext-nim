{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setData*(self: AudioStreamWav; data: PackedByteArray): void =
  expandMethodBind(className AudioStreamWav, "set_data", 2971499966)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getData*(self: AudioStreamWav): PackedByteArray =
  expandMethodBind(className AudioStreamWav, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setFormat*(self: AudioStreamWav; format: AudioStreamWav_Format): void =
  expandMethodBind(className AudioStreamWav, "set_format", 60648488)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: AudioStreamWav): AudioStreamWav_Format =
  expandMethodBind(className AudioStreamWav, "get_format", 3151724922)
  var ret: encoded AudioStreamWav_Format
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamWav_Format)

proc setLoopMode*(self: AudioStreamWav; loopMode: AudioStreamWav_LoopMode): void =
  expandMethodBind(className AudioStreamWav, "set_loop_mode", 2444882972)
  var `?param` = [getPtr loopMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopMode*(self: AudioStreamWav): AudioStreamWav_LoopMode =
  expandMethodBind(className AudioStreamWav, "get_loop_mode", 393560655)
  var ret: encoded AudioStreamWav_LoopMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamWav_LoopMode)

proc setLoopBegin*(self: AudioStreamWav; loopBegin: int32): void =
  expandMethodBind(className AudioStreamWav, "set_loop_begin", 1286410249)
  var `?param` = [getPtr loopBegin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopBegin*(self: AudioStreamWav): int32 =
  expandMethodBind(className AudioStreamWav, "get_loop_begin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setLoopEnd*(self: AudioStreamWav; loopEnd: int32): void =
  expandMethodBind(className AudioStreamWav, "set_loop_end", 1286410249)
  var `?param` = [getPtr loopEnd]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopEnd*(self: AudioStreamWav): int32 =
  expandMethodBind(className AudioStreamWav, "get_loop_end", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMixRate*(self: AudioStreamWav; mixRate: int32): void =
  expandMethodBind(className AudioStreamWav, "set_mix_rate", 1286410249)
  var `?param` = [getPtr mixRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMixRate*(self: AudioStreamWav): int32 =
  expandMethodBind(className AudioStreamWav, "get_mix_rate", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setStereo*(self: AudioStreamWav; stereo: bool): void =
  expandMethodBind(className AudioStreamWav, "set_stereo", 2586408642)
  var `?param` = [getPtr stereo]
  methodbind.ptrcall(self, addr `?param`[0])

proc isStereo*(self: AudioStreamWav): bool =
  expandMethodBind(className AudioStreamWav, "is_stereo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc saveToWav*(self: AudioStreamWav; path: String): Error =
  expandMethodBind(className AudioStreamWav, "save_to_wav", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

template data*(self: AudioStreamWav): untyped = self.getData()
template `data=`*(self: AudioStreamWav; value) = self.setData(value)

template format*(self: AudioStreamWav): untyped = self.getFormat()
template `format=`*(self: AudioStreamWav; value) = self.setFormat(value)

template loopMode*(self: AudioStreamWav): untyped = self.getLoopMode()
template `loopMode=`*(self: AudioStreamWav; value) = self.setLoopMode(value)

template loopBegin*(self: AudioStreamWav): untyped = self.getLoopBegin()
template `loopBegin=`*(self: AudioStreamWav; value) = self.setLoopBegin(value)

template loopEnd*(self: AudioStreamWav): untyped = self.getLoopEnd()
template `loopEnd=`*(self: AudioStreamWav; value) = self.setLoopEnd(value)

template mixRate*(self: AudioStreamWav): untyped = self.getMixRate()
template `mixRate=`*(self: AudioStreamWav; value) = self.setMixRate(value)

template stereo*(self: AudioStreamWav): untyped = self.isStereo()
template `stereo=`*(self: AudioStreamWav; value) = self.setStereo(value)

const AudioStreamWav_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamWav]): Table[string, string] = AudioStreamWav_vmap