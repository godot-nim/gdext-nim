{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setData*(self: AudioStreamWAV; data: PackedByteArray): void =
  expandMethodBind(className AudioStreamWAV, "set_data", 2971499966)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getData*(self: AudioStreamWAV): PackedByteArray =
  expandMethodBind(className AudioStreamWAV, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setFormat*(self: AudioStreamWAV; format: AudioStreamWAV_Format): void =
  expandMethodBind(className AudioStreamWAV, "set_format", 60648488)
  var `?param` = [getPtr format]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFormat*(self: AudioStreamWAV): AudioStreamWAV_Format =
  expandMethodBind(className AudioStreamWAV, "get_format", 3151724922)
  var ret: encoded AudioStreamWAV_Format
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamWAV_Format)

proc setLoopMode*(self: AudioStreamWAV; loopMode: AudioStreamWAV_LoopMode): void =
  expandMethodBind(className AudioStreamWAV, "set_loop_mode", 2444882972)
  var `?param` = [getPtr loopMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopMode*(self: AudioStreamWAV): AudioStreamWAV_LoopMode =
  expandMethodBind(className AudioStreamWAV, "get_loop_mode", 393560655)
  var ret: encoded AudioStreamWAV_LoopMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamWAV_LoopMode)

proc setLoopBegin*(self: AudioStreamWAV; loopBegin: int32): void =
  expandMethodBind(className AudioStreamWAV, "set_loop_begin", 1286410249)
  var `?param` = [getPtr loopBegin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopBegin*(self: AudioStreamWAV): int32 =
  expandMethodBind(className AudioStreamWAV, "get_loop_begin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setLoopEnd*(self: AudioStreamWAV; loopEnd: int32): void =
  expandMethodBind(className AudioStreamWAV, "set_loop_end", 1286410249)
  var `?param` = [getPtr loopEnd]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopEnd*(self: AudioStreamWAV): int32 =
  expandMethodBind(className AudioStreamWAV, "get_loop_end", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMixRate*(self: AudioStreamWAV; mixRate: int32): void =
  expandMethodBind(className AudioStreamWAV, "set_mix_rate", 1286410249)
  var `?param` = [getPtr mixRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMixRate*(self: AudioStreamWAV): int32 =
  expandMethodBind(className AudioStreamWAV, "get_mix_rate", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setStereo*(self: AudioStreamWAV; stereo: bool): void =
  expandMethodBind(className AudioStreamWAV, "set_stereo", 2586408642)
  var `?param` = [getPtr stereo]
  methodbind.ptrcall(self, addr `?param`[0])

proc isStereo*(self: AudioStreamWAV): bool =
  expandMethodBind(className AudioStreamWAV, "is_stereo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc saveToWav*(self: AudioStreamWAV; path: String): Error =
  expandMethodBind(className AudioStreamWAV, "save_to_wav", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

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

const AudioStreamWAV_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamWAV]): Table[string, string] = AudioStreamWAV_vmap